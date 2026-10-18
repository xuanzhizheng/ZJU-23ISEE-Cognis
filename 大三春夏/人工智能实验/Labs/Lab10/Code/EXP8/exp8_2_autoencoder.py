import argparse
import json
from pathlib import Path

import matplotlib

matplotlib.use("Agg")
import matplotlib.pyplot as plt
import numpy as np

from data_utils import compression_ratio, make_denoising_split, relative_errors


def require_tensorflow():
    try:
        import tensorflow as tf
    except ModuleNotFoundError as exc:
        raise SystemExit(
            "TensorFlow is not installed. "
            "Install tensorflow or tensorflow-cpu to run this script."
        ) from exc
    return tf


def optimizer_from_name(keras, name, learning_rate):
    name = name.lower()
    if name == "adam":
        return keras.optimizers.Adam(learning_rate=learning_rate)
    if name == "rmsprop":
        return keras.optimizers.RMSprop(learning_rate=learning_rate)
    if name == "nadam":
        return keras.optimizers.Nadam(learning_rate=learning_rate)
    if name == "sgd":
        return keras.optimizers.SGD(learning_rate=learning_rate, momentum=0.9)
    raise ValueError(f"unsupported optimizer: {name}")


def conv_block(x, filters, keras, name):
    x = keras.layers.Conv2D(
        filters,
        3,
        padding="same",
        activation="relu",
        kernel_initializer="he_normal",
        name=f"{name}_conv1",
    )(x)
    return keras.layers.Conv2D(
        filters,
        3,
        padding="same",
        activation="relu",
        kernel_initializer="he_normal",
        name=f"{name}_conv2",
    )(x)


def build_autoencoder(
    input_shape=(28, 28, 1),
    depth=2,
    latent_channels=8,
    optimizer="adam",
    loss="mean_squared_error",
    learning_rate=1e-3,
):
    tf = require_tensorflow()
    keras = tf.keras

    inputs = keras.Input(shape=input_shape, name="noisy_input")
    x = conv_block(inputs, 16, keras, "enc1")
    x = keras.layers.MaxPooling2D((2, 2), padding="same", name="pool1")(x)
    x = conv_block(x, 32, keras, "enc2")
    x = keras.layers.MaxPooling2D((2, 2), padding="same", name="pool2")(x)

    if depth >= 3:
        x = conv_block(x, 32, keras, "enc3")
        x = keras.layers.MaxPooling2D((2, 2), padding="same", name="pool3")(x)
    if depth == 4:
        x = conv_block(x, 64, keras, "enc4")
        x = keras.layers.MaxPooling2D((2, 2), padding="same", name="pool4")(x)
    elif depth not in (2, 3):
        raise ValueError("depth must be 2, 3, or 4")

    compressed = keras.layers.Conv2D(
        latent_channels,
        3,
        padding="same",
        activation="relu",
        kernel_initializer="he_normal",
        name="compressed",
    )(x)

    x = compressed
    if depth == 4:
        x = keras.layers.Conv2DTranspose(
            64,
            2,
            strides=(2, 2),
            padding="same",
            activation="relu",
            name="up4",
        )(x)
        x = conv_block(x, 64, keras, "dec4")

    if depth >= 3:
        x = keras.layers.Conv2DTranspose(
            32,
            2,
            strides=(2, 2),
            padding="same",
            activation="relu",
            name="up3",
        )(x)
        x = conv_block(x, 32, keras, "dec3")

    x = keras.layers.Conv2DTranspose(
        32,
        2,
        strides=(2, 2),
        padding="same",
        activation="relu",
        name="up2",
    )(x)
    x = conv_block(x, 32, keras, "dec2")
    x = keras.layers.Conv2DTranspose(
        16,
        2,
        strides=(2, 2),
        padding="same",
        activation="relu",
        name="up1",
    )(x)
    x = conv_block(x, 16, keras, "dec1")

    if depth >= 3:
        x = keras.layers.Cropping2D(((2, 2), (2, 2)), name="crop_to_28")(x)

    outputs = keras.layers.Conv2D(
        1,
        3,
        padding="same",
        activation="linear",
        name="clean_output",
    )(x)
    model = keras.Model(inputs, outputs, name=f"conv_autoencoder_d{depth}_c{latent_channels}")
    model.compile(
        optimizer=optimizer_from_name(keras, optimizer, learning_rate),
        loss=loss,
    )
    compressed_shape = tuple(model.get_layer("compressed").output.shape[1:])
    return model, compressed_shape


