## 2024-06-25 - Jupyter Notebook Process Creation Overhead
**Learning:** Shell magics (`!`) in Jupyter notebooks incur significant overhead due to subprocess creation. Using `!wget` inside a Python loop to fetch many small files is notably slower than using Python's native `urllib.request`.
**Action:** When making many quick network requests inside notebooks, use `urllib.request` or `requests` rather than spawning external processes like `!wget` or `!curl`. Keep `!wget` for large, single-file downloads where its progress bars or retry logic are valuable and the process overhead is amortized.
