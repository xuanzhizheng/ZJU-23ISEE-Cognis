import numpy as np


def Sigmoid(x):
    return 1.0 / (1.0 + np.exp(-x))


def Sigmoid_derivative(x):
    y = Sigmoid(x)
    return y * (1.0 - y)
