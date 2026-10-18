import numpy as np


def ReLU(x):
    return np.maximum(0.0, x)


def ReLU_derivative(x):
    return (x > 0.0).astype(float)

