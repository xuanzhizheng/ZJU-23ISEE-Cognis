import gzip
import struct
from pathlib import Path

import numpy as np


def _open_idx(path):
    if path.suffix == ".gz":
        return gzip.open(path, "rb")
    return open(path, "rb")


def LoadMnistData(imagefile, labelfile):
    imagefile = Path(imagefile)
    labelfile = Path(labelfile)
    if not imagefile.exists():
        raise FileNotFoundError(f"MNIST image file not found: {imagefile}")
    if not labelfile.exists():
        raise FileNotFoundError(f"MNIST label file not found: {labelfile}")

    with _open_idx(imagefile) as images:
        header = images.read(16)
        magic, number_of_images, rows, cols = struct.unpack(">IIII", header)
        if magic != 2051:
            raise ValueError(f"invalid MNIST image file: {imagefile}")
        pixel_count = number_of_images * rows * cols
        data = np.frombuffer(images.read(pixel_count), dtype=np.uint8)
        x = data.reshape(number_of_images, rows, cols).astype(np.float32)

    with _open_idx(labelfile) as labels:
        magic, number_of_labels = struct.unpack(">II", labels.read(8))
        if magic != 2049:
            raise ValueError(f"invalid MNIST label file: {labelfile}")
        y = np.frombuffer(labels.read(number_of_labels), dtype=np.uint8)
        y = y.reshape(-1, 1)

    if number_of_images != number_of_labels:
        raise ValueError("number of labels did not match the number of images")

    return x, y
