import numpy as np

from Sigmoid import Sigmoid


def BackPropMmt(W1, W2, X, D, mmt1=None, mmt2=None, alpha=1.0, beta=0.9):
    """One SGD epoch for a 3-4-1 sigmoid network with momentum."""
    if mmt1 is None:
        mmt1 = np.zeros_like(W1)
    if mmt2 is None:
        mmt2 = np.zeros_like(W2)

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
        hidden_error = (W2.T @ np.atleast_1d(delta2)).ravel()
        delta1 = y1 * (1.0 - y1) * hidden_error

        dW2 = alpha * delta2 * y1.reshape(1, -1)
        dW1 = alpha * np.outer(delta1, x)

        mmt2 = beta * mmt2 + dW2
        mmt1 = beta * mmt1 + dW1
        W2 = W2 + mmt2
        W1 = W1 + mmt1

    return W1, W2, mmt1, mmt2
