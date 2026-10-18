import numpy as np


def Dropout(y, ratio):
    """Inverted dropout mask used only during training."""
    if ratio < 0.0 or ratio >= 1.0:
        raise ValueError("dropout ratio must be in [0, 1)")

    ym = np.zeros_like(y)
    num = round(y.size * (1.0 - ratio))
    idx = np.random.choice(y.size, num, replace=False)
    ym.flat[idx] = 1.0 / (1.0 - ratio)
    return ym
