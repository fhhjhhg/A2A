## 2024-05-14 - [Optimize PyTorch Element-wise Operations before chunking]
**Learning:** Performing element-wise operations like `unsqueeze` on PyTorch chunks within a loop introduces repeated allocation overhead per chunk. Additionally, `tqdm(..., disable=True)` still carries overhead.
**Action:** Hoist the element-wise operations (like `unsqueeze`) outside the loop so they are applied to the entire tensor once before `torch.split`. Also, when using `tqdm` conditionally, wrap the iterable conditionally (`if pbar: chunks = tqdm(chunks)`) rather than relying on `disable=True`.
