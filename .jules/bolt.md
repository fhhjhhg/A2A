## 2024-05-28 - Parallelizing I/O-bound Jupyter Shell Commands
**Learning:** IPython `!` magic executing sequentially in loops for heavily I/O-bound tasks (like dataset downloads) creates a huge performance bottleneck. `!wget` is not thread-safe.
**Action:** Use `ThreadPoolExecutor` with `subprocess.run` to parallelize these shell commands. Crucially, when using `executor.map()`, ensure the generator is consumed (e.g. by wrapping it in `list()`) so that background exceptions don't get silently swallowed.
