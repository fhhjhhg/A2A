## 2026-09-08 - PyTorch Chunking Loop Overhead
**Learning:** PyTorch element-wise operations like `unsqueeze` inside a chunking loop introduce repeated overhead from allocating new tensor views or graph nodes for each chunk. Additionally, `tqdm(..., disable=True)` still introduces measurable overhead.
**Action:** Hoist element-wise operations outside the loop to operate on the entire tensor once before `torch.split`, and conditionally wrap iterables with `tqdm` instead of using the `disable` argument.
