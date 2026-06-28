## 2024-05-19 - PyTorch Quantile Limitation on Large Tensors
**Learning:** `torch.quantile` can throw a `RuntimeError: quantile() input tensor is too large` when working with very large tensors (like full MRI volumes exceeding 16 million elements in `float32`). Native NumPy `np.percentile` handles this smoothly.
**Action:** Always favor native NumPy operations (`np.percentile`, `np.clip`) when input is a NumPy array, rather than converting to PyTorch to use `torch.quantile` for large volume processing.
