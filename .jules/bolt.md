# Bolt's Journal - Critical Learnings

## 2025-05-23 - Build Script Inefficiency
**Learning:** `scripts/build_sdk_docs.sh` unconditionally recreates the virtual environment on every run. This is a significant performance bottleneck for iterative documentation development.
**Action:** Implement a caching mechanism for the virtual environment, adding a `--clean` flag to force recreation when needed. This aligns with project memory/expectations and speeds up build times.
