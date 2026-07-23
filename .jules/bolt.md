## 2024-05-24 - Parallelizing blocking I/O in Jupyter Notebooks
**Learning:** Sequential `!wget` commands in Jupyter loops cause significant bottlenecks for multi-file downloads (e.g., datasets), but native IPython magic isn't thread-safe.
**Action:** Use `ThreadPoolExecutor` with `subprocess.Popen` to chain and parallelize `wget` and `tar` commands, iterating over `concurrent.futures.as_completed` for progress tracking and explicitly calling `.wait()` on upstream processes to prevent race conditions.
