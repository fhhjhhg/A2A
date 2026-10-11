## 2024-10-11 - PyTorch tensor conversion overhead for quantile calculations
**Learning:** Forcing large multi-dimensional NumPy arrays (like MRI volumes) into PyTorch tensors just to calculate a quantile scalar using `torch.quantile` introduces significant conversion and processing overhead. Native `np.percentile` is much faster for these arrays.
**Action:** When calculating quantiles on large NumPy arrays, use `np.percentile` instead of `torch.quantile`. Cast the result to a Python `float` to prevent implicit float64 memory promotion during subsequent operations.
