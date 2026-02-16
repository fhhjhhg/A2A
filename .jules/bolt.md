# Bolt's Journal

## 2025-05-15 - Cached Virtual Environment for Docs
**Learning:** Recreating virtual environments on every script run is a major bottleneck for local development loops. `pip install` is fast enough to run on every invocation if the venv is reused, making complex "check if changed" logic unnecessary.
**Action:** Always check if a venv exists before creating it in build scripts, and provide a `--clean` flag for forced rebuilds.
