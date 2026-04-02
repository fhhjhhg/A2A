## 2024-05-24 - Rate-Limiting Output in Jupyter Notebooks
**Learning:** Continuous `clear_output(wait=True)` and `display()` calls for text streaming cause significant frontend rendering overhead.
**Action:** Always implement a time-based throttling mechanism (e.g., updating every 0.1 seconds using `time.time()`) and a concluding flush operation to optimize this.
