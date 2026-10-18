import numpy as np
import matplotlib.pyplot as plt
from pathlib import Path
from sklearn import datasets
from sklearn.svm import SVC
from sklearn.pipeline import Pipeline
from sklearn.preprocessing import StandardScaler

# ---- 加载鸢尾花数据集（花瓣长度与宽度两个特征）----
iris = datasets.load_iris()
X = iris["data"][:, (2, 3)]       # petal length, petal width
y = iris["target"]                 # 3 类

# 为可视化方便，只做二分类（Setosa vs Versicolor），去掉 Virginica
mask = y != 2
X_bin, y_bin = X[mask], y[mask]   # y_bin: 0=Setosa, 1=Versicolor（线性可分）

# ---- 构建并训练三种核函数的 SVM ----
kernels = {
    "Linear  (C=1)":     SVC(kernel="linear",  C=1,    random_state=42),
    "Poly deg3 (C=5)":   SVC(kernel="poly",    C=5,    degree=3, coef0=1, random_state=42),
    "RBF  (C=5, γ=2)":   SVC(kernel="rbf",     C=5,    gamma=2,  random_state=42),
}

clfs = {}
for name, svc in kernels.items():
    pipe = Pipeline([("scaler", StandardScaler()), ("svc", svc)])
    pipe.fit(X_bin, y_bin)
    clfs[name] = pipe

# ---- 绘制决策边界 ----
fig_path = Path(__file__).resolve().parents[2] / "Lab4实验报告" / "figures" / "Figure_9.png"
fig_path.parent.mkdir(parents=True, exist_ok=True)

x0_min, x0_max = X_bin[:, 0].min() - 0.3, X_bin[:, 0].max() + 0.3
x1_min, x1_max = X_bin[:, 1].min() - 0.3, X_bin[:, 1].max() + 0.3
xx0, xx1 = np.meshgrid(np.linspace(x0_min, x0_max, 400),
                        np.linspace(x1_min, x1_max, 400))

fig, axes = plt.subplots(1, 3, figsize=(14, 4.5))
colors = ["steelblue", "tomato"]
markers = ["o", "s"]
class_names = ["Setosa", "Versicolor"]

for ax, (name, clf) in zip(axes, clfs.items()):
    Z = clf.predict(np.c_[xx0.ravel(), xx1.ravel()]).reshape(xx0.shape)
    ax.contourf(xx0, xx1, Z, alpha=0.2, cmap="bwr")
    ax.contour(xx0, xx1, Z, levels=[0.5], colors="k", linewidths=1.8)
    for cls, c, m, lbl in zip([0, 1], colors, markers, class_names):
        mask_cls = y_bin == cls
        ax.scatter(X_bin[mask_cls, 0], X_bin[mask_cls, 1],
                   c=c, marker=m, s=35, alpha=0.8, label=lbl)
    acc = clf.score(X_bin, y_bin)
    ax.set_title(f"{name}\nAccuracy={acc:.4f}", fontsize=9)
    ax.set_xlabel("Petal Length (cm)")
    ax.set_ylabel("Petal Width (cm)")
    ax.legend(fontsize=8, loc="upper left")

fig.suptitle("Exp 2-6  Kernel Comparison — Iris (Setosa vs Versicolor)", fontsize=11)
plt.tight_layout()
plt.savefig(fig_path, dpi=150)
plt.close()

# ---- 输出结果 ----
for name, clf in clfs.items():
    svc = clf.named_steps["svc"]
    acc = clf.score(X_bin, y_bin)
    print(f"{name:25s}  accuracy={acc:.4f}  n_support={svc.n_support_}")
print(f"\nFigure saved to: {fig_path}")
