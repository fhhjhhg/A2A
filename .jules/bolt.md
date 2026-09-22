## 2024-05-18 - Notebook Download Parallelization
**Learning:**
Using sequential `!wget` magics in Jupyter loops is highly inefficient for multiple files. Additionally, piping `wget` to `tar` using `subprocess.Popen` without redirecting stderr to `subprocess.DEVNULL` can cause deadlock due to OS pipe buffer filling up with progress outputs.
**Action:**
For notebook I/O, replace sequential `!wget` calls with `concurrent.futures.ThreadPoolExecutor` handling `subprocess.run`/`Popen`. Ensure stderr is routed safely to DEVNULL when chaining pipes, and use `concurrent.futures.as_completed` instead of `.map()` for proper progress reporting via `tqdm.auto`.
