import time
import numpy as np
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
from pathlib import Path
from Sigmoid import Sigmoid
from DeltaSGD import DeltaSGD
from DeltaBatch import DeltaBatch

fig_dir = Path(__file__).resolve().parents[2] / "Lab7实验报告" / "figures"
fig_dir.mkdir(parents=True, exist_ok=True)

# ============================================================
# Dataset (from slides P25):
#   columns: x1, x2, x3(bias=1)
#   label:   d = x1  →  [0, 0, 1, 1]
# ============================================================
X = np.array([[0, 0, 1],
              [0, 1, 1],
              [1, 0, 1],
              [1, 1, 1]], dtype=float)
D = np.array([0, 0, 1, 1], dtype=float)

N = 4
EPOCHS = 10000

def compute_mse(W, X, D):
    total = 0.0
    for k in range(N):
        x = X[k, :].T
        v = (W @ x)[0]
        y = Sigmoid(v)
        total += (D[k] - y) ** 2
    return total / N

# ============================================================
# Part 1: SGD and Batch training (alpha=0.1, W in [-0.5, 0.5])
# ============================================================
np.random.seed(42)
W_init = np.random.uniform(-0.5, 0.5, (1, 3))

W_sgd = W_init.copy()
W_batch = W_init.copy()
mse_sgd = []
mse_batch = []
# per-sample output trajectories: shape (EPOCHS, N)
y_sgd_hist   = np.zeros((EPOCHS, N))
y_batch_hist = np.zeros((EPOCHS, N))

for ep in range(EPOCHS):
    W_sgd = DeltaSGD(W_sgd, X, D, alpha=0.1)
    mse_sgd.append(compute_mse(W_sgd, X, D))
    for k in range(N):
        y_sgd_hist[ep, k] = Sigmoid((W_sgd @ X[k, :].T)[0])

# Reset seed so Batch starts from same W_init with same random state
np.random.seed(42)
W_batch = W_init.copy()
for ep in range(EPOCHS):
    W_batch = DeltaBatch(W_batch, X, D, alpha=0.1)
    mse_batch.append(compute_mse(W_batch, X, D))
    for k in range(N):
        y_batch_hist[ep, k] = Sigmoid((W_batch @ X[k, :].T)[0])

print("=" * 52)
print("SGD 训练结果 (alpha=0.1, W in [-0.5, 0.5])")
print("=" * 52)
print(f"最终权重 W = {W_sgd[0]}")
for k in range(N):
    x = X[k, :].T
    v = (W_sgd @ x)[0]
    y = Sigmoid(v)
    print(f"  输入 x1={int(X[k,0])}, x2={int(X[k,1])}, x3={int(X[k,2])}, 期望: {int(D[k])}, 输出: {y:.4f}")

print()
print("=" * 52)
print("Batch 训练结果 (alpha=0.1, W in [-0.5, 0.5])")
print("=" * 52)
print(f"最终权重 W = {W_batch[0]}")
for k in range(N):
    x = X[k, :].T
    v = (W_batch @ x)[0]
    y = Sigmoid(v)
    print(f"  输入 x1={int(X[k,0])}, x2={int(X[k,1])}, x3={int(X[k,2])}, 期望: {int(D[k])}, 输出: {y:.4f}")

# Plot MSE comparison (log scale)
plt.figure(figsize=(10, 5))
plt.plot(mse_sgd,   label='SGD',   color='steelblue', alpha=0.85, linewidth=1.2)
plt.plot(mse_batch, label='Batch', color='tomato',    alpha=0.85, linewidth=1.2)
plt.yscale('log')
plt.xlabel('Epoch')
plt.ylabel('MSE (log scale)')
plt.title('SGD vs Batch: MSE over Epochs (alpha=0.1, log scale)')
plt.legend()
plt.grid(True, alpha=0.3, which='both')
plt.tight_layout()
fig_path = fig_dir / "Figure_18.png"
plt.savefig(fig_path, dpi=150)
plt.close()
print(f"\nFigure saved → {fig_path}")

# Plot per-sample output y over epochs
sample_labels = ['x1=0,x2=0 (d=0)', 'x1=0,x2=1 (d=0)',
                 'x1=1,x2=0 (d=1)', 'x1=1,x2=1 (d=1)']
colors = ['#e07b54', '#c0392b', '#2980b9', '#1a5276']  # red tones for d=0, blue for d=1

