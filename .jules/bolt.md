## 2024-06-27 - Jupyter Shell vs. Subprocess Output
**Learning:** Converting standard notebook shell commands like `!ls` directly to `subprocess.run(["ls"], check=True)` removes the rich UI formatting natively provided by the Jupyter environment (e.g., column formatting, colors), slightly degrading user experience without meaningful performance gain.
**Action:** Only refactor shell commands (`!magic`) to `subprocess` when inside a computational or IO loop where you actually intend to parallelize them or process their output in Python. Leave informational notebook UI commands intact.
