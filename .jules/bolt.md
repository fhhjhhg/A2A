## 2024-05-17 - Jupyter Notebook Display Update Throttling
**Learning:** In interactive Jupyter Notebooks, continuous `clear_output(wait=True)` and `display()` calls for text streaming cause significant frontend rendering overhead, creating lag or high CPU usage.
**Action:** Always implement a time-based throttling mechanism (e.g., updating every 0.1 seconds using `time.time()`) and ensure a concluding flush operation to optimize this while preserving the appearance of real-time streaming.
