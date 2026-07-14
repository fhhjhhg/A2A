## 2024-10-24 - [Throttled Streaming Rendering]
**Learning:** Continuous `clear_output(wait=True)` and `display()` calls for text streaming in Jupyter Notebooks cause significant frontend rendering overhead, which can lock up the browser UI. Also, using string concatenation `+=` in the loop is O(N^2).
**Action:** For iterative streaming in notebooks, use a list to accumulate chunks (`chunks.append()`) and apply a time-based throttling mechanism (e.g., updating every 0.1 seconds via `time.time()`) to join and display the list. Always include a final flush operation.
