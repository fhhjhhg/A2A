## 2025-02-28 - [Performance] Native NumPy Quantile for Large Arrays
**Learning:** `torch.quantile` can throw a `RuntimeError` due to size limits for float32 tensors on massive datasets (e.g., 16M+ element MRI volumes). In addition to preventing crashes, using native `np.percentile` directly on NumPy arrays (rather than converting to PyTorch tensors first) is significantly faster due to the avoidance of expensive round-trip tensor conversion overhead and the inherent efficiency of NumPy's operations on its own data structures.

**Action:** Whenever a function accepts both NumPy arrays and PyTorch tensors, handle NumPy arrays using native NumPy functions (like `np.percentile`) rather than converting them to PyTorch tensors.
