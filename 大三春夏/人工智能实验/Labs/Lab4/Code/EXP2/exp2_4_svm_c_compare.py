import numpy as np
import matplotlib.pyplot as plt
from pathlib import Path
from sklearn import datasets
from sklearn.svm import SVC
from sklearn.preprocessing import StandardScaler
from sklearn.pipeline import Pipeline

# ---- 加载数据集 ----
iris = datasets.load_iris()
X = iris["data"][:, (2, 3)]           # petal length, petal width
y = (iris["target"] == 2).astype(int) # 1: Virginica, 0: others

C_values = [0.5, 1, 15, 30, 50, 100]

fig_path = Path(__file__).resolve().parents[2] / "Lab4实验报告" / "figures" / "Figure_10.png"
fig_path.parent.mkdir(parents=True, exist_ok=True)

# ---- 网格范围（原始特征空间）----
x_min, x_max = X[:, 0].min() - 0.3, X[:, 0].max() + 0.3
y_min, y_max = X[:, 1].min() - 0.3, X[:, 1].max() + 0.3
xx, yy = np.meshgrid(np.linspace(x_min, x_max, 300),
                     np.linspace(y_min, y_max, 300))

fig, axes = plt.subplots(2, 3, figsize=(15, 9))
axes = axes.ravel()

print(f"{'C':>6}  {'Accuracy':>10}  {'Margin':>10}  {'n_sv (0/1)':>14}")
print("-" * 50)

for idx, C in enumerate(C_values):
    svm_clf = Pipeline([
        ("scaler", StandardScaler()),
        ("svc", SVC(kernel="linear", C=C, random_state=42)),
    ])
    svm_clf.fit(X, y)

    scaler = svm_clf.named_steps["scaler"]
    svc    = svm_clf.named_steps["svc"]
    sv_orig = scaler.inverse_transform(svc.support_vectors_)

    acc    = svm_clf.score(X, y)
    w      = svc.coef_[0]
    margin = 2 / np.linalg.norm(w)
    n_sv   = svc.n_support_

    print(f"{C:>6.1f}  {acc:>10.4f}  {margin:>10.4f}  {n_sv[0]:>5} / {n_sv[1]:<5}")

    Z = svm_clf.decision_function(np.c_[xx.ravel(), yy.ravel()]).reshape(xx.shape)

    ax = axes[idx]
    ax.scatter(X[y == 0, 0], X[y == 0, 1], c="steelblue", marker="o",
               s=25, alpha=0.7, label="Non-Virginica")
    ax.scatter(X[y == 1, 0], X[y == 1, 1], c="tomato",    marker="s",
               s=25, alpha=0.7, label="Virginica")
    ax.contour(xx, yy, Z, levels=[-1, 0, 1],
               linestyles=["--", "-", "--"],
               colors=["gray", "black", "gray"],
               linewidths=[1.0, 1.8, 1.0])
    ax.scatter(sv_orig[:, 0], sv_orig[:, 1],
               s=100, facecolors="none", edgecolors="black",
               linewidths=1.5, zorder=5, label=f"SV ({sum(n_sv)})")
    ax.set_title(f"C = {C}   acc={acc:.4f}   margin={margin:.4f}", fontsize=9.5)
    ax.set_xlabel("Petal Length (cm)", fontsize=8)
    ax.set_ylabel("Petal Width (cm)",  fontsize=8)
    if idx == 0:
        ax.legend(fontsize=7, loc="upper left")

plt.suptitle("Linear SVM — Effect of C on Decision Boundary (Iris: Virginica vs Others)",
             fontsize=12)
plt.tight_layout()
plt.savefig(fig_path, dpi=150)
plt.close()
print(f"\nFigure saved → {fig_path}")
