import numpy as np
from Sigmoid import Sigmoid

def DeltaBatch(W, X, D, alpha=0.1):
    N = 4  # 训练数据个数
    dW = np.zeros_like(W)
    for k in range(N):
        x = X[k, :].T
        d = D[k]
        v = (W @ x)[0]
        y = Sigmoid(v)
        e = d - y
        dW[0][0] += alpha * e * y * (1 - y) * x[0]
        dW[0][1] += alpha * e * y * (1 - y) * x[1]
        dW[0][2] += alpha * e * y * (1 - y) * x[2]
    W = W + dW / N  # 除以N取平均，与SGD的alpha保持公平可比
    return W
