# Bolt's Journal

## Critical Learnings
*No entries yet.*

## 2025-02-27 - [Build Script Optimization]
**Learning:** The documentation build script (`scripts/build_sdk_docs.sh`) was aggressively cleaning the virtual environment on every run, leading to significant delays (~1m vs ~8s).
**Action:** When working with build scripts, check if they support incremental builds or caching. Implemented `--clean` flag and venv reuse.
