
## 2026-04-12 - [Throttling clear_output in IPython]
**Learning:** Continuous `clear_output(wait=True)` and `display()` calls for text streaming cause significant frontend rendering overhead in Jupyter notebooks, freezing or lagging the UI.
**Action:** Always implement a time-based throttling mechanism (e.g., updating every 0.1 seconds using `time.time()`) and a concluding flush operation to optimize streaming UI updates.
