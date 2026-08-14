## 2024-05-18 - [Optimizing PyTorch Loops and Progress Bars]
**Learning:** Calling `unsqueeze` inside a PyTorch chunking loop repeatedly allocates new tensor views and graph nodes, causing measurable overhead. Additionally, using `tqdm(..., disable=True)` still introduces overhead; it is better to conditionally wrap the iterable.
**Action:** Hoist element-wise operations like `unsqueeze` outside loops to operate on the entire tensor once before `torch.split`, and wrap iterables with `tqdm` conditionally (e.g., `if pbar: chunks = tqdm(chunks)`).