def candidate_configs():
    return [
        {
            "name": "d2_c16_adam_mse",
            "depth": 2,
            "latent_channels": 16,
            "optimizer": "adam",
            "loss": "mean_squared_error",
        },
        {
            "name": "d2_c8_adam_mse",
            "depth": 2,
            "latent_channels": 8,
            "optimizer": "adam",
            "loss": "mean_squared_error",
        },
        {
            "name": "d2_c4_adam_mse",
            "depth": 2,
            "latent_channels": 4,
            "optimizer": "adam",
            "loss": "mean_squared_error",
        },
        {
            "name": "d3_c16_adam_mse",
            "depth": 3,
            "latent_channels": 16,
            "optimizer": "adam",
            "loss": "mean_squared_error",
        },
        {
            "name": "d3_c8_adam_mse",
            "depth": 3,
            "latent_channels": 8,
            "optimizer": "adam",
            "loss": "mean_squared_error",
        },
        {
            "name": "d3_c4_adam_mse",
            "depth": 3,
            "latent_channels": 4,
            "optimizer": "adam",
            "loss": "mean_squared_error",
        },
        {
            "name": "d3_c2_adam_mse",
            "depth": 3,
            "latent_channels": 2,
            "optimizer": "adam",
            "loss": "mean_squared_error",
        },
        {
            "name": "d3_c1_adam_mse",
            "depth": 3,
            "latent_channels": 1,
            "optimizer": "adam",
            "loss": "mean_squared_error",
        },
        {
            "name": "d4_c4_adam_mse",
            "depth": 4,
            "latent_channels": 4,
            "optimizer": "adam",
            "loss": "mean_squared_error",
        },
        {
            "name": "d4_c2_adam_mse",
            "depth": 4,
            "latent_channels": 2,
            "optimizer": "adam",
            "loss": "mean_squared_error",
        },
        {
            "name": "d3_c8_rmsprop_mse",
            "depth": 3,
            "latent_channels": 8,
            "optimizer": "rmsprop",
            "loss": "mean_squared_error",
        },
        {
            "name": "d3_c8_nadam_mae",
            "depth": 3,
            "latent_channels": 8,
            "optimizer": "nadam",
            "loss": "mean_absolute_error",
        },
    ]


def plot_search(results, output_path):
    labels = [item["name"] for item in results]
    ratios = [item["compression_ratio"] for item in results]
    errors = [item["mean_relative_error"] for item in results]
    colors = ["#4c78a8" if err < 0.5 else "#e45756" for err in errors]

    fig, ax1 = plt.subplots(figsize=(10.8, 5.0))
    x_pos = np.arange(len(labels))
    ax1.bar(x_pos, ratios, color=colors, alpha=0.82)
    ax1.set_ylabel("Compression ratio")
    ax1.set_xticks(x_pos)
    ax1.set_xticklabels(labels, rotation=40, ha="right", fontsize=7)
    ax1.grid(axis="y", alpha=0.25)

    ax2 = ax1.twinx()
    ax2.plot(x_pos, errors, color="black", marker="o", linewidth=1.8)
    ax2.axhline(0.5, color="#f58518", linestyle="--", linewidth=1.2)
    ax2.set_ylabel("Mean relative error")
    ax2.set_ylim(0.0, max(0.8, max(errors) * 1.15))

    plt.title("Experiment 8-2: Compression Ratio Search")
    fig.tight_layout()
    plt.savefig(output_path, dpi=160)
    plt.close()


def plot_reconstructions(x_noisy, x_clean, pred, output_path, count=8):
    rows = 3
    fig, axes = plt.subplots(rows, count, figsize=(1.32 * count, 4.3))
    row_data = [x_noisy, x_clean, np.clip(pred, 0.0, 1.0)]
    titles = ["Noisy", "Clean", "Denoised"]
    for row, (title, images) in enumerate(zip(titles, row_data)):
        for col in range(count):
            ax = axes[row, col]
            ax.imshow(images[col, :, :, 0], cmap="gray", vmin=0, vmax=1)
            ax.set_xticks([])
            ax.set_yticks([])
            if col == 0:
                ax.set_ylabel(title, fontsize=9)
    plt.suptitle("Experiment 8-2: Best Autoencoder Denoising Result")
    plt.tight_layout()
    plt.savefig(output_path, dpi=160)
    plt.close()


