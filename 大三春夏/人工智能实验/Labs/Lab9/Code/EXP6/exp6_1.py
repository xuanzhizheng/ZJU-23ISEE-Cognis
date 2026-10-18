import numpy as np
import matplotlib

matplotlib.use("Agg")
import matplotlib.pyplot as plt
from pathlib import Path

from DeepReLU import DeepReLU
from DeepSigmoid import DeepSigmoid
from ReLU import ReLU
from Sigmoid import Sigmoid
from Softmax import Softmax


def make_dataset():
    X = np.zeros((5, 5, 5), dtype=float)

    X[:, :, 0] = [
        [0, 1, 1, 0, 0],
        [0, 0, 1, 0, 0],
        [0, 0, 1, 0, 0],
        [0, 0, 1, 0, 0],
        [0, 1, 1, 1, 0],
    ]
    X[:, :, 1] = [
        [1, 1, 1, 1, 0],
        [0, 0, 0, 0, 1],
        [0, 1, 1, 1, 0],
        [1, 0, 0, 0, 0],
        [1, 1, 1, 1, 1],
    ]
    X[:, :, 2] = [
        [1, 1, 1, 1, 0],
        [0, 0, 0, 0, 1],
        [0, 1, 1, 1, 0],
        [0, 0, 0, 0, 1],
        [1, 1, 1, 1, 0],
    ]
    X[:, :, 3] = [
        [0, 0, 0, 1, 0],
        [0, 0, 1, 1, 0],
        [0, 1, 0, 1, 0],
        [1, 1, 1, 1, 1],
        [0, 0, 0, 1, 0],
    ]
    X[:, :, 4] = [
        [1, 1, 1, 1, 1],
        [1, 0, 0, 0, 0],
        [1, 1, 1, 1, 0],
        [0, 0, 0, 0, 1],
        [1, 1, 1, 1, 0],
    ]

    D = np.eye(5, dtype=float)
    return X, D


def predict(W1, W2, W3, W4, X):
    outputs = []
    for k in range(X.shape[2]):
        x = np.reshape(X[:, :, k], (25, 1))
        y1 = ReLU(W1 @ x)
        y2 = ReLU(W2 @ y1)
        y3 = ReLU(W3 @ y2)
        y = Softmax(W4 @ y3)
        outputs.append(y.reshape(-1))
    return np.array(outputs)


def predict_sigmoid(W1, W2, W3, W4, X):
    outputs = []
    for k in range(X.shape[2]):
        x = np.reshape(X[:, :, k], (25, 1))
        y1 = Sigmoid(W1 @ x)
        y2 = Sigmoid(W2 @ y1)
        y3 = Sigmoid(W3 @ y2)
        y = Softmax(W4 @ y3)
        outputs.append(y.reshape(-1))
    return np.array(outputs)


def mse(y, d):
    return float(np.mean((d - y) ** 2))


def accuracy(y, d):
    return float(np.mean(np.argmax(y, axis=1) == np.argmax(d, axis=1)))


def initialize_weights(seed=7):
    np.random.seed(seed)
    W1 = np.random.uniform(-1.0, 1.0, (20, 25))
    W2 = np.random.uniform(-1.0, 1.0, (20, 20))
    W3 = np.random.uniform(-1.0, 1.0, (20, 20))
    W4 = np.random.uniform(-1.0, 1.0, (5, 20))
    return W1, W2, W3, W4


def train(seed=7, epochs=3000, alpha=0.01):
    X, D = make_dataset()
    W1, W2, W3, W4 = initialize_weights(seed)

    history = []
    for _ in range(epochs):
        W1, W2, W3, W4 = DeepReLU(W1, W2, W3, W4, X, D, alpha=alpha)
        y = predict(W1, W2, W3, W4, X)
        history.append(mse(y, D))

    return X, D, W1, W2, W3, W4, np.array(history)


def train_sigmoid(seed=7, epochs=3000, alpha=0.01):
    X, D = make_dataset()
    W1, W2, W3, W4 = initialize_weights(seed)

    history = []
    for _ in range(epochs):
        W1, W2, W3, W4 = DeepSigmoid(W1, W2, W3, W4, X, D, alpha=alpha)
        y = predict_sigmoid(W1, W2, W3, W4, X)
        history.append(mse(y, D))

    return X, D, W1, W2, W3, W4, np.array(history)


