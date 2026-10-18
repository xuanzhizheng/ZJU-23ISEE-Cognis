import numpy as np
import matplotlib.pyplot as plt
from sklearn.datasets import load_digits
from pathlib import Path

# ---- 图片保存路径 ----
fig_dir = Path(__file__).resolve().parents[2] / "Lab6实验报告" / "figures"
fig_dir.mkdir(parents=True, exist_ok=True)

# ==================================================================
# Step 1.1: 计算高维样本每一个元素之间的距离
# ==================================================================
def cal_pairwise_dist(x):
    """cal_pairwise_dist: 计算高维样本之间的距离"""
    sum_x = np.sum(np.square(x), 1)   # np.square 返回一个新数组，其元素值为原数组元素平方
    dist = np.add(np.add(-2 * np.dot(x, x.T), sum_x).T, sum_x)
    # np.dot矩阵乘法，np.add 拓展为相同array后相加
    return dist  # 计算(a-b)^2 = a^2 + b^2 - 2*a*b

# ==================================================================
# Step 1.2: 计算W矩阵
# ==================================================================
def cal_W_ele(dist, t=1.0):
    return np.exp(-(dist / t))  # calculate W elements

def cal_W(data, n_neigh=10, t=1):
    dist = cal_pairwise_dist(data)
    dist[dist < 0] = 0          # 修正浮点误差导致的负值
    print('dist shape:', dist.shape)
    n = dist.shape[0]
    print('n:', n)
    W_dist = cal_W_ele(dist, t)  # 计算W element

    W = np.zeros((n, n))
    for i in range(n):
        j_n = np.argsort(dist[i])[1:1 + n_neigh]   # 元素从小到大排列（跳过自身）
        W[i, j_n] = W_dist[i, j_n]   # 除了前n_neigh个元素，W其他元素为0
    return W

# ==================================================================
# Step 2: 定义LPP函数
# ==================================================================
def LPP(data, n_dims=2, n_neigh=30, t=1.0):
    """
    LPP（Locality Preserving Projections）降维
    输入: data (n×d), n_dims: 目标维数, n_neigh: 近邻数, t: 核宽度
    输出: data_ndim (n×n_dims)
    """
    # 计算W矩阵（热核权重，仅保留n_neigh近邻）
    W = cal_W(data, n_neigh, t)

    # 计算D矩阵（对角矩阵，D_ii = sum_j W_ij）
    D = np.diag(np.sum(W, axis=1))

    # 计算L矩阵（拉普拉斯矩阵，L = D - W）
    L = D - W

    # 计算 XDXT = X D X^T （d×d），X此处为列向量集合(d×n)，data为n×d
    XDXT = data.T @ D @ data

    # 计算 XLXT = X L X^T （d×d）
    XLXT = data.T @ L @ data

    # 求 (XDX^T)^{-1} XLX^T 的特征值分解
    # 加小量正则化防止XDXT奇异
    reg = 1e-8 * np.eye(XDXT.shape[0])
    eig_vals, eig_vects = np.linalg.eig(np.linalg.inv(XDXT + reg) @ XLXT)

    # 取实部（消除数值误差引入的微小虚部）
    eig_vals  = np.real(eig_vals)
    eig_vects = np.real(eig_vects)

    # 找出 (XDX^T)^{-1} XLX^T 的n_dims个最小非零特征值所对应的特征向量
    idx = np.argsort(eig_vals)                           # 升序排列
    non_zero_idx = idx[np.abs(eig_vals[idx]) > 1e-10]   # 过滤零特征值
    selected = non_zero_idx[:n_dims]                     # 取最小n_dims个

    W_proj = eig_vects[:, selected]   # d × n_dims 投影矩阵

    # 计算降维后的数据
    data_ndim = data @ W_proj         # n × n_dims
    return data_ndim

# ==================================================================
# Step 3: 测试LPP函数
# ==================================================================
X = load_digits().data    # 1797 × 64
y = load_digits().target  # 标签 0, 1, ..., 9

dist = cal_pairwise_dist(X)  # 1797 × 1797
max_dist = np.max(dist)
print('max_dist:', max_dist)

data_LPP = LPP(X, n_dims=2, n_neigh=5, t=0.01 * max_dist)
print('LPP output shape:', data_LPP.shape)

# ==================================================================
# 可视化：降维后数据（按类别着色）
# ==================================================================
fig, ax = plt.subplots(figsize=(9, 7))
colors = plt.cm.tab10(np.linspace(0, 1, 10))
for digit in range(10):
    mask = (y == digit)
    ax.scatter(data_LPP[mask, 0], data_LPP[mask, 1],
               c=[colors[digit]], label=str(digit),
               s=15, alpha=0.75)

ax.set_xlabel('LPP Component 1', fontsize=12)
ax.set_ylabel('LPP Component 2', fontsize=12)
ax.set_title('Exp 3-4: LPP on Digits Dataset  (n_dims=2, n_neigh=5)', fontsize=12)
ax.legend(title='Digit', ncol=2, fontsize=9, loc='best')
ax.grid(True, alpha=0.3)
plt.tight_layout()

fig_path = fig_dir / "Figure_17.png"
plt.savefig(fig_path, dpi=150)
plt.close()
print(f"\nFigure saved → {fig_path}")
