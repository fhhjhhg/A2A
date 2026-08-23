## 2024-05-24 - Parallelizing blocking shell commands in Jupyter Notebooks
**Learning:** Using IPython `!` magics (e.g., `!wget`) in loops executes sequentially, blocking the main thread and creating significant I/O bottlenecks when downloading multiple large files. The `!` magic is not thread-safe and cannot be easily parallelized within Python natively.
**Action:** Replace sequential `!` shell commands with `subprocess.run` inside a `ThreadPoolExecutor`. When using futures, iterate over `concurrent.futures.as_completed` and explicitly call `.result()` to raise exceptions properly.
