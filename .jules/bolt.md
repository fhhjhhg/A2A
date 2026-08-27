## 2024-05-18 - [Tqdm disable=True overhead]
**Learning:** Using `tqdm(..., disable=True)` in a loop still incurs some overhead. When the loop executes many iterations, this overhead can be measurable.
**Action:** Conditionally wrap iterators with tqdm (`if pbar: chunks = tqdm(chunks)`) rather than passing `disable=True` to avoid the overhead entirely when the progress bar is disabled.

## 2024-05-18 - [PyTorch hoisting tensor ops]
**Learning:** When chunking tensors (e.g., using `torch.split`) and then applying identical element-wise operations (like `unsqueeze`) inside a loop over the chunks, PyTorch allocates a new tensor view for each chunk iteration.
**Action:** Hoist element-wise tensor operations (e.g., `.unsqueeze(1)`) outside the chunking loop, so they run once on the entire tensor before `torch.split`, saving per-chunk allocation and execution overhead.
