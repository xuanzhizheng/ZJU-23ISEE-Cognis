"""
实验1：SVM 非线性分类 —— 多项式特征 + LinearSVC
使用 make_moons 数据集，通过 Pipeline 结合 PolynomialFeatures、StandardScaler、LinearSVC
对非线性数据进行分类，讨论不同多项式阶数和 C 值的影响。
"""
import numpy as np
import matplotlib.pyplot as plt
import warnings
from pathlib import Path
from sklearn.datasets import make_moons
from sklearn.pipeline import Pipeline
from sklearn.preprocessing import StandardScaler, PolynomialFeatures
from sklearn.svm import LinearSVC
from sklearn.model_selection import train_test_split
from sklearn.metrics import classification_report, confusion_matrix
from sklearn.exceptions import ConvergenceWarning

warnings.filterwarnings("ignore", category=ConvergenceWarning)

# ── 0. 路径设置 ──────────────────────────────────────────────────────────────
FIG_DIR = Path(__file__).resolve().parents[2] / "Lab4实验报告" / "figures"
FIG_DIR.mkdir(parents=True, exist_ok=True)

# ── 1. 生成数据集 ─────────────────────────────────────────────────────────────
np.random.seed(42)
X, y = make_moons(n_samples=200, noise=0.15, random_state=42)
X_train, X_test, y_train, y_test = train_test_split(
    X, y, test_size=0.25, random_state=42   # 50 test samples → step 0.02
)

print("=" * 60)
print(f"训练集大小: {X_train.shape[0]}  测试集大小: {X_test.shape[0]}")
print("=" * 60)

# ── 2. 辅助函数：绘制决策边界 ──────────────────────────────────────────────────
def plot_decision_boundary(clf, X_tr, y_tr, X_te, y_te, ax, title):
    x0_min, x0_max = X[:, 0].min() - 0.5, X[:, 0].max() + 0.5
    x1_min, x1_max = X[:, 1].min() - 0.5, X[:, 1].max() + 0.5
    xx0, xx1 = np.meshgrid(np.linspace(x0_min, x0_max, 400),
                           np.linspace(x1_min, x1_max, 400))
    Z = clf.predict(np.c_[xx0.ravel(), xx1.ravel()]).reshape(xx0.shape)
    ax.contourf(xx0, xx1, Z, alpha=0.20, cmap="bwr")
    ax.contour(xx0, xx1, Z, levels=[0.5], colors="k", linewidths=1.5)

    # 训练点
    ax.scatter(X_tr[y_tr == 0, 0], X_tr[y_tr == 0, 1],
               c="steelblue", marker="o", s=40, alpha=0.9,
               edgecolors="k", linewidths=0.4, label="Train cls-0")
    ax.scatter(X_tr[y_tr == 1, 0], X_tr[y_tr == 1, 1],
               c="tomato",    marker="o", s=40, alpha=0.9,
               edgecolors="k", linewidths=0.4, label="Train cls-1")
    # 测试点（★标记）
    ax.scatter(X_te[y_te == 0, 0], X_te[y_te == 0, 1],
               c="steelblue", marker="*", s=120, alpha=1.0,
               edgecolors="navy", linewidths=0.6, label="Test cls-0")
    ax.scatter(X_te[y_te == 1, 0], X_te[y_te == 1, 1],
               c="tomato",    marker="*", s=120, alpha=1.0,
               edgecolors="darkred", linewidths=0.6, label="Test cls-1")

    tr_acc = clf.score(X_tr, y_tr)
    te_acc = clf.score(X_te, y_te)
    ax.set_title(f"{title}\nTrain={tr_acc:.3f}  Test={te_acc:.3f}", fontsize=9)
    ax.set_xlabel("$x_1$")
    ax.set_ylabel("$x_2$")
    ax.legend(fontsize=6.5, loc="upper right")

# ── 3. 实验 A：不同多项式阶数（C=1 固定）──────────────────────────────────────
degrees = [2, 3, 8]
fig_a, axes_a = plt.subplots(1, 3, figsize=(14, 4.5))

print("\n【实验A】不同多项式阶数 (C=1)")
print(f"{'Degree':>8}  {'Train Acc':>10}  {'Test Acc':>10}")
print("-" * 35)

