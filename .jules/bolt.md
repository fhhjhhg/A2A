## 2025-02-18 - Avoid Implicit D2H Syncs via torch.quantile on NumPy Arrays
**Learning:** Forcing PyTorch to compute scalar metrics like quantiles on natively NumPy arrays by indiscriminately casting them to PyTorch tensors causes unnecessary overhead. On GPUs, this forces a synchronous Device-to-Host (D2H) memory transfer, stalling the GPU.
**Action:** When a utility function accepts both PyTorch tensors and NumPy arrays, conditionally branch logic to use native methods (e.g., `np.percentile` for arrays and `torch.quantile` for tensors) instead of unnecessarily casting between the two.
