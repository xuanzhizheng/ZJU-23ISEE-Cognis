import numpy as np
from Sigmoid import Sigmoid

def DeltaMiniBatch(W, X, D, alpha=0.1, batch_size=2):
    N = X.shape[0]
    idx = np.random.permutation(N)          # 每epoch随机打乱
    for start in range(0, N, batch_size):
        batch_idx = idx[start:start + batch_size]
        m = len(batch_idx)
        dW = np.zeros_like(W)
        for k in batch_idx:
            x = X[k, :].T
            d = D[k]
            v = (W @ x)[0]
            y = Sigmoid(v)
            e = d - y
            dW[0][0] += alpha * e * y * (1 - y) * x[0]
            dW[0][1] += alpha * e * y * (1 - y) * x[1]
            dW[0][2] += alpha * e * y * (1 - y) * x[2]
        W = W + dW / m                      # mini-batch内取平均
    return W
