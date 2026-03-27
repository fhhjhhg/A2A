
## 2024-03-27 - [Jupyter Notebook Streaming Rendering Performance]
**Learning:** In interactive Jupyter Notebooks using `clear_output(wait=True)` and `display()` on every tiny text chunk (like in streaming LLM responses) causes significant frontend rendering overhead and flickering.
**Action:** Always implement a time-based throttling mechanism (e.g., updating every 0.1 seconds using `time.time()`) and ensure a final complete flush operation after the loop ends when continuously updating notebook output.
