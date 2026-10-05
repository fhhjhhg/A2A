## 2024-10-05 - [Optimize Parallel I/O tasks in Notebooks]
**Learning:** Sequential downloading and extraction using `!` IPython magic can bottleneck initialization processes in Jupyter notebooks.
**Action:** Use `ThreadPoolExecutor` and `subprocess` to perform downloads and extractions concurrently when dealing with independent datasets or tarballs to improve initialization speed.
