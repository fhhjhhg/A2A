## 2023-10-27 - [Optimize PyTorch Chunking Loops]
**Learning:** To optimize PyTorch chunking loops, hoist element-wise operations like `unsqueeze` outside the loop to operate on the entire tensor once before `torch.split`, avoiding repeated overhead from allocating new tensor views or graph nodes per chunk.
**Action:** Before splitting a tensor into chunks in a loop, apply shape manipulations (like `unsqueeze`) on the entire tensor first. Additionally, conditionally wrap iterables in `tqdm` to avoid overhead when the progress bar is disabled.
