## 2024-05-23 - Parallelizing I/O-Bound IPython Magics
**Learning:** IPython magics like `!wget` execute sequentially in loops and are not thread-safe. This creates a significant bottleneck when downloading large datasets.
**Action:** Use `ThreadPoolExecutor` with `subprocess.run` instead of IPython magics to parallelize I/O-bound shell commands. Ensure to consume returned futures (e.g., using `as_completed()`) to raise exceptions from background threads immediately.
