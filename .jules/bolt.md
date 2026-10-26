## 2024-05-24 - Avoid Indiscriminate PyTorch Tensor Casting in Utils
**Learning:** Indiscriminately casting NumPy arrays to PyTorch tensors (e.g., `torch.as_tensor`) just to use a PyTorch-specific method introduces unnecessary tensor instantiation overhead and potential Device-to-Host (D2H) syncs if not handled correctly.
**Action:** In utility functions handling both NumPy arrays and PyTorch tensors, conditionally branch the logic to use native methods (e.g., `np.percentile` for arrays, `torch.quantile` for tensors) to prevent implicit conversions and avoid overhead.
