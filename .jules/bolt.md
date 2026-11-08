## 2024-05-23 - Native operations for NumPy Arrays and PyTorch Tensors
**Learning:** Indiscriminately casting NumPy arrays to PyTorch tensors just to use PyTorch methods introduces unnecessary tensor instantiation overhead. Furthermore, `np.percentile` returns a `numpy.float64` scalar which promotes arrays to `float64` on division, doubling memory consumption.
**Action:** Conditionally branch logic to use native methods such as `np.percentile` for arrays and `torch.quantile` for tensors. Also explicitly cast `np.percentile` results to Python `float` for `float32` arrays.
