## Streaming Optimization in Jupyter Notebooks

When implementing text streaming in Jupyter Notebook interactive widgets using `clear_output(wait=True)` and `display()`, continuous updates for every small text chunk cause severe frontend rendering overhead.

To optimize this, avoid concatenating strings for every chunk (which is $O(N^2)$) and instead:
1. Accumulate chunks into a list using `.append()`.
2. Implement a time-based throttling mechanism (e.g., updating every 0.1 seconds using `time.time()`) to join the list and update the display.
3. Perform a final flush operation outside the loop to ensure the final output is completely displayed.
