## 2024-06-24 - Parallelized Notebook File Download
**Learning:** Sequential downloading of heavy dataset assets (tarballs) in interactive Jupyter Notebooks constitutes a significant I/O bottleneck that delays user onboarding.
**Action:** Replace `!wget` sequences in Python `for` loops with `concurrent.futures.ThreadPoolExecutor` orchestrating native `subprocess.run` calls. Explicitly wrap executor calls in `list()` or `tqdm(..., as_completed)` to enforce execution and exception propagation in the background threads.
