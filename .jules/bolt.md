## 2024-04-15 - [Notebook Streaming Performance]
**Learning:** In interactive Jupyter Notebooks, continuous `clear_output(wait=True)` and `display()` calls for text streaming cause significant frontend rendering overhead, slowing down the notebook and potentially crashing the browser.
**Action:** Always implement a time-based throttling mechanism (e.g., updating every 0.1 seconds using `time.time()`) inside the streaming loop and add a concluding flush operation after the loop to optimize rendering overhead while keeping the stream responsive.
