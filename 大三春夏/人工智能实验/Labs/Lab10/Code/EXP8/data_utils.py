import gzip
import struct
from pathlib import Path

import numpy as np


def _open_idx(path):
    path = Path(path)
    if path.suffix == ".gz":
        return gzip.open(path, "rb")
    return open(path, "rb")


def _load_idx_images(path):
    with _open_idx(path) as handle:
        magic, count, rows, cols = struct.unpack(">IIII", handle.read(16))
        if magic != 2051:
            raise ValueError(f"invalid MNIST image file: {path}")
        data = np.frombuffer(handle.read(count * rows * cols), dtype=np.uint8)
    return data.reshape(count, rows, cols).astype("float32") / 255.0


def load_mnist_images(local_root=None, limit=None):
    """Load MNIST images from local IDX files, falling back to keras.datasets."""
    if local_root is None:
        local_root = Path(__file__).resolve().parents[1] / "EXP7" / "References" / "MNIST"
    local_root = Path(local_root)
    local_images = None

    candidates = [
        local_root / "t10k-images-idx3-ubyte.gz",
        local_root / "t10k-images.idx3-ubyte",
    ]
    for image_file in candidates:
        if image_file.exists():
            local_images = _load_idx_images(image_file)
            local_images = np.expand_dims(local_images, axis=-1)
            if limit is None or local_images.shape[0] >= limit:
                return local_images[:limit] if limit is not None else local_images

    try:
        from tensorflow.keras.datasets import mnist
    except ModuleNotFoundError as exc:
        if local_images is not None:
            return local_images[:limit] if limit is not None else local_images
        raise ModuleNotFoundError(
            "TensorFlow/Keras is required when local MNIST IDX files are not found."
        ) from exc

    (x_train, _), (x_test, _) = mnist.load_data()
    images = np.concatenate([x_train, x_test], axis=0).astype("float32") / 255.0
    images = np.expand_dims(images, axis=-1)
    return images[:limit] if limit is not None else images


def make_denoising_split(
    train_count=9000,
    test_count=1000,
    noise_factor=0.5,
    seed=7,
    local_root=None,
):
    total = train_count + test_count
    images = load_mnist_images(local_root=local_root, limit=total)
    if images.shape[0] < total:
        raise ValueError(f"need {total} images, got {images.shape[0]}")

    x_train = images[:train_count]
    x_test = images[train_count:total]
    rng = np.random.default_rng(seed)
    x_train_noisy = x_train + noise_factor * rng.normal(0.0, 1.0, x_train.shape)
    x_test_noisy = x_test + noise_factor * rng.normal(0.0, 1.0, x_test.shape)
    x_train_noisy = np.clip(x_train_noisy, 0.0, 1.0).astype("float32")
    x_test_noisy = np.clip(x_test_noisy, 0.0, 1.0).astype("float32")
    return x_train_noisy, x_train, x_test_noisy, x_test


def relative_errors(ground_truth, prediction):
    gt = ground_truth.reshape((ground_truth.shape[0], -1))
    pred = prediction.reshape((prediction.shape[0], -1))
    numerator = np.linalg.norm(gt - pred, axis=1)
    denominator = np.maximum(np.linalg.norm(gt, axis=1), 1e-12)
    return numerator / denominator


def compression_ratio(input_shape, compressed_shape):
    input_size = int(np.prod(input_shape))
    compressed_size = int(np.prod(compressed_shape))
    return input_size / compressed_size
