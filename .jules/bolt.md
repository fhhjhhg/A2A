## 2026-07-06 - [NumPy vs PyTorch Conversions]
 **Learning:** [Converting NumPy arrays to PyTorch tensors for operations like torch.quantile has overhead. Using native NumPy operations for NumPy arrays avoids this expensive round-trip conversion and also avoids torch.quantile's float32 size limitations for large arrays.]
 **Action:** [When functions accept both NumPy arrays and PyTorch tensors, prioritize using native NumPy operations (e.g., np.percentile, np.clip) for NumPy inputs instead of converting them to tensors.]
