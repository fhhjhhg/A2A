## 2026-10-29 - [Optimization of NumPy to Torch Conversions for Scalar Metrics]
**Learning:** Forcing large PyTorch tensors into NumPy format just to compute a single scalar metric forces a Device-to-Host (D2H) memory transfer, stalling GPU execution. Similarly, forcing NumPy arrays to PyTorch tensors and back incurs overhead.
**Action:** Ensure conditional logic branches exist to process NumPy arrays and PyTorch tensors natively with `np.percentile` and `torch.quantile` respectively.
