import numpy as np
from scipy import signal


def Conv(x, W):
    (wrow, wcol, numFilters) = W.shape
    (xrow, xcol) = x.shape

    yrow = xrow - wrow + 1
    ycol = xcol - wcol + 1

    y = np.zeros((yrow, ycol, numFilters))

    for k in range(numFilters):
        filt = W[:, :, k]
        filt = np.rot90(np.squeeze(filt), 2)
        y[:, :, k] = signal.convolve2d(x, filt, "valid")

    return y
