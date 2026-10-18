import numpy as np
import matplotlib

matplotlib.use("Agg")
import matplotlib.pyplot as plt
from pathlib import Path

from BP import Backprop
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


def single_sgd_epoch(W, X, D, alpha=1.0):
    order = np.random.permutation(X.shape[0])
    for k in order:
        x = X[k]
        d = D[k]
        y = Sigmoid((W @ x)[0])
        e = d - y
        delta = y * (1.0 - y) * e
        W = W + alpha * delta * x.reshape(1, -1)
    return W


def predict_bp(W1, W2, X):
    hidden = Sigmoid(X @ W1.T)
    return Sigmoid(hidden @ W2.T).reshape(-1)


def predict_single(W, X):
    return Sigmoid(X @ W.T).reshape(-1)


def mse(y, d):
    return float(np.mean((d - y) ** 2))


def accuracy(y, d):
    return float(np.mean((y >= 0.5).astype(int) == d.astype(int)))


def train_bp(seed=7, epochs=50000, alpha=1.0):
    np.random.seed(seed)
    W1 = np.random.uniform(-1.0, 1.0, (4, 3))
    W2 = np.random.uniform(-1.0, 1.0, (1, 4))
    history = []

    for _ in range(epochs):
        W1, W2 = Backprop(W1, W2, X, D, alpha=alpha)
        history.append(mse(predict_bp(W1, W2, X), D))

    return W1, W2, np.array(history)


def train_single(seed=7, epochs=50000, alpha=1.0):
    np.random.seed(seed)
    W = np.random.uniform(-1.0, 1.0, (1, 3))
    history = []

    for _ in range(epochs):
        W = single_sgd_epoch(W, X, D, alpha=alpha)
        history.append(mse(predict_single(W, X), D))

    return W, np.array(history)


def save_figures(fig_dir, W1, W2, W, mse_bp, mse_single):
    fig_dir.mkdir(parents=True, exist_ok=True)

    plt.figure(figsize=(9, 5))
    plt.plot(mse_bp, label="3-4-1 BP network", color="steelblue", linewidth=1.2)
    plt.plot(mse_single, label="single-layer SGD", color="tomato", linewidth=1.2)
    plt.yscale("log")
    plt.xlabel("Epoch")
    plt.ylabel("MSE (log scale)")
    plt.title("Experiment 5-2: MSE Comparison on XOR")
    plt.annotate(
        "single-layer MSE near 0.25\noutputs stay around threshold",
        xy=(len(mse_single) * 0.78, mse_single[-1]),
        xytext=(len(mse_single) * 0.40, 0.08),
        arrowprops=dict(arrowstyle="->", color="tomato", linewidth=0.9),
        bbox=dict(boxstyle="round,pad=0.25", facecolor="white", edgecolor="tomato", alpha=0.85),
        color="tomato",
        fontsize=8,
    )
    plt.grid(True, alpha=0.3, which="both")
    plt.legend()
    plt.tight_layout()
    plt.savefig(fig_dir / "Figure_exp5_2_mse.png", dpi=160)
    plt.close()

    y_bp = predict_bp(W1, W2, X)
    y_single = predict_single(W, X)
    xs = np.arange(X.shape[0])
    labels = ["(0,0)", "(0,1)", "(1,0)", "(1,1)"]

    plt.figure(figsize=(8, 4.8))
    width = 0.25
    plt.bar(xs - width, D, width, label="target", color="gray", alpha=0.75)
    plt.bar(xs, y_bp, width, label="3-4-1 BP", color="steelblue", alpha=0.85)
    plt.bar(xs + width, y_single, width, label="single-layer", color="tomato", alpha=0.85)
    plt.axhline(0.5, color="black", linestyle="--", linewidth=0.9, alpha=0.6)
    plt.xticks(xs, labels)
    plt.ylim(0, 1)
    plt.xlabel("Input (x1,x2)")
    plt.ylabel("Output")
    plt.title("Experiment 5-2: Final Outputs")
    plt.grid(True, alpha=0.25, axis="y")
    plt.legend()
    plt.tight_layout()
    plt.savefig(fig_dir / "Figure_exp5_2_outputs.png", dpi=160)
    plt.close()

    grid_x, grid_y = np.meshgrid(np.linspace(-0.2, 1.2, 180), np.linspace(-0.2, 1.2, 180))
    grid = np.c_[grid_x.ravel(), grid_y.ravel(), np.ones(grid_x.size)]
    z_bp = predict_bp(W1, W2, grid).reshape(grid_x.shape)
    z_single = predict_single(W, grid).reshape(grid_x.shape)

    fig, axes = plt.subplots(1, 2, figsize=(11, 4.8), sharex=True, sharey=True)
    for ax, z, title in [
        (axes[0], z_bp, "3-4-1 BP network"),
        (axes[1], z_single, "single-layer SGD"),
    ]:
        cf = ax.contourf(grid_x, grid_y, z, levels=np.linspace(0, 1, 21), cmap="RdBu_r", alpha=0.8)
        ax.contour(grid_x, grid_y, z, levels=[0.5], colors="black", linewidths=1.4)
        ax.scatter(X[:, 0], X[:, 1], c=D, cmap="RdBu_r", edgecolors="black", s=80, vmin=0, vmax=1)
        ax.set_title(title)
        ax.set_xlabel("x1")
        ax.set_ylabel("x2")
        ax.set_aspect("equal", adjustable="box")
        ax.grid(True, alpha=0.25)
    fig.colorbar(cf, ax=axes.ravel().tolist(), shrink=0.85, label="network output")
    plt.savefig(fig_dir / "Figure_exp5_2_boundary.png", dpi=160, bbox_inches="tight")
    plt.close()


def main():
    epochs = 50000
    alpha = 1.0
    seed = 7
    fig_dir = Path(__file__).resolve().parents[2] / "Lab8实验报告" / "figures"

    W1, W2, mse_bp = train_bp(seed=seed, epochs=epochs, alpha=alpha)
    W, mse_single = train_single(seed=seed, epochs=epochs, alpha=alpha)
    y_bp = predict_bp(W1, W2, X)
    y_single = predict_single(W, X)

    save_figures(fig_dir, W1, W2, W, mse_bp, mse_single)

    print("Experiment 5-2: XOR with sigmoid SGD")
    print(f"seed={seed}, alpha={alpha}, epochs={epochs}")
    print()
    print("3-4-1 BP network")
    print(f"final W1=\n{W1}")
    print(f"final W2=\n{W2}")
    for x, d, y in zip(X, D, y_bp):
        print(f"  x=({int(x[0])},{int(x[1])},1), d={int(d)}, y={y:.6f}, pred={int(y >= 0.5)}")
    print(f"  final MSE={mse_bp[-1]:.8f}, accuracy={accuracy(y_bp, D) * 100:.1f}%")
    print()
    print("Single-layer SGD network")
    print(f"final W={W}")
    for x, d, y in zip(X, D, y_single):
        print(f"  x=({int(x[0])},{int(x[1])},1), d={int(d)}, y={y:.6f}, pred={int(y >= 0.5)}")
    print(f"  final MSE={mse_single[-1]:.8f}, accuracy={accuracy(y_single, D) * 100:.1f}%")
    print()
    print(f"figures saved to {fig_dir}")


if __name__ == "__main__":
    main()