def plot_loss(best_history, output_path):
    plt.figure(figsize=(6.8, 4.2))
    plt.plot(best_history["loss"], marker="o", label="train")
    plt.plot(best_history["val_loss"], marker="s", linestyle="--", label="validation")
    plt.xlabel("Epoch")
    plt.ylabel("Loss")
    plt.title("Experiment 8-2: Best Autoencoder Loss")
    plt.grid(alpha=0.3)
    plt.legend()
    plt.tight_layout()
    plt.savefig(output_path, dpi=160)
    plt.close()


def train_and_search(args):
    tf = require_tensorflow()
    tf.keras.utils.set_random_seed(args.seed)

    fig_dir = Path(args.figure_dir)
    fig_dir.mkdir(parents=True, exist_ok=True)
    x_train_noisy, x_train, x_test_noisy, x_test = make_denoising_split(
        train_count=args.train_count,
        test_count=args.test_count,
        noise_factor=args.noise_factor,
        seed=args.seed,
    )

    results = []
    best_model = None
    best_history = None
    best_pred = None
    best_success = None

    for config in candidate_configs():
        model, compressed_shape = build_autoencoder(
            input_shape=x_train.shape[1:],
            depth=config["depth"],
            latent_channels=config["latent_channels"],
            optimizer=config["optimizer"],
            loss=config["loss"],
            learning_rate=args.learning_rate,
        )
        history = model.fit(
            x_train_noisy,
            x_train,
            epochs=args.epochs,
            batch_size=args.batch_size,
            shuffle=True,
            validation_data=(x_test_noisy, x_test),
            verbose=2,
        )
        pred = model.predict(
            x_test_noisy[: args.eval_count],
            batch_size=args.batch_size,
            verbose=0,
        )
        err = relative_errors(x_test[: args.eval_count], np.clip(pred, 0.0, 1.0))
        ratio = compression_ratio(x_train.shape[1:], compressed_shape)
        result = {
            **config,
            "compressed_shape": list(map(int, compressed_shape)),
            "compression_ratio": float(ratio),
            "final_loss": float(history.history["loss"][-1]),
            "final_val_loss": float(history.history["val_loss"][-1]),
            "mean_relative_error": float(np.mean(err)),
            "median_relative_error": float(np.median(err)),
        }
        results.append(result)

        if result["mean_relative_error"] < 0.5:
            if (
                best_success is None
                or result["compression_ratio"] > best_success["compression_ratio"]
            ):
                best_success = result
                best_model = model
                best_history = history.history
                best_pred = pred

    results = sorted(results, key=lambda item: item["compression_ratio"])
    plot_search(results, fig_dir / "Figure_exp8_2_search.png")

    if best_success is not None:
        plot_reconstructions(
            x_test_noisy,
            x_test,
            best_pred,
            fig_dir / "Figure_exp8_2_reconstruction.png",
            count=min(8, args.eval_count),
        )
        plot_loss(best_history, fig_dir / "Figure_exp8_2_loss.png")
        best_model.save(fig_dir / "exp8_2_best_autoencoder.keras")

    output = {
        "threshold": 0.5,
        "best_under_threshold": best_success,
        "all_results": results,
    }
    summary_path = fig_dir / "exp8_2_summary.json"
    summary_path.write_text(json.dumps(output, indent=2), encoding="utf-8")

    print("Experiment 8-2 compression search")
    print(json.dumps(output, indent=2))
    print(f"figures and summary saved to {fig_dir}")
    return output


def parse_args():
    parser = argparse.ArgumentParser(
        description="Experiment 8-2: Keras convolutional denoising autoencoder."
    )
    parser.add_argument("--epochs", type=int, default=20)
    parser.add_argument("--batch-size", type=int, default=64)
    parser.add_argument("--train-count", type=int, default=9000)
    parser.add_argument("--test-count", type=int, default=1000)
    parser.add_argument("--eval-count", type=int, default=200)
    parser.add_argument("--noise-factor", type=float, default=0.5)
    parser.add_argument("--learning-rate", type=float, default=1e-3)
    parser.add_argument("--seed", type=int, default=7)
    parser.add_argument(
        "--figure-dir",
        default=str(Path(__file__).resolve().parents[2] / "Lab10实验报告" / "figures"),
    )
    return parser.parse_args()


if __name__ == "__main__":
    train_and_search(parse_args())
