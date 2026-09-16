## 2025-02-28 - [PyTorch Tensor Chunking & tqdm Overhead]
**Learning:** In PyTorch, calling `unsqueeze()` inside a chunking loop allocates new tensor views repeatedly per chunk, causing overhead. Additionally, using `tqdm(..., disable=True)` does not completely remove its baseline iteration overhead in performance-critical loops.
**Action:** Always hoist element-wise operations like `unsqueeze()` outside of chunking/splitting loops. Conditionally wrap iterables in `tqdm()` (e.g., `if pbar: chunks = tqdm(chunks)`) rather than relying on `disable=True`.
