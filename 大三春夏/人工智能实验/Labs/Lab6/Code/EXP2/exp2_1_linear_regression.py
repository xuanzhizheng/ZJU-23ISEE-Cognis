import numpy as np
import matplotlib.pyplot as plt

# 生成随机数据: 100个 x∈[0,2], y = 4 + 3x + 噪声
X = 2 * np.random.rand(100, 1)
y = 4 + 3 * X + np.random.randn(100, 1)

# 标准方程求解: θ = (X^T X)^{-1} X^T y
X_b = np.c_[np.ones((100, 1)), X]
theta = np.linalg.inv(X_b.T @ X_b) @ X_b.T @ y
print(f"theta = {theta.ravel()}")

# 预测 x=0, x=2
X_new = np.array([[0], [2]])
X_new_b = np.c_[np.ones((2, 1)), X_new]
y_pred = X_new_b @ theta
print(f"x=0 -> y={y_pred[0, 0]:.4f},  x=2 -> y={y_pred[1, 0]:.4f}")

# 可视化
plt.plot(X, y, "b.", label="Data")
plt.plot(X_new, y_pred, "r-", label="Prediction")
plt.axis([0, 2, 0, 15])
plt.xlabel("$x_1$"); plt.ylabel("$y$")
plt.legend(); plt.title("Linear Regression - Exp 2-1")
plt.show()
