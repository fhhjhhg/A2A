# Bolt's Critical Learnings Journal


## 2026-06-15 - [Parallelizing Notebook Downloads]
**Learning:** When using `ThreadPoolExecutor` and `tqdm` to parallelize downloads in Jupyter Notebooks, using `executor.map()` returns results in the exact order of task submission. This causes the progress bar to block or jump abruptly if early tasks take longer than later ones. Additionally, `tqdm.notebook` introduces a strict dependency on `ipywidgets`.
**Action:** Use `concurrent.futures.as_completed(futures)` to iterate over tasks as they finish for a smooth progress bar. Use `from tqdm.auto import tqdm` instead of `from tqdm.notebook import tqdm` to gracefully fallback to standard output if `ipywidgets` is missing, preventing crashes in environments without it.
