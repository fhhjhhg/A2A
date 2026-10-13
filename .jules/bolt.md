
## 2024-05-15 - Hoist Unsqueeze and Conditional tqdm
**Learning:** Calling `unsqueeze` inside a chunking loop over tensors repeatedly allocates new tensor views. Additionally, wrapping an iterable with `tqdm(..., disable=True)` still introduces measurable overhead.
**Action:** When iterating over chunks of a tensor, apply element-wise operations like `unsqueeze` outside the loop to operate on the entire tensor once before `torch.split`. Also, when using `tqdm` conditionally, do not use `disable=True`; instead, conditionally wrap the iterable with `if pbar: chunks = tqdm(chunks)`.
