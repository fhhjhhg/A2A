## 2024-05-24 - [Optimize Jupyter Notebook Downloads]
**Learning:** Replacing shell-based `!wget` commands with native Python calls like `urllib.request.urlretrieve` in Jupyter Notebook loops significantly improves performance by reducing process overhead for small files.
**Action:** Always prefer native python methods like `urllib` when repeatedly downloading small files in python notebooks.