fig, axes = plt.subplots(1, 2, figsize=(13, 5))
for k in range(N):
    axes[0].plot(y_sgd_hist[:, k],   color=colors[k], label=sample_labels[k],
                 alpha=0.85, linewidth=1.2)
    axes[1].plot(y_batch_hist[:, k], color=colors[k], label=sample_labels[k],
                 alpha=0.85, linewidth=1.2)

for ax, title in zip(axes, ['SGD', 'Batch']):
    ax.axhline(0, color='gray', linestyle='--', linewidth=0.8, alpha=0.6, label='Target d=0')
    ax.axhline(1, color='gray', linestyle=':',  linewidth=0.8, alpha=0.6, label='Target d=1')
    ax.set_xlabel('Epoch')
    ax.set_ylabel('Output y')
    ax.set_title(f'{title}: Output y per Sample over Epochs (α=0.1)')
    ax.set_ylim(-0.05, 1.05)
    ax.legend(fontsize=8)
    ax.grid(True, alpha=0.3)

plt.tight_layout()
fig_path = fig_dir / "Figure_18b.png"
plt.savefig(fig_path, dpi=150)
plt.close()
print(f"Figure saved → {fig_path}")

# ============================================================
# Part 2: Effect of learning rate — all α in one log-scale figure
# ============================================================
alphas = [0.01, 0.1, 0.5, 1.0, 5.0, 10.0, 50.0]

fig, axes = plt.subplots(1, 2, figsize=(13, 5))

for alpha in alphas:
    np.random.seed(42)
    W = W_init.copy()
    mse_list = []
    for _ in range(EPOCHS):
        W = DeltaSGD(W, X, D, alpha=alpha)
        mse_list.append(compute_mse(W, X, D))
    axes[0].plot(mse_list, label=f'α={alpha}', alpha=0.85, linewidth=1.2)

axes[0].set_yscale('log')
axes[0].set_xlabel('Epoch')
axes[0].set_ylabel('MSE (log scale)')
axes[0].set_title('SGD: Effect of Learning Rate α')
axes[0].legend(fontsize=8)
axes[0].grid(True, alpha=0.3, which='both')

for alpha in alphas:
    np.random.seed(42)
    W = W_init.copy()
    mse_list = []
    for _ in range(EPOCHS):
        W = DeltaBatch(W, X, D, alpha=alpha)
        mse_list.append(compute_mse(W, X, D))
    axes[1].plot(mse_list, label=f'α={alpha}', alpha=0.85, linewidth=1.2)

axes[1].set_yscale('log')
axes[1].set_xlabel('Epoch')
axes[1].set_ylabel('MSE (log scale)')
axes[1].set_title('Batch: Effect of Learning Rate α')
axes[1].legend(fontsize=8)
axes[1].grid(True, alpha=0.3, which='both')

plt.tight_layout()
fig_path = fig_dir / "Figure_19.png"
plt.savefig(fig_path, dpi=150)
plt.close()
print(f"Figure saved → {fig_path}")

print()
print("=" * 55)
print("不同学习率的最终 MSE (10000 epochs)")
print(f"{'Alpha':>8} | {'SGD MSE':>12} | {'Batch MSE':>12}")
print("-" * 38)
for alpha in alphas:
    np.random.seed(42)
    W_s = W_init.copy()
    np.random.seed(42)
    W_b = W_init.copy()
    for _ in range(EPOCHS):
        W_s = DeltaSGD(W_s, X, D, alpha=alpha)
    for _ in range(EPOCHS):
        W_b = DeltaBatch(W_b, X, D, alpha=alpha)
    print(f"{alpha:>6} | {compute_mse(W_s, X, D):>12.6f} | {compute_mse(W_b, X, D):>12.6f}")

# ============================================================
# Part 3: Effect of weight initialization range
# ============================================================
init_ranges = [(-0.1, 0.1), (-0.5, 0.5), (-1.0, 1.0), (-2.0, 2.0)]

fig, axes = plt.subplots(1, 2, figsize=(13, 5))

for low, high in init_ranges:
    np.random.seed(42)
    W = np.random.uniform(low, high, (1, 3))
    mse_list = []
    for _ in range(EPOCHS):
        W = DeltaSGD(W, X, D, alpha=0.1)
        mse_list.append(compute_mse(W, X, D))
    axes[0].plot(mse_list, label=f'W∈[{low},{high}]', alpha=0.85, linewidth=1.2)

