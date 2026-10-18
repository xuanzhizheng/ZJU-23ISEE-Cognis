import numpy as np
import matplotlib

matplotlib.use("Agg")
import matplotlib.pyplot as plt
from pathlib import Path

from BP import Backprop
from BackPropMmt import BackPropMmt
from Sigmoid import Sigmoid


X = np.array(
    [
        [0, 0, 1],
        [0, 1, 1],
        [1, 0, 1],
        [1, 1, 1],
    ],
    dtype=float,
)
D = np.array([0, 1, 1, 0], dtype=float)


def predict(W1, W2, X):
    hidden = Sigmoid(X @ W1.T)
    return Sigmoid(hidden @ W2.T).reshape(-1)


def mse(y, d):
    return float(np.mean((d - y) ** 2))


def accuracy(y, d):
    return float(np.mean((y >= 0.5).astype(int) == d.astype(int)))


def initial_weights(seed=7):
    np.random.seed(seed)
    W1 = np.random.uniform(-1.0, 1.0, (4, 3))
    W2 = np.random.uniform(-1.0, 1.0, (1, 4))
    return W1, W2


def train_plain(seed=7, epochs=12000, alpha=1.0):
    W1, W2 = initial_weights(seed)
    history = []
    for _ in range(epochs):
        W1, W2 = Backprop(W1, W2, X, D, alpha=alpha)
        history.append(mse(predict(W1, W2, X), D))
    return W1, W2, np.array(history)


def train_momentum(seed=7, epochs=12000, alpha=1.0, beta=0.9):
    W1, W2 = initial_weights(seed)
    mmt1 = np.zeros_like(W1)
    mmt2 = np.zeros_like(W2)
    history = []
    for _ in range(epochs):
        W1, W2, mmt1, mmt2 = BackPropMmt(W1, W2, X, D, mmt1, mmt2, alpha=alpha, beta=beta)
        history.append(mse(predict(W1, W2, X), D))
    return W1, W2, np.array(history)


def save_figures(fig_dir, histories, outputs):
    fig_dir.mkdir(parents=True, exist_ok=True)

    plt.figure(figsize=(9, 5))
    colors = ["#333333", "#4C78A8", "#59A14F", "#F28E2B", "#E15759"]
    for (label, history), color in zip(histories.items(), colors):
        plt.plot(history, label=label, linewidth=1.15, color=color)
    plt.yscale("log")
    plt.xlabel("Epoch")
    plt.ylabel("MSE (log scale)")
    plt.title("Experiment 5-3: Momentum Beta Comparison")
    plt.grid(True, alpha=0.3, which="both")
    plt.legend()
    plt.tight_layout()
    plt.savefig(fig_dir / "Figure_exp5_3_mse.png", dpi=160)
    plt.close()

    labels = ["(0,0)", "(0,1)", "(1,0)", "(1,1)"]
    xs = np.arange(len(labels))
    width = 0.14

    plt.figure(figsize=(10, 5))
    plt.bar(xs - 2 * width, D, width, label="target", color="gray", alpha=0.7)
    offsets = [-width, 0, width, 2 * width]
    colors = ["#4C78A8", "#59A14F", "#F28E2B", "#E15759"]
    for (label, y), offset, color in zip(outputs.items(), offsets, colors):
        plt.bar(xs + offset, y, width, label=label, color=color, alpha=0.85)
    plt.axhline(0.5, color="black", linestyle="--", linewidth=0.9, alpha=0.6)
    plt.xticks(xs, labels)
    plt.ylim(0, 1)
    plt.xlabel("Input (x1,x2)")
    plt.ylabel("Output")
    plt.title("Experiment 5-3: Final Outputs")
    plt.grid(True, alpha=0.25, axis="y")
    plt.legend(fontsize=8)
    plt.tight_layout()
    plt.savefig(fig_dir / "Figure_exp5_3_outputs.png", dpi=160)
    plt.close()


def main():
    seed = 7
    alpha = 1.0
    epochs = 12000
    betas = [0.5, 0.9, 0.99]
    fig_dir = Path(__file__).resolve().parents[2] / "Lab8实验报告" / "figures"

    results = {}
    W1_plain, W2_plain, hist_plain = train_plain(seed=seed, epochs=epochs, alpha=alpha)
    results["no momentum"] = (W1_plain, W2_plain, hist_plain)

    for beta in betas:
        W1, W2, history = train_momentum(seed=seed, epochs=epochs, alpha=alpha, beta=beta)
        results[f"beta={beta}"] = (W1, W2, history)

    histories = {label: value[2] for label, value in results.items()}
    outputs = {label: predict(value[0], value[1], X) for label, value in results.items()}
    save_figures(fig_dir, histories, outputs)

    print("Experiment 5-3: BP with momentum on XOR")
    print(f"seed={seed}, alpha={alpha}, epochs={epochs}")
    print()
    print(f"{'method':>14} | {'final MSE':>12} | {'accuracy':>8} | outputs")
    print("-" * 78)
    for label, (W1, W2, history) in results.items():
        y = predict(W1, W2, X)
        out = " ".join(f"{value:.6f}" for value in y)
        print(f"{label:>14} | {history[-1]:>12.8f} | {accuracy(y, D) * 100:>7.1f}% | {out}")

    best_label = min(results, key=lambda label: results[label][2][-1])
    best_W1, best_W2, _ = results[best_label]
    print()
    print(f"best method: {best_label}")
    print(f"final W1=\n{best_W1}")
    print(f"final W2=\n{best_W2}")

    W1_slow, W2_slow, hist_slow = train_momentum(seed=seed, epochs=epochs, alpha=0.01, beta=0.99)
    y_slow = predict(W1_slow, W2_slow, X)
    out_slow = " ".join(f"{value:.6f}" for value in y_slow)
    print()
    print("alpha sensitivity check")
    print(f"beta=0.99, alpha=0.01 | final MSE={hist_slow[-1]:.8f} | accuracy={accuracy(y_slow, D) * 100:.1f}% | {out_slow}")
    print(f"figures saved to {fig_dir}")


if __name__ == "__main__":
    main()
