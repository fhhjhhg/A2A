## 2024-05-24 - NumPy Percentile Scalar Type Memory Leak
**Learning:** By default, `np.percentile` returns a `numpy.float64` scalar. When dividing a `float32` array by this scalar, NumPy silently promotes the entire array to `float64`, doubling memory consumption, which is especially problematic for large 3D medical volumes.
**Action:** Always explicitly cast the result of `np.percentile` (or similar scalar-returning NumPy functions) to a standard Python `float` (e.g., `float(np.percentile(...))`) before using it in arithmetic operations with `float32` arrays to prevent silent upcasting.