for ax, deg in zip(axes_a, degrees):
    clf = Pipeline([
        ("poly_features", PolynomialFeatures(degree=deg)),
        ("scaler",        StandardScaler()),
        ("svm_clf",       LinearSVC(C=1, loss="hinge", max_iter=50000, random_state=42)),
    ])
    clf.fit(X_train, y_train)
    tr_acc = clf.score(X_train, y_train)
    te_acc = clf.score(X_test,  y_test)
    print(f"{deg:>8}  {tr_acc:>10.4f}  {te_acc:>10.4f}")
    plot_decision_boundary(clf, X_train, y_train, X_test, y_test,
                           ax, f"Degree={deg}, C=1")

fig_a.suptitle("SVM Nonlinear Classification — Polynomial Degree Comparison (C=1)", fontsize=12)
plt.tight_layout()
fig_a_path = FIG_DIR / "svm_poly_degree.png"
plt.savefig(fig_a_path, dpi=150, bbox_inches="tight")
plt.close()
print(f"\n图片已保存: {fig_a_path}")

# ── 4. 实验 B：不同 C 值（degree=3 固定）──────────────────────────────────────
C_values = [1, 10, 100]
fig_b, axes_b = plt.subplots(1, 3, figsize=(14, 4.5))

print("\n【实验B】不同 C 值 (degree=3)")
print(f"{'C':>8}  {'Train Acc':>10}  {'Test Acc':>10}")
print("-" * 35)

for ax, C in zip(axes_b, C_values):
    clf = Pipeline([
        ("poly_features", PolynomialFeatures(degree=3)),
        ("scaler",        StandardScaler()),
        ("svm_clf",       LinearSVC(C=C, loss="hinge", max_iter=10000, random_state=42)),
    ])
    clf.fit(X_train, y_train)
    tr_acc = clf.score(X_train, y_train)
    te_acc = clf.score(X_test,  y_test)
    print(f"{C:>8}  {tr_acc:>10.4f}  {te_acc:>10.4f}")
    plot_decision_boundary(clf, X_train, y_train, X_test, y_test,
                           ax, f"Degree=3, C={C}")

fig_b.suptitle("SVM Nonlinear Classification — Regularization C Comparison (Degree=3)", fontsize=12)
plt.tight_layout()
fig_b_path = FIG_DIR / "svm_poly_C.png"
plt.savefig(fig_b_path, dpi=150, bbox_inches="tight")
plt.close()
print(f"图片已保存: {fig_b_path}")

# ── 5. 可视化训练数据与测试数据 ──────────────────────────────────────────────
fig_data, ax_data = plt.subplots(figsize=(6, 4.5))
ax_data.scatter(X_train[y_train == 0, 0], X_train[y_train == 0, 1],
                c="steelblue", marker="o", s=50, alpha=0.85,
                edgecolors="k", linewidths=0.4, label="Train cls-0")
ax_data.scatter(X_train[y_train == 1, 0], X_train[y_train == 1, 1],
                c="tomato", marker="o", s=50, alpha=0.85,
                edgecolors="k", linewidths=0.4, label="Train cls-1")
ax_data.scatter(X_test[y_test == 0, 0], X_test[y_test == 0, 1],
                c="steelblue", marker="*", s=150, alpha=1.0,
                edgecolors="navy", linewidths=0.6, label="Test cls-0")
ax_data.scatter(X_test[y_test == 1, 0], X_test[y_test == 1, 1],
                c="tomato", marker="*", s=150, alpha=1.0,
                edgecolors="darkred", linewidths=0.6, label="Test cls-1")
ax_data.set_title("make_moons Dataset  (train: circles,  test: stars)")
ax_data.set_xlabel("$x_1$")
ax_data.set_ylabel("$x_2$")
ax_data.legend(fontsize=9)
plt.tight_layout()
fig_data_path = FIG_DIR / "svm_poly_data.png"
plt.savefig(fig_data_path, dpi=150, bbox_inches="tight")
plt.close()
print(f"图片已保存: {fig_data_path}")

# ── 6. 测试集详细报告（degree=3, C=10 为示例最优模型）──────────────────────────
print("\n【最优模型详细报告】degree=3, C=10")
best_clf = Pipeline([
    ("poly_features", PolynomialFeatures(degree=3)),
    ("scaler",        StandardScaler()),
    ("svm_clf",       LinearSVC(C=10, loss="hinge", max_iter=10000, random_state=42)),
])
best_clf.fit(X_train, y_train)
y_pred = best_clf.predict(X_test)
print(classification_report(y_test, y_pred))
print("混淆矩阵:")
print(confusion_matrix(y_test, y_pred))
