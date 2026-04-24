## 2024-05-24 - Throttled streaming in Jupyter UI
**Learning:** Continuous `clear_output(wait=True)` and string concatenation in CPython causes massive frontend rendering bottlenecks and execution overhead for text streaming loops in Jupyter notebooks.
**Action:** When working on Jupyter notebook streaming display loops, append chunks to a list and throttle UI updates based on a timer (e.g. `time.time() - last_update >= 0.1`) before finally calling `"".join(chunks)` to significantly improve rendering performance.