axes[0].set_yscale('log')
axes[0].set_xlabel('Epoch')
axes[0].set_ylabel('MSE (log scale)')
axes[0].set_title('SGD: Effect of Weight Initialization')
axes[0].legend()
axes[0].grid(True, alpha=0.3, which='both')

for low, high in init_ranges:
    np.random.seed(42)
    W = np.random.uniform(low, high, (1, 3))
    mse_list = []
    for _ in range(EPOCHS):
        W = DeltaBatch(W, X, D, alpha=0.1)
        mse_list.append(compute_mse(W, X, D))
    axes[1].plot(mse_list, label=f'W∈[{low},{high}]', alpha=0.85, linewidth=1.2)

axes[1].set_yscale('log')
axes[1].set_xlabel('Epoch')
axes[1].set_ylabel('MSE (log scale)')
axes[1].set_title('Batch: Effect of Weight Initialization')
axes[1].legend()
axes[1].grid(True, alpha=0.3, which='both')

plt.tight_layout()
fig_path = fig_dir / "Figure_20.png"
plt.savefig(fig_path, dpi=150)
plt.close()
print(f"Figure saved → {fig_path}")

print()
print("=" * 55)
print("不同权重初始化范围的最终 MSE (10000 epochs, alpha=0.1)")
print(f"{'Init Range':>16} | {'SGD MSE':>12} | {'Batch MSE':>12}")
print("-" * 45)
for low, high in init_ranges:
    np.random.seed(42)
    W_s = np.random.uniform(low, high, (1, 3))
    np.random.seed(42)
    W_b = np.random.uniform(low, high, (1, 3))
    for _ in range(EPOCHS):
        W_s = DeltaSGD(W_s, X, D, alpha=0.1)
    for _ in range(EPOCHS):
        W_b = DeltaBatch(W_b, X, D, alpha=0.1)
    label = f'[{low},{high}]'
    print(f"{label:>16} | {compute_mse(W_s, X, D):>12.6f} | {compute_mse(W_b, X, D):>12.6f}")

# ============================================================
# Part 4 (附加): Multi-seed weight init robustness (20 seeds)
# ============================================================
print()
print("=" * 60)
print("附加 Part 5: 多随机种子权重初始化鲁棒性 (20 seeds)")
N_SEEDS = 20

print(f"{'Init Range':>16} | {'SGD mean±std':>20} | {'Batch mean±std':>20}")
print("-" * 62)

sgd_stats = {}
batch_stats = {}
for low, high in init_ranges:
    sgd_mses = []
    batch_mses = []
    for s in range(N_SEEDS):
        np.random.seed(s)
        W_s = np.random.uniform(low, high, (1, 3))
        np.random.seed(s)
        W_b = np.random.uniform(low, high, (1, 3))
        for _ in range(EPOCHS):
            W_s = DeltaSGD(W_s, X, D, alpha=0.1)
        for _ in range(EPOCHS):
            W_b = DeltaBatch(W_b, X, D, alpha=0.1)
        sgd_mses.append(compute_mse(W_s, X, D))
        batch_mses.append(compute_mse(W_b, X, D))
    sgd_stats[f'[{low},{high}]'] = (np.mean(sgd_mses), np.std(sgd_mses))
    batch_stats[f'[{low},{high}]'] = (np.mean(batch_mses), np.std(batch_mses))
    label = f'[{low},{high}]'
    print(f"{label:>16} | {np.mean(sgd_mses):.6f} ± {np.std(sgd_mses):.6f} "
          f"| {np.mean(batch_mses):.6f} ± {np.std(batch_mses):.6f}")

# Bar chart with error bars
labels = [f'[{l},{h}]' for l, h in init_ranges]
x = np.arange(len(labels))
w = 0.35
fig, ax = plt.subplots(figsize=(10, 5))
sgd_means  = [sgd_stats[l][0]   for l in labels]
sgd_stds   = [sgd_stats[l][1]   for l in labels]
batch_means = [batch_stats[l][0] for l in labels]
batch_stds  = [batch_stats[l][1] for l in labels]
ax.bar(x - w/2, sgd_means,   w, yerr=sgd_stds,   label='SGD',   color='steelblue', alpha=0.8, capsize=5)
ax.bar(x + w/2, batch_means, w, yerr=batch_stds, label='Batch', color='tomato',    alpha=0.8, capsize=5)
ax.set_xticks(x)
ax.set_xticklabels(labels)
ax.set_xlabel('Weight Initialization Range')
ax.set_ylabel('Final MSE (mean ± std, 20 seeds)')
ax.set_title('Weight Init Robustness: Final MSE over 20 Random Seeds')
ax.legend()
ax.grid(True, alpha=0.3, axis='y')
plt.tight_layout()
plt.savefig(fig_dir / "Figure_22.png", dpi=150)
plt.close()
print(f"Figure saved → {fig_dir / 'Figure_22.png'}")

