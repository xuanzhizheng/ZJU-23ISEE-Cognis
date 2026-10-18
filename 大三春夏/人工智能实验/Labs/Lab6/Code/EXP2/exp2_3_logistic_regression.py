import numpy as np
import matplotlib.pyplot as plt
from pathlib import Path
from sklearn import datasets
from sklearn.linear_model import LogisticRegression


# 仅使用花瓣宽度作为特征, 分类目标: 是否为维吉尼亚鸢尾花
iris = datasets.load_iris()
X = iris["data"][:, 3:4]  # petal width (cm)
y = (iris["target"] == 2).astype(int)

model = LogisticRegression(random_state=42)
model.fit(X, y)

# 画出 0~3cm 区间的概率曲线
X_new = np.linspace(0, 3, 600).reshape(-1, 1)
proba = model.predict_proba(X_new)

# 计算决策边界(概率=0.5处)
decision_boundary = float(-model.intercept_[0] / model.coef_[0, 0])

# 对 1.7 和 1.5 做预测
samples = np.array([[1.7], [1.5]])
sample_proba = model.predict_proba(samples)[:, 1]
sample_pred = model.predict(samples)

# 保存图像到实验报告目录
fig_path = Path(__file__).resolve().parents[2] / "Lab3实验报告" / "figures" / "Figure_6.png"
plt.figure(figsize=(7, 4.8))
plt.plot(X_new, proba[:, 1], "r-", linewidth=2, label="P(virginica=1)")
plt.plot(X_new, proba[:, 0], "b--", linewidth=2, label="P(virginica=0)")
plt.axvline(decision_boundary, color="black", linestyle=":", linewidth=1.5,
            label=f"decision boundary={decision_boundary:.3f}")
# 标注两条概率曲线的相交点: (decision_boundary, 0.5)
plt.scatter([decision_boundary], [0.5], c="black", s=28, zorder=6)
plt.annotate(
    f"intersection ({decision_boundary:.3f}, 0.5)",
    xy=(decision_boundary, 0.5),
    xytext=(max(0.15, decision_boundary - 0.45), 0.63),
    ha="right",
    fontsize=9,
    arrowprops={"arrowstyle": "->", "lw": 1, "color": "black"},
    bbox={"boxstyle": "round,pad=0.2", "fc": "white", "ec": "none", "alpha": 0.85},
)
plt.scatter(samples, sample_proba.reshape(-1, 1), c=["red", "red"], s=35, zorder=5)
plt.annotate(
    f"1.7cm: {sample_proba[0]:.3f}",
    xy=(1.7, float(sample_proba[0])),
    xytext=(1.95, min(0.95, float(sample_proba[0]) + 0.14)),
    fontsize=9,
    arrowprops={"arrowstyle": "->", "lw": 1, "color": "black"},
    bbox={"boxstyle": "round,pad=0.2", "fc": "white", "ec": "none", "alpha": 0.85},
)
plt.annotate(
    f"1.5cm: {sample_proba[1]:.3f}",
    xy=(1.5, float(sample_proba[1])),
    xytext=(1.18, max(0.08, float(sample_proba[1]) - 0.18)),
    fontsize=9,
    arrowprops={"arrowstyle": "->", "lw": 1, "color": "black"},
    bbox={"boxstyle": "round,pad=0.2", "fc": "white", "ec": "none", "alpha": 0.85},
)
plt.xlabel("Petal width (cm)")
plt.ylabel("Probability")
plt.ylim(-0.02, 1.02)
plt.title("Exp 2-3 Logistic Regression on Iris")
plt.legend(loc="center right")
plt.tight_layout()
plt.savefig(fig_path, dpi=150)

print(f"Decision boundary (p=0.5): {decision_boundary:.4f} cm")
for x, p, pred in zip(samples.ravel(), sample_proba, sample_pred):
    label = "是" if pred == 1 else "否"
    print(f"petal width={x:.1f} -> P(virginica)={p:.4f}, 预测: {label}维吉尼亚鸢尾花")
print(f"figure saved to: {fig_path}")
