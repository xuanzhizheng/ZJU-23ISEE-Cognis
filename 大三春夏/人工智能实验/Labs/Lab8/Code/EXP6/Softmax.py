import numpy as np


def Softmax(x):
    x = np.subtract(x, np.max(x))
    ex = np.exp(x)
    return ex / np.sum(ex)

