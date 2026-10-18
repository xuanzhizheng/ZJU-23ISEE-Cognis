import numpy as np
import matplotlib.pyplot as plt
from pathlib import Path
from sklearn.datasets import make_moons
from sklearn.svm import SVC
from sklearn.pipeline import Pipeline
from sklearn.preprocessing import StandardScaler

# ---- 图片保存路径 ----
fig_dir = Path(__file__).resolve().parents[2] / "Lab5实验报告" / "figures"
fig_dir.mkdir(parents=True, exist_ok=True)

# ---- ① 产生非线性数据集（make_moons）----
np.random.seed(42)
X, y = make_moons(n_samples=100, noise=0.15, random_state=42)

# ---- 决策边界绘制辅助函数 ----
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
    ax.set_title(f"{title}\nAcc={acc:.4f}")
    ax.set_xlabel("Feature 1")
    ax.set_ylabel("Feature 2")
    ax.legend(loc="upper right", fontsize=7)


# ==================================================================
# ---- ② 讨论 C=1, 10, 100（多项式核，degree=3）----
# ==================================================================
print("=" * 55)
print("多项式核 SVM (degree=3) — 不同 C 值")
print("=" * 55)

C_values = [1, 10, 100]
fig1, axes1 = plt.subplots(1, 3, figsize=(14, 4.5))

for ax, C in zip(axes1, C_values):
    # ② 利用 Pipeline 构建非线性分类器（多项式核）
    # ③ Pipeline 中含 StandardScaler 标准化数据
    # ④ Pipeline 中含 SVC 构建非线性分类
    polynomial_kernel_svm_clf = Pipeline([
        ("scaler", StandardScaler()),               # ③ 标准化
        ("svm_clf", SVC(kernel="poly", degree=3,    # ④ 多项式核 SVC
                        coef0=1, C=C, random_state=42)),
    ])
    # ⑤ 训练模型
    polynomial_kernel_svm_clf.fit(X, y)
    acc = polynomial_kernel_svm_clf.score(X, y)
    print(f"  C={C:4d}   accuracy={acc:.4f}")

    # ⑦ 测试数据（示例预测）
    test_pts = np.array([[0.0, 0.0], [1.0, 0.5], [-0.5, -0.3]])
    preds = polynomial_kernel_svm_clf.predict(test_pts)
    print(f"         test_pts predict: {preds}")

    # ⑥ 可视化训练数据 / 决策边界
    plot_decision_boundary(polynomial_kernel_svm_clf, X, y, ax,
                           f"Poly(d=3), C={C}")

fig1.suptitle("Exp 2-6  Nonlinear SVM — Polynomial Kernel (degree=3)", fontsize=12)
plt.tight_layout()
fig1_path = fig_dir / "Figure_11.png"
plt.savefig(fig1_path, dpi=150)
plt.close()
print(f"\nFigure saved → {fig1_path}")


# ==================================================================
# ---- ③ 讨论不同多项式阶数（degree=2,3,5,10），固定 C=5 ----
# ==================================================================
print("\n" + "=" * 55)
print("多项式核 SVM (C=5) — 不同 degree")
print("=" * 55)

degrees = [2, 3, 5, 10]
fig2, axes2 = plt.subplots(1, 4, figsize=(18, 4.5))

for ax, deg in zip(axes2, degrees):
    clf = Pipeline([
        ("scaler", StandardScaler()),
        ("svm_clf", SVC(kernel="poly", degree=deg,
                        coef0=1, C=5, random_state=42)),
    ])
    clf.fit(X, y)
    acc = clf.score(X, y)
    print(f"  degree={deg:2d}   accuracy={acc:.4f}")
    plot_decision_boundary(clf, X, y, ax, f"Poly(d={deg}), C=5")

fig2.suptitle("Exp 2-6  Nonlinear SVM — Polynomial Kernel (C=5, varying degree)",
              fontsize=12)
plt.tight_layout()
fig2_path = fig_dir / "Figure_12.png"
plt.savefig(fig2_path, dpi=150)
plt.close()
print(f"\nFigure saved → {fig2_path}")


# ==================================================================
# ---- ④ 尝试不同核函数（linear / poly / rbf / sigmoid）----
# ==================================================================
print("\n" + "=" * 55)
print("不同核函数对比（C=5）")
print("=" * 55)

kernel_configs = {
    "Linear (C=5)":          SVC(kernel="linear", C=5, random_state=42),
    "Poly(d=3, C=5)":        SVC(kernel="poly", degree=3, coef0=1,
                                  C=5, random_state=42),
    "RBF (C=5, γ=0.5)":     SVC(kernel="rbf", C=5, gamma=0.5,
                                  random_state=42),
    "Sigmoid (C=5)":         SVC(kernel="sigmoid", coef0=1, C=5,
                                  random_state=42),
}

fig3, axes3 = plt.subplots(1, 4, figsize=(18, 4.5))

for ax, (name, svc) in zip(axes3, kernel_configs.items()):
    clf = Pipeline([
        ("scaler", StandardScaler()),
        ("svm_clf", svc),
    ])
    clf.fit(X, y)
    acc = clf.score(X, y)
    print(f"  {name:25s}  accuracy={acc:.4f}")
    plot_decision_boundary(clf, X, y, ax, name)

fig3.suptitle("Exp 2-6  Nonlinear SVM — Kernel Comparison (C=5)", fontsize=12)
plt.tight_layout()
fig3_path = fig_dir / "Figure_13.png"
plt.savefig(fig3_path, dpi=150)
plt.close()
print(f"\nFigure saved → {fig3_path}")
