## 2024-05-24 - Throttling Display Updates in Jupyter Notebooks
**Learning:** Continuous `clear_output(wait=True)` and `display()` calls for text streaming cause significant frontend rendering overhead and flickering. $O(N^2)$ string concatenation is also inefficient for large streams.
**Action:** Replace $O(N^2)$ string concatenation with list accumulation and introduce a time-based throttling mechanism (e.g., updating every 0.1 seconds using `time.time()`) when streaming text to Jupyter Notebook displays.
