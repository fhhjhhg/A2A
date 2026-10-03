## 2024-05-14 - [Replace torch.quantile with np.percentile for large tensors]
**Learning:** `torch.quantile` can fail or bottleneck significantly for tensors with > 16 million elements when running on float32 data. Conversion overhead and type promotion defaults also add latency.
**Action:** Use `np.percentile` directly on NumPy arrays or detached PyTorch tensors to achieve up to ~60% speedup and avoid memory/type errors, but ensure results are explicitly cast to `float` as NumPy returns `float64` by default, which can break PyTorch's downstream expectations.
