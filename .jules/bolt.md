## 2024-03-24 - [Optimize PyTorch chunking loops]
**Learning:** To optimize PyTorch chunking loops, hoist element-wise operations like `unsqueeze` outside the loop to operate on the entire tensor once before `torch.split`. This avoids repeated overhead from allocating new tensor views or graph nodes per chunk.
**Action:** When working with chunks of tensors, always try to apply element-wise operations to the full tensor before splitting it to maximize performance.
