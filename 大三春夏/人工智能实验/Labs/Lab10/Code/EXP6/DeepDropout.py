import numpy as np

from Dropout import Dropout
from Sigmoid import Sigmoid, Sigmoid_derivative
from Softmax import Softmax


def DeepDropout(W1, W2, W3, W4, X, D, alpha=0.02, ratio=0.1):
    """One SGD epoch for a 25-20-20-20-5 sigmoid network with dropout."""
    n_samples = X.shape[2]
    order = np.random.permutation(n_samples)

    for k in order:
        x = np.reshape(X[:, :, k], (25, 1))

        v1 = W1 @ x
        y1 = Sigmoid(v1)
        m1 = Dropout(y1, ratio)
        y1_drop = y1 * m1

        v2 = W2 @ y1_drop
        y2 = Sigmoid(v2)
        m2 = Dropout(y2, ratio)
        y2_drop = y2 * m2

        v3 = W3 @ y2_drop
        y3 = Sigmoid(v3)
        m3 = Dropout(y3, ratio)
        y3_drop = y3 * m3

        v = W4 @ y3_drop
        y = Softmax(v)

        d = D[k, :].reshape(5, 1)
        e = d - y
        delta = e

        e3 = W4.T @ delta
        delta3 = Sigmoid_derivative(v3) * m3 * e3
        e2 = W3.T @ delta3
        delta2 = Sigmoid_derivative(v2) * m2 * e2
        e1 = W2.T @ delta2
        delta1 = Sigmoid_derivative(v1) * m1 * e1

        dW4 = alpha * delta @ y3_drop.T
        dW3 = alpha * delta3 @ y2_drop.T
        dW2 = alpha * delta2 @ y1_drop.T
        dW1 = alpha * delta1 @ x.T

        W4 = W4 + dW4
        W3 = W3 + dW3
        W2 = W2 + dW2
        W1 = W1 + dW1

    return W1, W2, W3, W4
