
## 2024-05-19 - Throttling Frontend Rendering in Jupyter Notebooks
**Learning:** Continuous calls to `clear_output(wait=True)` and `display()` inside loops for streaming text generation creates immense frontend rendering overhead in Jupyter Notebooks. Using `.join()` on lists per token also adds $O(N^2)$ string building overhead in CPython.
**Action:** Throttling the rendering updates (e.g., using `time.time() - last_update_time > 0.1`) drastically reduces notebook frontend freezing while still providing real-time feedback. Strings should be accumulated in a list and only `.join()`'ed when displaying. After the loop, a final flush operation is necessary to ensure the last chunk is rendered.
