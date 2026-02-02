# Bolt's Journal

## Critical Learnings

## 2025-02-18 - Documentation Build Performance
**Learning:** The documentation build script (`scripts/build_sdk_docs.sh`) was unconditionally recreating the virtual environment on every run, adding significant overhead to the inner loop.
**Action:** Implemented caching for the venv. Use `--clean` to force a rebuild if dependencies become stale.
