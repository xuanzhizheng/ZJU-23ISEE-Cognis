import numpy as np
import matplotlib.pyplot as plt
from pathlib import Path

# ---- 图片保存路径 ----
fig_dir = Path(__file__).resolve().parents[2] / "Lab6实验报告" / "figures"
fig_dir.mkdir(parents=True, exist_ok=True)

# ==================================================================
# Step 1: 计算均值
# ==================================================================
def mean_val(data_np):
    """输入是numpy的format，行表示样本数，列表示特征"""
    return np.mean(data_np, axis=0)

# ==================================================================
# Step 2: 计算类内离散度矩阵Sw的单元
# ==================================================================
def compute_Sw_0(xi):
    n = xi.shape[0]
    ui = mean_val(xi)
    Sw_0 = 0
    for i in range(0, n):
        Sw_0 = Sw_0 + np.outer((xi[i, :] - ui), (xi[i, :] - ui))
    return Sw_0

# ==================================================================
# Step 3: 类间离散度矩阵Sb
# ==================================================================
def compute_Sb(x1, x2):
    u1 = mean_val(x1)
    u2 = mean_val(x2)
    m1 = x1.shape[0]
    m2 = x2.shape[0]
    u  = (m1 * u1 + m2 * u2) / (m1 + m2)
    Sb = m1 * np.outer((u1 - u), (u1 - u)) + \
         m2 * np.outer((u2 - u), (u2 - u))
    return Sb

# ==================================================================
# Step 4: LDA求解
# ==================================================================
def LDA(x1, x2):
    """
    求解 Sw^{-1} Sb 的最大非零特征值对应的特征向量 W，
    即 Fisher 线性判别方向。
    """
    Sw = compute_Sw_0(x1) + compute_Sw_0(x2)
    Sb = compute_Sb(x1, x2)
    Sw_inv = np.linalg.inv(Sw)
    eigVals, eigVects = np.linalg.eig(Sw_inv @ Sb)
    # 取最大非零实部特征值对应的特征向量
    eigVals_real = np.real(eigVals)
    idx = np.argsort(eigVals_real)[::-1]
    W = np.real(eigVects[:, idx[0]])
    W = W / np.linalg.norm(W)   # 归一化为单位向量
    return W

# ==================================================================
# Step 5: 测试
# ==================================================================
np.random.seed(42)
x1 = np.random.random((30, 2)) * 3 + 10   # A类：取值范围 10-13
x2 = np.random.random((30, 2)) * 3 + 15   # B类：取值范围 15-18

# 利用 LDA 求判别方向 W
W = LDA(x1, x2)
print(f"LDA 判别方向 W = [{W[0]:.6f}, {W[1]:.6f}]")

u1 = mean_val(x1)
u2 = mean_val(x2)
print(f"类A均值: u1 = {u1}")
print(f"类B均值: u2 = {u2}")

# 计算投影（用于分析类间分离度）
proj1 = x1 @ W
proj2 = x2 @ W
print(f"\n类A投影均值: {np.mean(proj1):.4f},  标准差: {np.std(proj1):.4f}")
print(f"类B投影均值: {np.mean(proj2):.4f},  标准差: {np.std(proj2):.4f}")

# ==================================================================
# 可视化：在同一张图内显示降维直线和原始数据
# ==================================================================
fig, ax = plt.subplots(figsize=(8, 7))

# 绘制原始数据散点
ax.scatter(x1[:, 0], x1[:, 1], c='steelblue', s=60, alpha=0.85,
           edgecolors='white', linewidths=0.5, label='Class A  (10–13)')
ax.scatter(x2[:, 0], x2[:, 1], c='tomato',    s=60, alpha=0.85,
           edgecolors='white', linewidths=0.5, label='Class B  (15–18)')

# 绘制各类均值
ax.scatter(*u1, c='navy',   s=120, marker='*', zorder=5, label=f'μ₁=({u1[0]:.2f},{u1[1]:.2f})')
ax.scatter(*u2, c='darkred', s=120, marker='*', zorder=5, label=f'μ₂=({u2[0]:.2f},{u2[1]:.2f})')

# 绘制 LDA 判别方向（经过两类均值中心的直线）
center = (u1 + u2) / 2
t = np.linspace(-8, 8, 300)
line_x = center[0] + t * W[0]
line_y = center[1] + t * W[1]
ax.plot(line_x, line_y, 'g-', linewidth=2.0,
        label=f'LDA Direction W=[{W[0]:.3f}, {W[1]:.3f}]')

# 绘制各样本在判别方向上的投影点（垂足）
for xi in x1:
    t_i = (xi - center) @ W
    proj_pt = center + t_i * W
    ax.plot([xi[0], proj_pt[0]], [xi[1], proj_pt[1]],
            color='steelblue', lw=0.4, alpha=0.4)
for xi in x2:
    t_i = (xi - center) @ W
    proj_pt = center + t_i * W
    ax.plot([xi[0], proj_pt[0]], [xi[1], proj_pt[1]],
            color='tomato', lw=0.4, alpha=0.4)

ax.set_xlabel('Feature 1', fontsize=12)
ax.set_ylabel('Feature 2', fontsize=12)
ax.set_title('Exp 3-3: LDA Dimensionality Reduction\n(Random Data A: 10–13, B: 15–18)', fontsize=12)
ax.legend(fontsize=9, loc='upper left')
ax.grid(True, alpha=0.3)
plt.tight_layout()

fig_path = fig_dir / "Figure_16.png"
plt.savefig(fig_path, dpi=150)
plt.close()
print(f"\nFigure saved → {fig_path}")
