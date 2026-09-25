## 2024-05-18 - Hoisting operations outside of PyTorch chunking loops
**Learning:** When using `torch.split` to process tensors in chunks, running element-wise operations like `unsqueeze` inside the loop allocates new tensor views or graph nodes per chunk, which adds unnecessary overhead.
**Action:** Hoist element-wise operations outside the loop to operate on the entire tensor once before `torch.split`. Also, when using `tqdm` with a conditional toggle, wrap the iterable instead of using `disable=True` to avoid measurable overhead.
