## 2024-05-06 - [Avoid string concatenation for Jupyter Stream Accumulation]
 **Learning:** In interactive Jupyter Notebooks, continuous `clear_output(wait=True)` and `display()` calls for text streaming cause significant frontend rendering overhead. Repeated string concatenation using `+=` is `O(N^2)` overhead in Python.
 **Action:** To optimize, use a list to accumulate text chunks and implement a time-based throttling mechanism (e.g., updating every 0.1 seconds using `time.time()`) to join the list and update the display, followed by a concluding flush operation to ensure all content is shown. Add `# noqa: PLR2004` to bypass ruff check if hardcoded thresholds like 0.1 are flagged.

## 2024-05-06 - [Avoid JSON Dump Noise in Jupyter Notebooks]
 **Learning:** Programmatic modification using `json.dump` can cause huge format diffs, moving elements like `id` and completely re-arranging metadata.
 **Action:** Instead of loading/dumping json to make updates to `source` array, use precise regexes or targeted text manipulation that parses python string representation to edit in place while iterating via `json.load`, then only rewrite the elements within the `nb["cells"]` using `json.dump` with `indent=2, ensure_ascii=False`. Alternatively, if diffs are large, do targeted text search-and-replace over raw content without `json.load`.

## 2024-05-06 - [Format scripts breaking docs]
 **Learning:** The format scripts in this repository modify files within `docs/` such as aligning table columns.
 **Action:** Remember to undo unrelated changes to documentation if the task does not touch it by running `git restore docs/`.
