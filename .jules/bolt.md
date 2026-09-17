## 2025-01-08 - [Parallelize Notebook Data Downloads]
**Learning:** I/O-bound shell commands (like `wget` and `tar`) executed sequentially via the IPython `!` magic inside Jupyter Notebooks form significant performance bottlenecks, as they do not leverage multithreading.
**Action:** Use Python's `ThreadPoolExecutor` and `subprocess.Popen` with appropriate pipe routing and wait conditions to process multiple I/O bound data downloads in parallel rather than a standard `for` loop with sequential shell invocations.
