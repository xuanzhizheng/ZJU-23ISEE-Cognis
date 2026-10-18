import numpy as np

from ReLU import ReLU, ReLU_derivative
from Softmax import Softmax


def DeepReLU(W1, W2, W3, W4, X, D, alpha=0.01):
    """One SGD epoch for a 25-20-20-20-5 deep ReLU network."""
    n_samples = X.shape[2]
    order = np.random.permutation(n_samples)

    for k in order:
        x = np.reshape(X[:, :, k], (25, 1))

        v1 = W1 @ x
        y1 = ReLU(v1)
        v2 = W2 @ y1
        y2 = ReLU(v2)
        v3 = W3 @ y2
        y3 = ReLU(v3)
        v = W4 @ y3
        y = Softmax(v)

        d = D[k, :].reshape(5, 1)
        e = d - y
        delta = e

        e3 = W4.T @ delta
        delta3 = ReLU_derivative(v3) * e3
        e2 = W3.T @ delta3
        delta2 = ReLU_derivative(v2) * e2
        e1 = W2.T @ delta2
        delta1 = ReLU_derivative(v1) * e1

        dW4 = alpha * delta @ y3.T
        dW3 = alpha * delta3 @ y2.T
        dW2 = alpha * delta2 @ y1.T
        dW1 = alpha * delta1 @ x.T

        W4 = W4 + dW4
        W3 = W3 + dW3
        W2 = W2 + dW2
        W1 = W1 + dW1

    return W1, W2, W3, W4

