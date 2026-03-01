
## 2026-03-01 - Native Python downloads vs !wget in Jupyter Notebooks
**Learning:** In Jupyter Notebooks, using shell commands like `!wget` inside loops incurs significant performance overhead because a new subshell process is spawned for every iteration. While negligible for a single large file, this overhead accumulates when downloading many small files (like metadata or annotation JSONs).
**Action:** Replace shell-based `!wget` loops with native Python solutions like `urllib.request.urlretrieve`. However, retain `!wget` for large individual files (like tarballs) where its built-in features (progress bars, resuming, `-c` flag) are more valuable than the subshell overhead.
