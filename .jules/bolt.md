# Bolt's Journal

This journal tracks critical performance learnings for this codebase.

## 2024-05-22 - Initial Setup
**Learning:** Initialized Bolt's journal.
**Action:** Always check this file before starting performance tasks.

## 2024-05-22 - Build Script Optimization
**Learning:** `scripts/build_sdk_docs.sh` was unconditionally recreating the virtual environment, wasting ~80s per run.
**Action:** Added venv reuse and `--clean` flag. Reduced runtime from ~90s to ~11s.
