## 2024-05-24 - [Parallelize IPython Shell Commands]
**Learning:** In Jupyter Notebooks, IPython `!` magic executes shell commands (like `wget` and `tar`) sequentially in a loop, which blocks the main thread and creates an I/O bottleneck. Furthermore, it is not thread-safe.
**Action:** Use `concurrent.futures.ThreadPoolExecutor` with `subprocess.Popen` (routing stderr/stdout properly to avoid deadlocks) to parallelize I/O-bound shell commands across multiple threads instead of relying on `!` magic.
