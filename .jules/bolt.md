## 2024-05-19 - Parallelizing I/O Bound Tasks in Jupyter Notebooks
**Learning:** Sequential shell commands (e.g. `!wget`) in Jupyter notebooks for downloading large datasets are highly inefficient. `!wget` is not thread-safe.
**Action:** Use `concurrent.futures.ThreadPoolExecutor` along with `subprocess.run` to parallelize I/O bound downloads and unzips in Jupyter Notebooks, ensuring to consume the generator using `list()` so that exceptions from background threads are surfaced immediately.
