# Bolt's Journal - Critical Learnings

## 2024-05-23 - Build Script Performance
**Learning:** The `scripts/build_sdk_docs.sh` script unconditionally deletes and recreates the virtual environment on every run, causing significant delays during local development when rebuilding documentation.
**Action:** Implement a check to reuse the existing virtual environment if available, adding a `--clean` flag to force recreation when needed.
