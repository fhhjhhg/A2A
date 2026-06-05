## 2024-05-24 - [Avoid Tensor Round-Trips]
**Learning:** Functions accepting both NumPy arrays and PyTorch tensors that convert NumPy inputs to Tensors for computation and back to NumPy incur expensive round-trip conversion overheads.
**Action:** Prioritize native NumPy operations for NumPy inputs to bypass unnecessary tensor conversions and improve performance.
