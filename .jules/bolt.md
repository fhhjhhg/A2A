## 2024-05-15 - Hoisting Operations in PyTorch Chunking Loops
**Learning:** Element-wise operations like `unsqueeze` inside a PyTorch chunking loop incur repeated overhead from allocating new tensor views or graph nodes per chunk. Furthermore, using `tqdm(..., disable=True)` still introduces measurable overhead in performance-critical loops.
**Action:** Hoist element-wise operations outside the loop to operate on the entire tensor once before `torch.split`. Conditionally wrap the iterable (e.g., `if pbar: chunks = tqdm(chunks)`) instead of using the `disable` parameter.
