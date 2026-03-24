## 2024-05-18 - Native Numpy optimization
**Learning:** Converting numpy arrays to PyTorch tensors and back just for simple operations like `quantile`, division, and `clip` is incredibly slow (~8x slower) due to expensive round-trip conversions and overhead.
**Action:** When working with functions that accept both `np.ndarray` and `torch.Tensor` (e.g., in Jupyter Notebook utility functions), preserve the original array type and perform operations natively in Numpy for Numpy inputs instead of casting everything to Torch tensors first.
