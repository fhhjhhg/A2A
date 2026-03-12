## 2024-05-18 - [Replacing !wget with urllib.request in Jupyter loops]
 **Learning:** Replacing shell-based `!wget` commands with native Python calls like `urllib.request.urlretrieve` in Jupyter Notebook loops significantly improves performance by reducing process overhead for small files.
 **Action:** Prioritize native Python API calls over subshells for operations repeated in a loop when dealing with small objects, while preserving shell usage where subshell features (e.g. `!wget -c` resume capability or pipes) are necessary for larger operations.
