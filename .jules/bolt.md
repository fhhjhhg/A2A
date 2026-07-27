## 2024-05-19 - [Memory-efficient quantile calculations]
**Learning:** `torch.quantile` can throw a `RuntimeError` due to size limitations on `float32` tensors for large inputs (e.g., full MRI volumes > 16 million elements), and requires expensive conversions when starting from numpy arrays.
**Action:** Prioritize using native NumPy operations like `np.percentile` for NumPy inputs to avoid expensive round-trip tensor conversions and to handle larger data structures efficiently.
