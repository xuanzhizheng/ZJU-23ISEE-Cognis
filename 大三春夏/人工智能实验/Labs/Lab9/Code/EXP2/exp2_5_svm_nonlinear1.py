import numpy as np
import matplotlib.pyplot as plt
from pathlib import Path
from sklearn.datasets import make_moons
from sklearn.svm import SVC
from sklearn.pipeline import Pipeline
from sklearn.preprocessing import StandardScaler

# ---- 生成月牙形非线性数据集 ----
np.random.seed(42)
X, y = make_moons(n_samples=200, noise=0.20, random_state=42)

# ---- 线性 SVM（用于对比）----
lin_clf = Pipeline([
    ("scaler", StandardScaler()),
    ("svc", SVC(kernel="linear", C=1.0, random_state=42)),
])
lin_clf.fit(X, y)

# ---- 径向基核（RBF）SVM ----
rbf_clf = Pipeline([
    ("scaler", StandardScaler()),
    ("svc", SVC(kernel="rbf", C=5.0, gamma=0.5, random_state=42)),
])
rbf_clf.fit(X, y)

# ---- 绘制决策边界辅助函数 ----
def plot_decision_boundary(clf, X, y, ax, title):
    x0_min, x0_max = X[:, 0].min() - 0.5, X[:, 0].max() + 0.5
    x1_min, x1_max = X[:, 1].min() - 0.5, X[:, 1].max() + 0.5
    xx0, xx1 = np.meshgrid(np.linspace(x0_min, x0_max, 400),
                           np.linspace(x1_min, x1_max, 400))
    Z = clf.predict(np.c_[xx0.ravel(), xx1.ravel()]).reshape(xx0.shape)
    ax.contourf(xx0, xx1, Z, alpha=0.25, cmap="bwr")
    ax.contour(xx0, xx1, Z, levels=[0.5], colors="k", linewidths=1.8)
    ax.scatter(X[y == 0, 0], X[y == 0, 1], c="steelblue", marker="o",
               s=30, alpha=0.8, label="Class 0")
    ax.scatter(X[y == 1, 0], X[y == 1, 1], c="tomato", marker="s",
               s=30, alpha=0.8, label="Class 1")
    acc = clf.score(X, y)
    ax.set_title(f"{title}\nAccuracy={acc:.4f}")
    ax.set_xlabel("Feature 1")
    ax.set_ylabel("Feature 2")
    ax.legend(loc="upper right", fontsize=8)

# ---- 绘图 ----
fig_path = Path(__file__).resolve().parents[2] / "Lab4实验报告" / "figures" / "Figure_8.png"
fig_path.parent.mkdir(parents=True, exist_ok=True)

fig, axes = plt.subplots(1, 2, figsize=(11, 4.5))
plot_decision_boundary(lin_clf, X, y, axes[0], "Linear SVM (C=1.0)")
plot_decision_boundary(rbf_clf, X, y, axes[1], "RBF SVM (C=5.0, γ=0.5)")
fig.suptitle("Exp 2-5  Nonlinear SVM — make_moons", fontsize=12)
plt.tight_layout()
plt.savefig(fig_path, dpi=150)
plt.close()

# ---- 输出结果 ----
print(f"Linear SVM accuracy : {lin_clf.score(X, y):.4f}")
print(f"RBF SVM accuracy    : {rbf_clf.score(X, y):.4f}")
print(f"Figure saved to     : {fig_path}")