def save_figures(fig_dir, X, D, Y, history, sigmoid_history=None):
    fig_dir.mkdir(parents=True, exist_ok=True)

    fig, ax = plt.subplots(figsize=(8, 4.8))
    ax.plot(history, color="steelblue", linewidth=1.2)
    ax.set_yscale("log")
    ax.set_xlabel("Epoch")
    ax.set_ylabel("MSE (log scale)")
    ax.set_title("Experiment 6-1: Deep ReLU Network Training Error")
    ax.grid(True, alpha=0.3, which="both")

    zoom_end = min(500, len(history) - 1)
    axins = ax.inset_axes([0.52, 0.50, 0.43, 0.42])
    axins.plot(np.arange(zoom_end + 1), history[: zoom_end + 1], color="steelblue", linewidth=1.0)
    axins.set_yscale("log")
    axins.set_xlim(0, zoom_end)
    axins.set_title("0-500 epochs", fontsize=8)
    axins.tick_params(labelsize=7)
    axins.grid(True, alpha=0.25, which="both")

    plt.tight_layout()
    plt.savefig(fig_dir / "Figure_exp6_1_mse.png", dpi=160)
    plt.close()

    if sigmoid_history is not None:
        plt.figure(figsize=(8, 4.8))
        plt.plot(history, label="ReLU", color="steelblue", linewidth=1.2)
        plt.plot(sigmoid_history, label="Sigmoid", color="darkorange", linewidth=1.2)
        plt.yscale("log")
        plt.xlabel("Epoch")
        plt.ylabel("MSE (log scale)")
        plt.title("Experiment 6-1: ReLU vs Sigmoid Hidden Activations")
        plt.grid(True, alpha=0.3, which="both")
        plt.legend()
        plt.tight_layout()
        plt.savefig(fig_dir / "Figure_exp6_1_relu_sigmoid_compare.png", dpi=160)
        plt.close()

    plt.figure(figsize=(7.2, 5.6))
    plt.imshow(Y, cmap="Blues", vmin=0, vmax=1)
    plt.colorbar(label="Softmax probability")
    plt.xticks(np.arange(5), ["1", "2", "3", "4", "5"])
    plt.yticks(np.arange(5), ["sample 1", "sample 2", "sample 3", "sample 4", "sample 5"])
    for i in range(5):
        for j in range(5):
            color = "white" if Y[i, j] > 0.55 else "black"
            plt.text(j, i, f"{Y[i, j]:.2f}", ha="center", va="center", color=color, fontsize=9)
    plt.xlabel("Predicted class")
    plt.ylabel("Training sample")
    plt.title("Experiment 6-1: Final Softmax Outputs")
    plt.tight_layout()
    plt.savefig(fig_dir / "Figure_exp6_1_softmax.png", dpi=160)
    plt.close()

    fig, axes = plt.subplots(1, 5, figsize=(10, 2.4))
    for k, ax in enumerate(axes):
        ax.imshow(X[:, :, k], cmap="gray_r", vmin=0, vmax=1)
        ax.set_title(f"class {k + 1}")
        ax.set_xticks([])
        ax.set_yticks([])
    plt.tight_layout()
    plt.savefig(fig_dir / "Figure_exp6_1_digits.png", dpi=160)
    plt.close()


def main():
    seed = 7
    epochs = 3000
    alpha = 0.01
    fig_dir = Path(__file__).resolve().parents[2] / "Lab8实验报告" / "figures"

    X, D, W1, W2, W3, W4, history = train(seed=seed, epochs=epochs, alpha=alpha)
    Y = predict(W1, W2, W3, W4, X)
    _, _, Ws1, Ws2, Ws3, Ws4, sigmoid_history = train_sigmoid(seed=seed, epochs=epochs, alpha=alpha)
    Y_sigmoid = predict_sigmoid(Ws1, Ws2, Ws3, Ws4, X)
    save_figures(fig_dir, X, D, Y, history, sigmoid_history=sigmoid_history)

    print("Experiment 6-1: Deep ReLU + Softmax network")
    print(f"seed={seed}, alpha={alpha}, epochs={epochs}")
    print(f"W1={W1.shape}, W2={W2.shape}, W3={W3.shape}, W4={W4.shape}")
    print(f"final MSE={history[-1]:.10f}, accuracy={accuracy(Y, D) * 100:.1f}%")
    print()
    for k, y in enumerate(Y):
        probs = " ".join(f"{value:.6f}" for value in y)
        print(f"sample {k + 1}: target={k + 1}, pred={np.argmax(y) + 1}, probs=[{probs}]")
    print()
    print("Sigmoid hidden-layer comparison")
    print(f"final MSE={sigmoid_history[-1]:.10f}, accuracy={accuracy(Y_sigmoid, D) * 100:.1f}%")
    print()
    print(f"figures saved to {fig_dir}")


if __name__ == "__main__":
    main()
