## 2024-05-24 - [Avoid round-trip PyTorch-NumPy tensor conversions on quantiles]
**Learning:** `torch.quantile` can throw a `RuntimeError` on large data structures (like full MRI volumes > 16 million elements in `float32`) and forces an expensive round-trip conversion when passed a NumPy array.
**Action:** When a function accepts both NumPy arrays and PyTorch tensors, prioritize using native NumPy operations (e.g. `np.percentile`) for NumPy inputs to avoid conversion overhead and handle larger data structures efficiently.
