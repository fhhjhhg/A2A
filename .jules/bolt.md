## 2024-05-24 - Parallelize I/O bound shell commands in Jupyter
**Learning:** IPython `!` magic inside loops executes sequentially, which is inefficient for I/O-bound tasks like downloading multiple files with `wget`.
**Action:** Use `concurrent.futures.ThreadPoolExecutor` with `subprocess.run` to parallelize I/O-bound shell commands in Jupyter Notebooks.
