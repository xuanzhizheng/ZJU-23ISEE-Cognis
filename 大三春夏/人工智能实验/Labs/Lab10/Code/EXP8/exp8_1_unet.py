import argparse
import json
from pathlib import Path

import matplotlib

matplotlib.use("Agg")
import matplotlib.pyplot as plt
import numpy as np

from data_utils import make_denoising_split, relative_errors


def require_tensorflow():
    try:
        import tensorflow as tf
    except ModuleNotFoundError as exc:
        raise SystemExit(
            "TensorFlow is not installed. "
            "Install tensorflow or tensorflow-cpu to run this script."
        ) from exc
    return tf


def conv_block(x, filters, keras, name):
    x = keras.layers.Conv2D(
        filters,
        3,
        padding="same",
        activation="relu",
        kernel_initializer="he_normal",
        name=f"{name}_conv1",
    )(x)
    x = keras.layers.Conv2D(
        filters,
        3,
        padding="same",
        activation="relu",
        kernel_initializer="he_normal",
        name=f"{name}_conv2",
    )(x)
    return x


def build_unet(
    input_shape=(28, 28, 1),
    output_skip=True,
    learning_rate=1e-3,
    output_initializer="he_normal",
    output_activation="linear",
):
    tf = require_tensorflow()
    keras = tf.keras

    inputs = keras.Input(shape=input_shape, name="noisy_input")
    conv1 = conv_block(inputs, 16, keras, "enc1")
    pool1 = keras.layers.MaxPooling2D((2, 2), name="pool1")(conv1)
    conv2 = conv_block(pool1, 32, keras, "enc2")
    pool2 = keras.layers.MaxPooling2D((2, 2), name="pool2")(conv2)

    bridge = conv_block(pool2, 64, keras, "bridge")

    up1 = keras.layers.Conv2DTranspose(
        32,
        2,
        strides=(2, 2),
        padding="same",
        activation="relu",
        kernel_initializer="he_normal",
        name="up1",
    )(bridge)
    merge1 = keras.layers.Concatenate(axis=-1, name="skip_merge1")([conv2, up1])
    conv3 = conv_block(merge1, 32, keras, "dec1")

    up2 = keras.layers.Conv2DTranspose(
        16,
        2,
        strides=(2, 2),
        padding="same",
        activation="relu",
        kernel_initializer="he_normal",
        name="up2",
    )(conv3)
    merge2 = keras.layers.Concatenate(axis=-1, name="skip_merge2")([conv1, up2])
    conv4 = conv_block(merge2, 16, keras, "dec2")

    if output_skip:
        reconstruction = keras.layers.Conv2D(
            1,
            1,
            padding="same",
            activation=output_activation,
            kernel_initializer=output_initializer,
            name="residual_reconstruction",
        )(conv4)
        outputs = keras.layers.Add(name="output_skip")([reconstruction, inputs])
    else:
        outputs = keras.layers.Conv2D(
            1,
            1,
            padding="same",
            activation=output_activation,
            kernel_initializer=output_initializer,
            name="direct_output",
        )(conv4)

    model_name = "unet_with_output_skip" if output_skip else "unet_no_output_skip"
    model = keras.Model(inputs, outputs, name=model_name)
    model.compile(
        optimizer=keras.optimizers.Adam(learning_rate=learning_rate),
        loss="mean_squared_error",
    )
    return model


def plot_history(histories, output_path):
    plt.figure(figsize=(7.2, 4.4))
    for label, history in histories.items():
        plt.plot(history["loss"], marker="o", label=f"{label} train")
        plt.plot(history["val_loss"], marker="s", linestyle="--", label=f"{label} val")
    plt.xlabel("Epoch")
    plt.ylabel("Mean squared error")
    plt.title("Experiment 8-1: U-Net Loss")
    plt.grid(alpha=0.3)
    plt.legend()
    plt.tight_layout()
    plt.savefig(output_path, dpi=160)
    plt.close()


