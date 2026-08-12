## 2024-05-01 - Parallelize I/O bounds in Jupyter Notebooks
**Learning:** Parallelizing I/O-bound shell commands (like wget, tar) using ThreadPoolExecutor and subprocess.Popen guarantees faster execution than sequential IPython magics. When chaining processes via pipes, calling .wait() on the upstream process is critical to avoid race conditions.
**Action:** Use ThreadPoolExecutor and concurrent.futures.as_completed for progress tracking instead of sequential IPython ! magics.
