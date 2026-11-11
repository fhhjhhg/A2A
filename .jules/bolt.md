## 2024-05-24 - Prevent silent float64 upcasting with NumPy percentiles
**Learning:** By default, `np.percentile` returns a `numpy.float64` scalar. When dividing a `float32` array by this scalar, NumPy silently promotes the entire array to `float64`, doubling memory consumption.
**Action:** Always explicitly cast the result of `np.percentile` to a standard Python `float` (e.g., `float(np.percentile(...))`) before using it in mathematical operations with NumPy arrays.
