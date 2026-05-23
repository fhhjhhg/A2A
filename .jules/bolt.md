## 2025-11-02 - Notebook Output Streaming Bottleneck
**Learning:** Continuous `clear_output(wait=True)` and `display()` calls for text streaming in Jupyter Notebooks cause significant frontend rendering overhead and slow down output generation. Repeated string concatenation (`+=`) in a loop is also $O(N^2)$ and slower in CPython.
**Action:** Use a list to accumulate text chunks and implement time-based throttling (e.g., `time.time()`, updating every 0.1 seconds) to join and display the list. Follow up with a final flush operation to show all content.
