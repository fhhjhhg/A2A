## 2024-08-03 - [Optimize get_scaled_image quantile]
**Learning:** For functions accepting both NumPy arrays and PyTorch tensors, always prioritize using native NumPy operations for NumPy inputs to avoid expensive round-trip tensor conversions. Additionally, `torch.quantile` has size limitations for float32 tensors which can cause RuntimeErrors on large MRI volumes, whereas `np.percentile` handles them fine.
**Action:** Use `np.percentile(x, percentile * 100)` for numpy arrays instead of casting to PyTorch and using `torch.quantile(x, percentile)`.
