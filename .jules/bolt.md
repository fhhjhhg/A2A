## 2024-05-30 - [Parallelize Multiple Dataset Downloads]
**Learning:** Sequential multiple file downloads using IPython `!wget` in a loop are inefficient because they leave network bandwidth underutilized.
**Action:** Use `ThreadPoolExecutor` and `subprocess.Popen` chaining to download and extract multiple datasets concurrently. Always consume futures (e.g. `future.result()`) to ensure exceptions are propagated.
