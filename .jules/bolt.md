## 2026-06-30 - [Jupyter Notebook I/O Parallelization]
**Learning:** Parallelizing I/O-bound shell commands (like `wget` and `tar`) in Jupyter Notebooks is highly effective using `ThreadPoolExecutor`. The IPython `!` magic executes sequentially in loops and isn't thread-safe.
**Action:** When downloading multiple files or datasets in notebooks, replace `!wget` loops with Python's `subprocess` module inside a `ThreadPoolExecutor`. Remember to consume the futures with `as_completed()` and call `.result()` to ensure exceptions are surfaced.
