## 2025-05-24 - [Hoisting PyTorch Element-wise Operations]
**Learning:** Element-wise operations like `unsqueeze` inside chunking loops introduce overhead from allocating new tensor views or graph nodes per chunk.
**Action:** Hoist these operations outside the loop to operate on the entire tensor once before `torch.split`.

## 2025-05-24 - [Avoid tqdm disable overhead]
**Learning:** Using `tqdm(..., disable=True)` in performance-critical loops still introduces measurable overhead.
**Action:** Conditionally wrap the iterable (e.g., `if pbar: chunks = tqdm(chunks)`) instead of using `disable=True`.
