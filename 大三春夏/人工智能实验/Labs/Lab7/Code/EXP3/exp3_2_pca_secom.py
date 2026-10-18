import numpy as np
from numpy import mean, cov, linalg, isnan, nonzero, shape
mat     = np.matrix
argsort = np.argsort
from pathlib import Path
import matplotlib.pyplot as plt

# ---- 路径 ----
base_dir = Path(__file__).resolve().parents[2]
fig_dir  = base_dir / "Lab5实验报告" / "figures"
fig_dir.mkdir(parents=True, exist_ok=True)

# ==================================================================
# ---- 复用 exp3_1 的工具函数 ----
# ==================================================================
def loadDataSet(fileName, delim='\t'):
    fr = open(fileName)
    stringArr = [line.strip().split(delim) for line in fr.readlines()]
    datArr    = [list(map(float, line)) for line in stringArr]
    return mat(datArr)

def pca(dataMat, topNfeat=9999999):
    meanVals    = mean(dataMat, axis=0)
    meanRemoved = dataMat - meanVals
    covMat      = cov(meanRemoved, rowvar=0)
    eigVals, eigVects = linalg.eig(mat(covMat))
    eigValInd   = argsort(eigVals)
    eigValInd   = eigValInd[:-(topNfeat+1):-1]
    redEigVects = eigVects[:, eigValInd]
    lowDDataMat = meanRemoved * redEigVects
    reconMat    = (lowDDataMat * redEigVects.T) + meanVals
    return lowDDataMat, reconMat

# ==================================================================
# ---- NaN 替换函数（课件给出）----
# ==================================================================
def replaceNanWithMean(fileName):
    datMat  = loadDataSet(fileName, delim=' ')
    numFeat = shape(datMat)[1]
    for i in range(numFeat):
        # 非 NaN 位置的均值
        meanVal = mean(datMat[nonzero(~isnan(datMat[:, i].A))[0], i])
        # 将 NaN 替换为均值
        datMat[nonzero(isnan(datMat[:, i].A))[0], i] = meanVal
    return datMat

# ==================================================================
# ---- 载入 secom.data，处理缺失值 ----
# ==================================================================
secom_path = base_dir / "secom.data"
print("Loading secom.data ...")
datMat = replaceNanWithMean(str(secom_path))
n_samples, n_features = shape(datMat)
print(f"数据维度: {n_samples} 样本 × {n_features} 特征")

# ==================================================================
# ---- ① 扫描不同 topNfeat，计算相对误差 ----
# ==================================================================
# 先用全部特征的 PCA 作为分母基准
# Re_err = ||datMat - reconMat|| / ||datMat||

# 扫描范围：1 ~ min(n_features, n_samples-1)，步长自适应
steps = list(range(1, 11)) + list(range(15, 51, 5)) + list(range(60, 201, 20)) + \
        list(range(250, n_features + 1, 50))
steps = sorted(set(s for s in steps if s <= n_features))

print("\n扫描 topNfeat → 相对误差 ...")
norm_orig = linalg.norm(datMat)
results = []
for N in steps:
    _, reconMat = pca(datMat, topNfeat=N)
    re_err = linalg.norm(datMat - reconMat) / norm_orig
    results.append((N, float(re_err)))
    print(f"  topNfeat={N:4d}   Re_err={re_err:.6f}  ({re_err*100:.3f}%)")

# ==================================================================
# ---- ② 找到相对误差 < 9% 的最小 topNfeat ----
# ==================================================================
min_N = None
for N, err in results:
    if err < 0.09:
        min_N = N
        min_err = err
        break

if min_N is None:
    # 如果步长太粗，做精确二分搜索
    lo, hi = 1, n_features
    while lo < hi:
        mid = (lo + hi) // 2
        _, reconMat = pca(datMat, topNfeat=mid)
        re_err = linalg.norm(datMat - reconMat) / norm_orig
        if re_err < 0.09:
            hi = mid
        else:
            lo = mid + 1
    min_N   = lo
    _, reconMat = pca(datMat, topNfeat=min_N)
    min_err = float(linalg.norm(datMat - reconMat) / norm_orig)

print(f"\n相对误差 < 9% 的最小 topNfeat = {min_N}  (Re_err={min_err*100:.4f}%)")

# ==================================================================
# ---- ③ 可视化：相对误差随 topNfeat 变化曲线 ----
# ==================================================================
Ns   = [r[0] for r in results]
errs = [r[1] * 100 for r in results]   # 转为百分比

fig, ax = plt.subplots(figsize=(10, 5))
ax.plot(Ns, errs, marker='o', markersize=4, lw=1.5, color="steelblue", label="Re_err (%)")
ax.axhline(9.0, color="tomato", lw=1.5, linestyle="--", label="9% threshold")
ax.axvline(min_N, color="darkorange", lw=1.5, linestyle="--",
           label=f"min topNfeat={min_N} ({min_err*100:.2f}%)")
ax.scatter([min_N], [min_err * 100], color="darkorange", zorder=5, s=60)
ax.set_xlabel("topNfeat (number of principal components retained)")
ax.set_ylabel("Relative Error Re_err (%)")
ax.set_title("Exp 3-2  PCA on secom.data — Relative Error vs. topNfeat")
ax.legend()
ax.grid(True, alpha=0.3)
plt.tight_layout()
fig_path = fig_dir / "Figure_15.png"
plt.savefig(fig_path, dpi=150)
plt.close()
print(f"Figure saved → {fig_path}")
