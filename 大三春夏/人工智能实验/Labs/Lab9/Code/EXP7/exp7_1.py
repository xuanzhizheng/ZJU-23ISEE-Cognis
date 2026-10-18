import numpy as np
import matplotlib

matplotlib.use("Agg")
import matplotlib.pyplot as plt
from pathlib import Path
from collections import Counter

from Conv import Conv
from LoadMnistData import LoadMnistData
from MnistConv import MnistConv, Predict, ReLU


def initialize_weights(seed=7):
    rng = np.random.default_rng(seed)
    W1 = rng.normal(0.0, np.sqrt(2.0 / (9 * 9)), (9, 9, 20))
    W5 = rng.normal(0.0, np.sqrt(2.0 / 2000), (100, 2000))
    Wo = rng.normal(0.0, np.sqrt(2.0 / 100), (10, 100))
    return W1, W5, Wo


def load_experiment_data():
    data_dir = Path(__file__).resolve().parent / "References" / "MNIST"
    images, labels = LoadMnistData(
        data_dir / "t10k-images-idx3-ubyte.gz",
        data_dir / "t10k-labels-idx1-ubyte.gz",
    )
    if images.shape[0] < 2300 or labels.shape[0] < 2300:
        raise ValueError("experiment 7-1 needs at least 2300 MNIST samples")

    images = np.divide(images, 255.0)
    X = images[0:2000, :, :]
    D = labels[0:2000]
    X_test = images[2000:2300, :, :]
    D_test = labels[2000:2300]
    return X, D, X_test, D_test


def confusion_matrix(true_labels, pred_labels):
    mat = np.zeros((10, 10), dtype=int)
    for true_label, pred_label in zip(true_labels.reshape(-1), pred_labels.reshape(-1)):
        mat[int(true_label), int(pred_label)] += 1
    return mat


def error_summary(true_labels, pred_labels):
    pairs = zip(true_labels.reshape(-1), pred_labels.reshape(-1))
    counts = Counter((int(true), int(pred)) for true, pred in pairs if int(true) != int(pred))
    return sorted(counts.items(), key=lambda item: (-item[1], item[0][0], item[0][1]))


def select_feature_sample(D_test, pred_test):
    true_labels = D_test.reshape(-1)
    for idx, (true, pred) in enumerate(zip(true_labels, pred_test)):
        if int(true) == 8 and int(pred) == 3:
            return idx
    wrong = np.where(pred_test != true_labels)[0]
    return int(wrong[0]) if wrong.size else 0


