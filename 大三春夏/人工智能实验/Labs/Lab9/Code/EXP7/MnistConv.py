import numpy as np
from scipy import signal

from Conv import Conv
from Pool import Pool


def ReLU(x):
    return np.maximum(0.0, x)


def Softmax(x):
    x = x - np.max(x)
    ex = np.exp(x)
    return ex / np.sum(ex)


def MnistConv(
    W1,
    W5,
    Wo,
    X,
    D,
    epochs=10,
    alpha=0.01,
    beta=0.95,
    bsize=10,
    seed=123,
    X_test=None,
    D_test=None,
):
    momentum1 = np.zeros_like(W1)
    momentum5 = np.zeros_like(W5)
    momentumo = np.zeros_like(Wo)

    N = len(D)
    rng = np.random.default_rng(seed)
    train_history = []
    test_history = []

    for _ in range(epochs):
        order = rng.permutation(N)

        for begin in range(0, N, bsize):
            batch_idx = order[begin : begin + bsize]
            dW1 = np.zeros_like(W1)
            dW5 = np.zeros_like(W5)
            dWo = np.zeros_like(Wo)

            for k in batch_idx:
                x = X[k, :, :]
                y1 = Conv(x, W1)
                y2 = ReLU(y1)
                y3 = Pool(y2)
                y4 = np.reshape(y3, (-1, 1))
                v5 = np.matmul(W5, y4)
                y5 = ReLU(v5)
                v = np.matmul(Wo, y5)
                y = Softmax(v)

                d = np.zeros((10, 1))
                d[int(D[k][0])][0] = 1.0

                e = d - y
                delta = e
                e5 = np.matmul(Wo.T, delta)
                delta5 = (y5 > 0) * e5
                e4 = np.matmul(W5.T, delta5)
                e3 = np.reshape(e4, y3.shape)

                e2 = np.repeat(np.repeat(e3, 2, axis=0), 2, axis=1) / 4.0
                delta2 = (y2 > 0) * e2

                delta1_x = np.zeros_like(W1)
                for c in range(W1.shape[2]):
                    delta1_x[:, :, c] = signal.convolve2d(
                        x,
                        np.rot90(delta2[:, :, c], 2),
                        "valid",
                    )

                dW1 = dW1 + delta1_x
                dW5 = dW5 + np.matmul(delta5, y4.T)
                dWo = dWo + np.matmul(delta, y5.T)

            scale = float(len(batch_idx))
            dW1 = dW1 / scale
            dW5 = dW5 / scale
            dWo = dWo / scale

            momentum1 = alpha * dW1 + beta * momentum1
            W1 = W1 + momentum1

            momentum5 = alpha * dW5 + beta * momentum5
            W5 = W5 + momentum5

            momentumo = alpha * dWo + beta * momentumo
            Wo = Wo + momentumo

        train_pred, _ = Predict(W1, W5, Wo, X)
        train_history.append(float(np.mean(train_pred == D.reshape(-1))))

        if X_test is not None and D_test is not None:
            test_pred, _ = Predict(W1, W5, Wo, X_test)
            test_history.append(float(np.mean(test_pred == D_test.reshape(-1))))

    return W1, W5, Wo, np.array(train_history), np.array(test_history)


def Predict(W1, W5, Wo, X):
    labels = []
    probs = []

    for k in range(len(X)):
        x = X[k, :, :]
        y1 = Conv(x, W1)
        y2 = ReLU(y1)
        y3 = Pool(y2)
        y4 = np.reshape(y3, (-1, 1))
        y5 = ReLU(np.matmul(W5, y4))
        y = Softmax(np.matmul(Wo, y5))
        labels.append(int(np.argmax(y)))
        probs.append(y.reshape(-1))

    return np.array(labels), np.array(probs)
