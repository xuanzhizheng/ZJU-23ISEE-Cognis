import numpy as np
from Sigmoid import Sigmoid

def DeltaSGD(W, X, D, alpha=0.1):
    N = 4  # 训练数据个数
    idx = np.random.permutation(N)  # 每epoch随机打乱样本顺序
    for k in idx:
        x = X[k, :].T
        d = D[k]
        v = (W @ x)[0]
        y = Sigmoid(v)
        e = d - y
        W[0][0] = W[0][0] + alpha * e * y * (1 - y) * x[0]
        W[0][1] = W[0][1] + alpha * e * y * (1 - y) * x[1]
        W[0][2] = W[0][2] + alpha * e * y * (1 - y) * x[2]
    return W
