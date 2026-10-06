## 2024-10-06 - [To optimize PyTorch chunking loops, hoist element-wise operations]
**Learning:** To optimize PyTorch chunking loops, hoist element-wise operations like `unsqueeze` outside the loop to operate on the entire tensor once before `torch.split`, avoiding repeated overhead from allocating new tensor views or graph nodes per chunk.
**Action:** When rewriting PyTorch code containing loops, always review whether operations inside the loop apply uniformly to all elements and can be hoisted before chunking.