def save_figures(
    fig_dir,
    X_test,
    D_test,
    pred_test,
    probs_test,
    train_history,
    test_history,
    conf,
    W1,
):
    fig_dir.mkdir(parents=True, exist_ok=True)

    fig, axes = plt.subplots(3, 6, figsize=(9, 4.8))
    for ax, idx in zip(axes.ravel(), range(18)):
        ax.imshow(X_test[idx], cmap="gray_r", vmin=0, vmax=1)
        ax.set_title(f"T:{int(D_test[idx][0])} P:{int(pred_test[idx])}", fontsize=8)
        ax.set_xticks([])
        ax.set_yticks([])
    plt.tight_layout()
    plt.savefig(fig_dir / "Figure_exp7_1_samples.png", dpi=160)
    plt.close()

    plt.figure(figsize=(7.2, 4.4))
    epochs = np.arange(1, len(train_history) + 1)
    train_error = np.maximum(1.0 - train_history, 1e-3)
    test_error = np.maximum(1.0 - test_history, 1e-3)
    plt.semilogy(epochs, train_error, marker="o", color="steelblue", label="Train")
    plt.semilogy(epochs, test_error, marker="s", color="crimson", label="Test")
    plt.xlabel("Epoch")
    plt.ylabel("Error rate (log scale)")
    plt.title("Experiment 7-1: Train/Test Error Rate")
    plt.grid(True, which="both", alpha=0.3)
    plt.legend()
    plt.tight_layout()
    plt.savefig(fig_dir / "Figure_exp7_1_accuracy.png", dpi=160)
    plt.close()

    plt.figure(figsize=(6.2, 5.2))
    plt.imshow(conf, cmap="Blues")
    plt.colorbar(label="count")
    plt.xticks(np.arange(10))
    plt.yticks(np.arange(10))
    plt.xlabel("Predicted label")
    plt.ylabel("True label")
    plt.title("Experiment 7-1: Test Confusion Matrix")
    for i in range(10):
        for j in range(10):
            color = "white" if conf[i, j] > conf.max() * 0.55 else "black"
            plt.text(j, i, str(conf[i, j]), ha="center", va="center", color=color, fontsize=8)
    plt.tight_layout()
    plt.savefig(fig_dir / "Figure_exp7_1_confusion.png", dpi=160)
    plt.close()

    fig = plt.figure(figsize=(8.6, 6.3), constrained_layout=True)
    gs = fig.add_gridspec(
        4,
        6,
        width_ratios=[1, 1, 1, 1, 1, 0.08],
        wspace=0.16,
        hspace=0.28,
    )
    axes = [fig.add_subplot(gs[i, j]) for i in range(4) for j in range(5)]
    cax = fig.add_subplot(gs[:, 5])
    vmax = float(np.max(np.abs(W1)))
    for idx, ax in enumerate(axes):
        im = ax.imshow(W1[:, :, idx], cmap="coolwarm", vmin=-vmax, vmax=vmax)
        ax.set_title(f"K{idx + 1}", fontsize=8)
        ax.set_xticks([])
        ax.set_yticks([])
    fig.colorbar(im, cax=cax)
    fig.suptitle("Experiment 7-1: Learned 9x9 Convolution Kernels")
    plt.savefig(fig_dir / "Figure_exp7_1_filters.png", dpi=160)
    plt.close()

    feature_idx = select_feature_sample(D_test, pred_test)
    feature_maps = ReLU(Conv(X_test[feature_idx], W1))
    fig, axes = plt.subplots(3, 7, figsize=(10.6, 4.9))
    axes_flat = axes.ravel()
    true_label = int(D_test[feature_idx][0])
    pred_label = int(pred_test[feature_idx])
    confidence = float(np.max(probs_test[feature_idx]))
    axes_flat[0].imshow(X_test[feature_idx], cmap="gray_r", vmin=0, vmax=1)
    axes_flat[0].set_title(f"input\nT:{true_label} P:{pred_label}\nC:{confidence:.2f}", fontsize=8)
    axes_flat[0].set_xticks([])
    axes_flat[0].set_yticks([])
    for idx, ax in enumerate(axes_flat[1:]):
        ax.imshow(feature_maps[:, :, idx], cmap="viridis")
        ax.set_title(f"F{idx + 1}", fontsize=8)
        ax.set_xticks([])
        ax.set_yticks([])
    plt.suptitle("Experiment 7-1: Conv+ReLU Feature Maps")
    plt.tight_layout()
    plt.savefig(fig_dir / "Figure_exp7_1_feature_maps.png", dpi=160)
    plt.close()

    wrong = np.where(pred_test != D_test.reshape(-1))[0]
    cols = 6
    rows = int(np.ceil(max(len(wrong), 1) / cols))
    fig, axes = plt.subplots(rows, cols, figsize=(9.5, 1.65 * rows + 0.5), squeeze=False)
    for ax in axes.ravel():
        ax.axis("off")
    for ax, idx in zip(axes.ravel(), wrong):
        true_label = int(D_test[idx][0])
        pred_label = int(pred_test[idx])
        confidence = float(probs_test[idx, pred_label])
        ax.imshow(X_test[idx], cmap="gray_r", vmin=0, vmax=1)
        ax.set_title(f"#{idx} T:{true_label} P:{pred_label}\nC:{confidence:.2f}", fontsize=8)
        ax.set_xticks([])
        ax.set_yticks([])
    plt.suptitle(f"Experiment 7-1: Misclassified Samples ({len(wrong)})")
    plt.tight_layout()
    plt.savefig(fig_dir / "Figure_exp7_1_errors.png", dpi=160)
    plt.close()


def main():
    seed = 7
    epochs = 10
    alpha = 0.01
    beta = 0.95
    bsize = 10
    fig_dir = Path(__file__).resolve().parents[2] / "Lab9实验报告" / "figures"

    X, D, X_test, D_test = load_experiment_data()
    W1, W5, Wo = initialize_weights(seed)
    W1, W5, Wo, train_history, test_history = MnistConv(
        W1,
        W5,
        Wo,
        X,
        D,
        epochs=epochs,
        alpha=alpha,
        beta=beta,
        bsize=bsize,
        X_test=X_test,
        D_test=D_test,
    )

    pred_train, _ = Predict(W1, W5, Wo, X)
    pred_test, probs_test = Predict(W1, W5, Wo, X_test)
    train_acc = float(np.mean(pred_train == D.reshape(-1)))
    test_correct = int(np.sum(pred_test == D_test.reshape(-1)))
    test_acc = test_correct / len(D_test)
    conf = confusion_matrix(D_test, pred_test)
    errors = error_summary(D_test, pred_test)

    save_figures(
        fig_dir,
        X_test,
        D_test,
        pred_test,
        probs_test,
        train_history,
        test_history,
        conf,
        W1,
    )

    print("Experiment 7-1: CNN with mini-batch momentum")
    print(f"seed={seed}, epochs={epochs}, alpha={alpha}, beta={beta}, batch size={bsize}")
    print(f"W1={W1.shape}, W5={W5.shape}, Wo={Wo.shape}")
    print(f"train accuracy={train_acc * 100:.2f}%")
    print(f"test accuracy={test_acc * 100:.2f}% ({test_correct}/{len(D_test)})")
    print("epoch history:")
    for idx, (tr_acc, te_acc) in enumerate(zip(train_history, test_history), start=1):
        print(f"epoch {idx:02d}: train={tr_acc * 100:.2f}%, test={te_acc * 100:.2f}%")
    print("error types:")
    for (true_label, pred_label), count in errors:
        print(f"{true_label}->{pred_label}: {count}")
    print("first 20 test predictions:")
    for i in range(20):
        print(
            f"test {i:02d}: target={int(D_test[i][0])}, "
            f"pred={int(pred_test[i])}, confidence={float(np.max(probs_test[i])):.4f}"
        )
    print(f"figures saved to {fig_dir}")


if __name__ == "__main__":
    main()
