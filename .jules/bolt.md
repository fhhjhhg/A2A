## 2024-05-04 - [Optimize Text Streaming in Jupyter Notebooks]
 **Learning:** Continuous `clear_output(wait=True)` and `display()` calls for text streaming cause significant frontend rendering overhead. Building strings with `+=` repeatedly can also be slower than accumulating in a list.
 **Action:** Use a list to accumulate text chunks and implement a time-based throttling mechanism (e.g., updating every 0.1 seconds using `time.time()`) to join the list and update the display, followed by a concluding flush operation to ensure all content is shown.
