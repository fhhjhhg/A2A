## 2024-05-24 - [Avoid torch.quantile for large MRI volumes]
**Learning:** torch.quantile throws a RuntimeError due to size limitations for large float32 tensors (>16M elements). Also, np.percentile returns a float64 by default, causing memory/type issues during tensor division if not cast to float().
**Action:** Use float(np.percentile(x, p * 100)) on detached NumPy arrays for large PyTorch tensors, preventing size limit runtime errors and silent type promotions that double memory requirements.
