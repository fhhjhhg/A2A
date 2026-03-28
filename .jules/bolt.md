## 2024-03-28 - [Throttling UI updates in Jupyter Notebooks]
**Learning:** Continuous `clear_output(wait=True)` and `display()` calls for text streaming cause significant frontend rendering overhead in Jupyter notebooks, which blocks the main thread and makes the UI unresponsive.
**Action:** Always implement a time-based throttling mechanism (e.g., updating every 0.1 seconds using `time.time()`) and a concluding flush operation to optimize this.
