import numpy as np
import matplotlib.pyplot as plt
from pathlib import Path
from sklearn.preprocessing import PolynomialFeatures
from sklearn.linear_model import LinearRegression


# 生成非线性数据: y = 0.5x^2 + x + 2 + noise
np.random.seed(42)
m = 100
X = 6 * np.random.rand(m, 1) - 3
y = 0.5 * X**2 + X + 2 + np.random.randn(m, 1)

# 二次特征扩展与线性回归拟合
poly = PolynomialFeatures(degree=2, include_bias=False)
X_poly = poly.fit_transform(X)
model = LinearRegression()
model.fit(X_poly, y)

# 在连续区间上预测, 便于可视化拟合曲线
X_plot = np.linspace(-3, 3, 300).reshape(-1, 1)
X_plot_poly = poly.transform(X_plot)
y_plot = model.predict(X_plot_poly)

# 保存图像到实验报告目录
fig_path = Path(__file__).resolve().parents[2] / "Lab3实验报告" / "figures" / "Figure_5.png"
plt.figure(figsize=(7, 4.8))
plt.scatter(X, y, s=18, color="royalblue", alpha=0.85, label="Data")
plt.plot(X_plot, y_plot, color="crimson", linewidth=2.2, label="Polynomial Regression")
plt.xlabel("x")
plt.ylabel("y")
plt.title("Exp 2-2 Polynomial Regression (degree=2)")
plt.legend()
plt.tight_layout()
plt.savefig(fig_path, dpi=150)

# 输出关键结果
coef = model.coef_.ravel()
intercept = model.intercept_.item()
r2 = model.score(X_poly, y)
print(f"X shape: {X.shape}, X_poly shape: {X_poly.shape}")
print(f"model: y = {intercept:.4f} + {coef[0]:.4f}*x + {coef[1]:.4f}*x^2")
print(f"R^2 on training set: {r2:.4f}")
print(f"figure saved to: {fig_path}")
