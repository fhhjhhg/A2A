## 2024-05-14 - Parallelizing I/O in Jupyter Notebooks
**Learning:** Parallelizing I/O-bound shell commands (e.g., wget) in Jupyter Notebooks should use ThreadPoolExecutor with subprocess.run instead of IPython ! magic, which is not thread-safe and executes sequentially in loops.
**Action:** Use ThreadPoolExecutor with subprocess.run to speed up large network operations, ensuring generator consumption (e.g., list(executor.map(...))) to catch exceptions from background threads immediately.
