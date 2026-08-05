## Performance Insights

### Notebook UI Streaming Optimization
**Issue:** During text streaming loops in Jupyter Notebooks, calling `clear_output(wait=True)` and `display()` on every single chunk severely bottlenecks the frontend rendering, making the process highly inefficient and laggy.
**Optimization:** Rather than rendering on every chunk, we optimized this by accumulating the text chunks in a list (`accumulated_chunks.append(chunk)`) and introducing a time-based throttling mechanism (e.g., using `time.time()`). We only perform the `display()` call if the elapsed time since the last update exceeds a defined interval (e.g., `0.1` seconds) or after the loop finishes.
**Impact:** This reduces the number of UI display rendering calls from thousands (one per chunk) to a manageable rate (roughly 10 per second), practically eliminating frontend rendering overhead without sacrificing the real-time visual streaming effect.
