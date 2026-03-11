
## 2024-05-18 - [Reduce subshell overhead in Jupyter Notebooks]
**Learning:** Using `!wget` inside a loop in a Jupyter Notebook incurs significant process creation overhead for each iteration. For small files where network transfer is fast, this subshell overhead becomes the performance bottleneck.
**Action:** Replace `!wget` with native Python network requests like `urllib.request.urlretrieve` when downloading many small files in a loop to improve execution speed. Only retain `!wget` for large files where its progress bars and resume features are beneficial and subshell overhead is negligible.
