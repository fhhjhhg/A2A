## 2024-10-24 - [Hoisting Tensor Operations and tqdm Overhead]
**Learning:** Hoisting element-wise operations like `unsqueeze` outside PyTorch chunking loops avoids repeated overhead from allocating new tensor views or graph nodes per chunk. Additionally, wrapping loops with `tqdm(..., disable=True)` introduces measurable overhead; conditionally wrapping the iterable is faster.
**Action:** Always hoist tensor operations outside chunking loops when possible, and use `if pbar: chunks = tqdm(chunks)` instead of the `disable` argument for conditional progress bars.
