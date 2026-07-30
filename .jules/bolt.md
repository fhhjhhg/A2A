## 2024-05-24 - [Avoid round-trip tensor conversions for numpy arrays]
**Learning:** For functions in this repository that accept both NumPy arrays and PyTorch tensors, using `torch.quantile` on NumPy arrays causes expensive round-trip tensor conversions (`torch.as_tensor(x)` followed by `.numpy()`) and may fail on very large arrays due to `torch.quantile` size limitations for `float32`.
**Action:** Prioritize using native NumPy operations like `np.percentile(x, percentile * 100)` for NumPy inputs to avoid conversion overhead and handle larger data structures efficiently.
