## 2024-05-23 - [Optimizing PyTorch chunking loops]
**Learning:** Hoisting element-wise operations like `unsqueeze` outside PyTorch chunking loops avoids repeated overhead from allocating new tensor views/nodes per chunk. Additionally, wrapping `tqdm(..., disable=True)` still introduces measurable overhead, so it's better to conditionally wrap the iterable.
**Action:** Apply element-wise tensor transformations before `torch.split` when possible, and conditionally wrap loops with `tqdm` instead of using the `disable` flag.
