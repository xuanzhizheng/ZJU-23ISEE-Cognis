import numpy as np
import matplotlib

matplotlib.use("Agg")
import matplotlib.pyplot as plt
from pathlib import Path

from DeepDropout import DeepDropout
from DeepSigmoid import DeepSigmoid
from exp6_1 import accuracy, initialize_weights, make_dataset, mse, predict_sigmoid


def train_sigmoid(dropout=False, seed=7, epochs=5000, alpha=0.02, ratio=0.1):
    X, D = make_dataset()
    W1, W2, W3, W4 = initialize_weights(seed)

    np.random.seed(seed + 100)
    history = []
    for _ in range(epochs):
        if dropout:
            W1, W2, W3, W4 = DeepDropout(W1, W2, W3, W4, X, D, alpha=alpha, ratio=ratio)
        else:
            W1, W2, W3, W4 = DeepSigmoid(W1, W2, W3, W4, X, D, alpha=alpha)

        y = predict_sigmoid(W1, W2, W3, W4, X)
        history.append(mse(y, D))

    return X, D, W1, W2, W3, W4, np.array(history), y


def save_figures(fig_dir, results):
    fig_dir.mkdir(parents=True, exist_ok=True)

    plt.figure(figsize=(8, 4.8))
    for result in results:
        plt.plot(
            result["history"],
            label=result["name"],
            color=result["color"],
            linewidth=1.2,
            alpha=0.95,
        )
    plt.yscale("log")
    plt.xlabel("Epoch")
    plt.ylabel("MSE (log scale)")
    plt.title("Experiment 6-2: Dropout Rate Comparison")
    plt.grid(True, alpha=0.3, which="both")
    plt.legend()
    plt.tight_layout()
    plt.savefig(fig_dir / "Figure_exp6_2_mse_compare.png", dpi=160)
    plt.close()

    fig, axes = plt.subplots(2, 2, figsize=(10, 8.0), sharex=True, sharey=True)
    for ax, result in zip(axes.ravel(), results):
        y = result["y"]
        im = ax.imshow(y, cmap="Blues", vmin=0, vmax=1)
        ax.set_title(result["name"])
        ax.set_xticks(np.arange(5), ["1", "2", "3", "4", "5"])
        ax.set_yticks(np.arange(5), ["sample 1", "sample 2", "sample 3", "sample 4", "sample 5"])
        ax.set_xlabel("Predicted class")
        for i in range(5):
            for j in range(5):
                color = "white" if y[i, j] > 0.55 else "black"
                ax.text(j, i, f"{y[i, j]:.3f}", ha="center", va="center", color=color, fontsize=8)
    axes[0, 0].set_ylabel("Training sample")
    axes[1, 0].set_ylabel("Training sample")
    fig.colorbar(im, ax=axes, fraction=0.045, pad=0.04, label="Softmax probability")
    plt.savefig(fig_dir / "Figure_exp6_2_softmax_compare.png", dpi=160, bbox_inches="tight")
    plt.close()


def print_outputs(name, history, y, d):
    print(name)
    print(f"final MSE={history[-1]:.10f}, accuracy={accuracy(y, d) * 100:.1f}%")
    for k, row in enumerate(y):
        probs = " ".join(f"{value:.6f}" for value in row)
        print(f"sample {k + 1}: target={k + 1}, pred={np.argmax(row) + 1}, probs=[{probs}]")
    print()


def main():
    seed = 7
    epochs = 5000
    alpha = 0.02
    ratios = [0.1, 0.2, 0.5]
    fig_dir = Path(__file__).resolve().parents[2] / "Lab9实验报告" / "figures"

    X, D, W1, W2, W3, W4, no_dropout_history, no_dropout_y = train_sigmoid(
        dropout=False, seed=seed, epochs=epochs, alpha=alpha
    )

    results = [
        {
            "name": "No dropout",
            "history": no_dropout_history,
            "y": no_dropout_y,
            "color": "darkorange",
        }
    ]

    dropout_weights = None
    colors = ["steelblue", "seagreen", "crimson"]
    for ratio, color in zip(ratios, colors):
        _, _, Wd1, Wd2, Wd3, Wd4, dropout_history, dropout_y = train_sigmoid(
            dropout=True, seed=seed, epochs=epochs, alpha=alpha, ratio=ratio
        )
        if ratio == 0.1:
            dropout_weights = (Wd1, Wd2, Wd3, Wd4)
        results.append(
            {
                "name": f"Dropout p={ratio}",
                "history": dropout_history,
                "y": dropout_y,
                "color": color,
            }
        )

    save_figures(fig_dir, results)

    if dropout_weights is not None:
        W1, W2, W3, W4 = dropout_weights

    print("Experiment 6-2: Sigmoid + Softmax network with dropout")
    print(f"seed={seed}, alpha={alpha}, epochs={epochs}, dropout ratios={ratios}")
    print(f"W1={W1.shape}, W2={W2.shape}, W3={W3.shape}, W4={W4.shape}")
    print()
    for result in results:
        print_outputs(result["name"], result["history"], result["y"], D)
    print(f"figures saved to {fig_dir}")


if __name__ == "__main__":
    main()
