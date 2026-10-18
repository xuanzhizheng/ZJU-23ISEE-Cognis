import numpy as np
import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
from pathlib import Path
from sklearn import datasets
from sklearn.svm import SVC
from sklearn.preprocessing import StandardScaler
from sklearn.pipeline import Pipeline

# ---- ① 加载数据集 ----
iris = datasets.load_iris()
X = iris["data"][:, (2, 3)]            # petal length, petal width
y = (iris["target"] == 2).astype(int)  # 1: Virginica, 0: others

# ---- ② 缩放特征 + ③ 训练线性 SVM ----
svm_clf = Pipeline([
    ("scaler", StandardScaler()),
    ("svc", SVC(kernel="linear", C=1.0, random_state=42)),
])
svm_clf.fit(X, y)

scaler = svm_clf.named_steps["scaler"]
svc    = svm_clf.named_steps["svc"]
sv_orig = scaler.inverse_transform(svc.support_vectors_)

# ---- ④ 监测区域：花瓣长度 4~6 cm，花瓣宽度 0.8~2.5 cm ----
pl_vals = np.arange(4.0, 6.1, 0.2)   # 花瓣长度采样点
pw_vals = np.arange(0.8, 2.6, 0.2)   # 花瓣宽度采样点
pl_grid, pw_grid = np.meshgrid(pl_vals, pw_vals)
monitor_pts = np.c_[pl_grid.ravel(), pw_grid.ravel()]

monitor_pred = svm_clf.predict(monitor_pts)
monitor_score = svm_clf.decision_function(monitor_pts)

n_total     = len(monitor_pts)
n_virginica = int(monitor_pred.sum())
n_other     = n_total - n_virginica

print("=" * 55)
print("④ 监测区域分类结果（花瓣长度 4~6，花瓣宽度 0.8~2.5）")
print("=" * 55)
print(f"  监测点总数       : {n_total}")
print(f"  判定为 Virginica  : {n_virginica} 个")
print(f"  判定为 Non-Virginica: {n_other} 个")
print()
print(f"  {'花瓣长度':>8}  {'花瓣宽度':>8}  {'预测类别':>10}  {'决策值':>8}")
print(f"  {'-'*8}  {'-'*8}  {'-'*10}  {'-'*8}")
for pt, pred, score in zip(monitor_pts, monitor_pred, monitor_score):
    label = "Virginica" if pred == 1 else "Non-Virginica"
    print(f"  {pt[0]:>8.1f}  {pt[1]:>8.1f}  {label:>13}  {score:>8.4f}")

# ---- ⑤ 可视化 ----
fig_path = Path(__file__).resolve().parents[2] / "Lab4实验报告" / "figures" / "Figure_7.png"
fig_path.parent.mkdir(parents=True, exist_ok=True)

x_min, x_max = X[:, 0].min() - 0.3, X[:, 0].max() + 0.3
y_min, y_max = X[:, 1].min() - 0.3, X[:, 1].max() + 0.3
xx, yy = np.meshgrid(np.linspace(x_min, x_max, 400),
                     np.linspace(y_min, y_max, 400))
Z = svm_clf.decision_function(np.c_[xx.ravel(), yy.ravel()]).reshape(xx.shape)

plt.figure(figsize=(8, 5.8))

# 训练集散点
plt.scatter(X[y == 0, 0], X[y == 0, 1], c="steelblue", marker="o",
            s=40, alpha=0.7, label="Non-Virginica (y=0)")
plt.scatter(X[y == 1, 0], X[y == 1, 1], c="tomato", marker="s",
            s=40, alpha=0.7, label="Virginica (y=1)")

# 决策面与间隔边界
plt.contour(xx, yy, Z, levels=[-1, 0, 1],
            linestyles=["--", "-", "--"],
            colors=["gray", "black", "gray"],
            linewidths=[1.2, 2.0, 1.2])

# 支持向量
plt.scatter(sv_orig[:, 0], sv_orig[:, 1],
            s=160, facecolors="none", edgecolors="black",
            linewidths=2.0, zorder=5, label=f"Support Vectors ({len(sv_orig)})")

# 监测区域内的预测点
plt.scatter(monitor_pts[monitor_pred == 0, 0], monitor_pts[monitor_pred == 0, 1],
            c="steelblue", marker="x", s=60, linewidths=1.5, zorder=6,
            label=f"Monitor→Non-Vir. ({n_other})")
plt.scatter(monitor_pts[monitor_pred == 1, 0], monitor_pts[monitor_pred == 1, 1],
            c="tomato", marker="x", s=60, linewidths=1.5, zorder=6,
            label=f"Monitor→Virginica ({n_virginica})")

# 监测区域矩形框
rect = mpatches.FancyArrowPatch
rect = mpatches.Rectangle((4.0, 0.8), 2.0, 1.7,
                           linewidth=2, edgecolor="purple",
                           facecolor="none", linestyle="-.",
                           zorder=7, label="Monitor region [4-6, 0.8-2.5]")
plt.gca().add_patch(rect)

plt.xlabel("Petal Length (cm)")
plt.ylabel("Petal Width (cm)")
plt.title("Exp 2-4  Linear SVM — Iris (Virginica vs Others)\n"
          "with Monitor Region: PetalLen∈[4,6], PetalWid∈[0.8,2.5]")
plt.legend(loc="upper left", fontsize=8)
plt.tight_layout()
plt.savefig(fig_path, dpi=150)
plt.close()

# ---- 其他模型信息 ----
acc = svm_clf.score(X, y)
w   = svc.coef_[0]
b   = svc.intercept_[0]
print()
print("=" * 55)
print("模型信息")
print("=" * 55)
print(f"Training accuracy : {acc:.4f}")
print(f"Number of support vectors: {svc.n_support_} (class 0 / class 1)")
print(f"Decision function (scaled): {w[0]:.4f}*x1 + {w[1]:.4f}*x2 + {b:.4f} = 0")
print(f"Margin width (scaled)     : {2 / np.linalg.norm(w):.4f}")
print(f"Figure saved to: {fig_path}")