# ============================================================
# Part 6 (附加): Classification accuracy + wall-clock timing
# ============================================================
print()
print("=" * 60)
print("附加 Part 6: 分类精度与训练时间")

def classify(W, X, threshold=0.5):
    preds = []
    for k in range(len(X)):
        x = X[k, :].T
        y = Sigmoid((W @ x)[0])
        preds.append(1 if y >= threshold else 0)
    return np.array(preds)

# Retrain with timing
np.random.seed(42)
W_s = W_init.copy()
t0 = time.perf_counter()
for _ in range(EPOCHS):
    W_s = DeltaSGD(W_s, X, D, alpha=0.1)
sgd_time = time.perf_counter() - t0

np.random.seed(42)
W_b = W_init.copy()
t0 = time.perf_counter()
for _ in range(EPOCHS):
    W_b = DeltaBatch(W_b, X, D, alpha=0.1)
batch_time = time.perf_counter() - t0

acc_sgd   = np.mean(classify(W_s, X) == D.astype(int)) * 100
acc_batch = np.mean(classify(W_b, X) == D.astype(int)) * 100

print(f"  SGD   分类精度: {acc_sgd:.1f}%   训练耗时: {sgd_time*1000:.1f} ms")
print(f"  Batch 分类精度: {acc_batch:.1f}%   训练耗时: {batch_time*1000:.1f} ms")
print(f"  SGD / Batch 时间比: {sgd_time/batch_time:.2f}x")

# ============================================================
# Part 7 (附加): Mini-Batch (batch_size=2) comparison
# ============================================================
from MiniBatch import DeltaMiniBatch

print()
print("=" * 60)
print("附加 Part 7: Mini-Batch (batch_size=2) 与 SGD/Batch 对比")

np.random.seed(42)
W_mini = W_init.copy()
mse_mini = []
for _ in range(EPOCHS):
    W_mini = DeltaMiniBatch(W_mini, X, D, alpha=0.1, batch_size=2)
    mse_mini.append(compute_mse(W_mini, X, D))

print(f"  Mini-Batch 最终权重: {W_mini[0]}")
for k in range(N):
    x = X[k, :].T
    y = Sigmoid((W_mini @ x)[0])
    print(f"    x1={int(X[k,0])}, x2={int(X[k,1])}, 期望:{int(D[k])}, 输出:{y:.4f}")
print(f"  Mini-Batch 最终 MSE: {mse_mini[-1]:.6f}")

print()
print(f"{'Method':>12} | {'Final MSE':>12} | {'Updates/epoch':>14}")
print("-" * 44)
print(f"{'SGD':>12} | {mse_sgd[-1]:>12.6f} | {'N=4':>14}")
print(f"{'Mini-Batch':>12} | {mse_mini[-1]:>12.6f} | {'N/bs=2':>14}")
print(f"{'Batch':>12} | {mse_batch[-1]:>12.6f} | {'1':>14}")

# Three-way MSE comparison (log scale)
plt.figure(figsize=(10, 5))
plt.plot(mse_sgd,   label='SGD (N=4 updates/epoch)',      color='steelblue', alpha=0.85, linewidth=1.2)
plt.plot(mse_mini,  label='Mini-Batch (bs=2, 2 upd/ep)', color='seagreen',  alpha=0.85, linewidth=1.2)
plt.plot(mse_batch, label='Batch (1 update/epoch)',       color='tomato',    alpha=0.85, linewidth=1.2)
plt.yscale('log')
plt.xlabel('Epoch')
plt.ylabel('MSE (log scale)')
plt.title('SGD vs Mini-Batch (bs=2) vs Batch: MSE over Epochs (α=0.1)')
plt.legend()
plt.grid(True, alpha=0.3, which='both')
plt.tight_layout()
plt.savefig(fig_dir / "Figure_23.png", dpi=150)
plt.close()
print(f"Figure saved → {fig_dir / 'Figure_23.png'}")
