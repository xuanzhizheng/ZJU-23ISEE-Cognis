import numpy as np

from Sigmoid import Sigmoid


def Backprop(W1, W2, X, D, alpha=1.0):
    """One SGD epoch for a 3-4-1 sigmoid network."""
    n_samples = X.shape[0]
    order = np.random.permutation(n_samples)

    for k in order:
        x = X[k]
        d = D[k]

        v1 = W1 @ x
        y1 = Sigmoid(v1)
        v2 = (W2 @ y1)[0]
        y = Sigmoid(v2)

        e = d - y
        delta2 = y * (1.0 - y) * e

        delta1 = y1 * (1.0 - y1) * (W2.T @ np.atleast_1d(delta2)).ravel()

        dW1 = alpha * np.outer(delta1, x)
        W1 = W1 + dW1

        dW2 = alpha * delta2 * y1.reshape(1, -1)
        W2 = W2 + dW2

    return W1, W2
