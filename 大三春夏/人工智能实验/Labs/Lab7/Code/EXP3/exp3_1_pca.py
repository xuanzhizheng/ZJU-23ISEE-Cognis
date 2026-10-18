import numpy as np
# numpy 2.x 移除了顶层 mat/argsort；用 np.matrix / np.argsort 替代
from numpy import mean, cov, linalg
mat    = np.matrix   # 兼容课件写法
argsort = np.argsort
import matplotlib.pyplot as plt
from pathlib import Path

# ---- 图片保存路径 ----
fig_dir = Path(__file__).resolve().parents[2] / "Lab5实验报告" / "figures"
fig_dir.mkdir(parents=True, exist_ok=True)

# ==================================================================
# ---- 数据导入 ----
# ==================================================================
def loadDataSet(fileName, delim='\t'):
    fr = open(fileName)
    stringArr = [line.strip().split(delim) for line in fr.readlines()]
    datArr = [list(map(float, line)) for line in stringArr]
    return mat(datArr)

# ==================================================================
# ---- PCA 函数定义 ----
# ==================================================================
def pca(dataMat, topNfeat=9999999):
    meanVals = mean(dataMat, axis=0)
    meanRemoved = dataMat - meanVals          # remove mean
    covMat = cov(meanRemoved, rowvar=0)
    eigVals, eigVects = linalg.eig(mat(covMat))
    eigValInd = argsort(eigVals)              # sort: smallest to largest
    eigValInd = eigValInd[:-(topNfeat+1):-1]  # cut off unwanted dimensions
    redEigVects = eigVects[:, eigValInd]      # reorganize: largest to smallest

    # ① 利用 N 个特征向量将原始数据转换到新空间
    lowDDataMat = meanRemoved * redEigVects

    # ② 从降维后的数据中恢复原始数据
    reconMat = (lowDDataMat * redEigVects.T) + meanVals

    return lowDDataMat, reconMat

# ==================================================================
# ---- 主程序 ----
# ==================================================================
data_path = Path(__file__).resolve().parents[2] / "testSet.txt"
dataMat = loadDataSet(str(data_path))

print(f"原始数据维度: {dataMat.shape}  (样本数={dataMat.shape[0]}, 特征数={dataMat.shape[1]})")

# ---- 转换为 numpy array 便于绘图 ----
X = np.asarray(dataMat)

# ==================================================================
# ---- 实验：topNfeat = 1 ----
# ==================================================================
lowD1, recon1 = pca(dataMat, topNfeat=1)
lowD1_arr  = np.asarray(lowD1)
recon1_arr = np.asarray(recon1)

print("\n[topNfeat=1]")
print(f"  降维后数据形状: {lowD1_arr.shape}")
print(f"  恢复数据形状 : {recon1_arr.shape}")
print(f"  降维后坐标（前5行）:\n{lowD1_arr[:5]}")

# 计算重建误差
err1 = np.mean(np.sum((X - recon1_arr)**2, axis=1))
print(f"  均方重建误差 : {err1:.4f}")

# ==================================================================
# ---- 实验：topNfeat = 2 ----
# ==================================================================
lowD2, recon2 = pca(dataMat, topNfeat=2)
lowD2_arr  = np.asarray(lowD2)
recon2_arr = np.asarray(recon2)

print("\n[topNfeat=2]")
print(f"  降维后数据形状: {lowD2_arr.shape}")
print(f"  恢复数据形状 : {recon2_arr.shape}")
print(f"  降维后坐标（前5行）:\n{lowD2_arr[:5]}")

err2 = np.mean(np.sum((X - recon2_arr)**2, axis=1))
print(f"  均方重建误差 : {err2:.4f}")

# ==================================================================
# ---- 可视化 ----
# ==================================================================
fig, axes = plt.subplots(1, 3, figsize=(16, 5))

# -- 子图1：原始数据 --
ax = axes[0]
ax.scatter(X[:, 0], X[:, 1], s=10, alpha=0.6, color="steelblue", label="Original")
ax.set_title("Original Data (2D)")
ax.set_xlabel("x1")
ax.set_ylabel("x2")
ax.legend(fontsize=8)
ax.set_aspect("equal")

# -- 子图2：topNfeat=1 降维结果（1D 投影点 + 重建点）--
ax = axes[1]
ax.scatter(X[:, 0], X[:, 1], s=10, alpha=0.3, color="steelblue", label="Original")
ax.scatter(recon1_arr[:, 0], recon1_arr[:, 1], s=10, alpha=0.6,
           color="tomato", label="Reconstructed")
# 用线段连接原点与重建点（可选，仅画前 80 条以免过密）
for i in range(min(80, len(X))):
    ax.plot([X[i, 0], recon1_arr[i, 0]],
            [X[i, 1], recon1_arr[i, 1]],
            color="gray", lw=0.4, alpha=0.5)
ax.set_title(f"topNfeat=1  (MSE={err1:.2f})\nRed=Reconstructed on PC1")
ax.set_xlabel("x1")
ax.set_ylabel("x2")
ax.legend(fontsize=8)
ax.set_aspect("equal")

# -- 子图3：topNfeat=2 降维结果（2D 新坐标散点）--
ax = axes[2]
ax.scatter(lowD2_arr[:, 0], lowD2_arr[:, 1], s=10, alpha=0.6,
           color="darkorange", label="PCA-2D projection")
ax.set_title(f"topNfeat=2  (MSE={err2:.4f})\nProjected onto PC1 & PC2")
ax.set_xlabel("PC1")
ax.set_ylabel("PC2")
ax.legend(fontsize=8)
ax.set_aspect("equal")

fig.suptitle("Exp 3-1  PCA Dimensionality Reduction (testSet.txt)", fontsize=12)
plt.tight_layout()
fig_path = fig_dir / "Figure_14.png"
plt.savefig(fig_path, dpi=150)
plt.close()
print(f"\nFigure saved → {fig_path}")