def plot_reconstructions(x_noisy, x_clean, predictions, output_path, count=8):
    model_count = len(predictions)
    rows = 2 + model_count
    fig, axes = plt.subplots(rows, count, figsize=(1.32 * count, 1.35 * rows))
    titles = ["Noisy", "Clean"] + list(predictions.keys())
    row_data = [x_noisy, x_clean] + [np.clip(value, 0.0, 1.0) for value in predictions.values()]

    for row, (title, images) in enumerate(zip(titles, row_data)):
        for col in range(count):
            ax = axes[row, col]
            ax.imshow(images[col, :, :, 0], cmap="gray", vmin=0, vmax=1)
            ax.set_xticks([])
            ax.set_yticks([])
            if col == 0:
                ax.set_ylabel(title, fontsize=9)
    plt.suptitle("Experiment 8-1: U-Net Reconstruction Comparison")
    plt.tight_layout()
    plt.savefig(output_path, dpi=160)
    plt.close()


def plot_error_distribution(errors, output_path):
    plt.figure(figsize=(6.8, 4.2))
    labels = list(errors.keys())
    values = [errors[label] for label in labels]
    plt.boxplot(values, tick_labels=labels, showmeans=True)
    plt.ylabel("Relative error")
    plt.title("Experiment 8-1: Relative Error Distribution")
    plt.grid(axis="y", alpha=0.3)
    plt.tight_layout()
    plt.savefig(output_path, dpi=160)
    plt.close()


def train_and_evaluate(args):
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

    experiments = {
        "with_skip": True,
        "no_skip": False,
    }
    histories = {}
    predictions = {}
    errors = {}
    summary = {}

    for label, output_skip in experiments.items():
        model = build_unet(
            x_train.shape[1:],
            output_skip=output_skip,
            learning_rate=args.learning_rate,
            output_initializer=args.output_initializer,
            output_activation=args.output_activation,
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
        histories[label] = history.history
        predictions[label] = pred
        errors[label] = err
        summary[label] = {
            "final_loss": float(history.history["loss"][-1]),
            "final_val_loss": float(history.history["val_loss"][-1]),
            "mean_relative_error": float(np.mean(err)),
            "median_relative_error": float(np.median(err)),
        }

    plot_history(histories, fig_dir / "Figure_exp8_1_loss.png")
    plot_reconstructions(
        x_test_noisy,
        x_test,
        predictions,
        fig_dir / "Figure_exp8_1_reconstruction.png",
        count=min(8, args.eval_count),
    )
    plot_error_distribution(errors, fig_dir / "Figure_exp8_1_error.png")

    summary_path = fig_dir / "exp8_1_summary.json"
    summary_path.write_text(json.dumps(summary, indent=2), encoding="utf-8")

    print("Experiment 8-1 summary")
    print(json.dumps(summary, indent=2))
    print(f"figures and summary saved to {fig_dir}")
    return summary


def parse_args():
    parser = argparse.ArgumentParser(description="Experiment 8-1: Keras U-Net reconstruction.")
    parser.add_argument("--epochs", type=int, default=20)
    parser.add_argument("--batch-size", type=int, default=64)
    parser.add_argument("--train-count", type=int, default=9000)
    parser.add_argument("--test-count", type=int, default=1000)
    parser.add_argument("--eval-count", type=int, default=200)
    parser.add_argument("--noise-factor", type=float, default=0.5)
    parser.add_argument("--learning-rate", type=float, default=1e-3)
    parser.add_argument("--output-initializer", default="he_normal")
    parser.add_argument("--output-activation", default="linear")
    parser.add_argument("--seed", type=int, default=7)
    parser.add_argument(
        "--figure-dir",
        default=str(Path(__file__).resolve().parents[2] / "Lab10实验报告" / "figures"),
    )
    return parser.parse_args()


if __name__ == "__main__":
    train_and_evaluate(parse_args())
