## 2024-05-18 - [Parallelize Blocking I/O in Jupyter Notebooks]
**Learning:** Sequential downloading of large tarballs (via `wget | tar` piped in a shell loop using IPython `!`) is a major performance bottleneck for initialization steps in notebooks. IPython magic (`!`) executes commands sequentially and blocks the main thread.
**Action:** Replace IPython magic `!` shell loops with `subprocess.Popen` running inside a `concurrent.futures.ThreadPoolExecutor` to download and extract multiple large tarballs concurrently.
