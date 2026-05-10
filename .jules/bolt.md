
## 2024-05-10 - Parallelizing Shell Commands in Jupyter Notebooks
**Learning:** Sequential execution of shell commands using IPython magics (`!wget ... | tar ...`) inside Python loops is an I/O bottleneck. Since `!` magics aren't thread-safe and block execution, replacing them with a `ThreadPoolExecutor` and `subprocess.run` significantly speeds up network-bound tasks, especially for massive datasets.
**Action:** Identify loops executing network or I/O-bound shell commands in Jupyter notebooks and replace them with parallel Python processing using `concurrent.futures`. Always clear large output cells to keep version history clean.
