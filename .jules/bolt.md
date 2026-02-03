# Bolt's Journal

## Critical Learnings
## 2026-02-03 - [Documentation Build Artifacts]
**Learning:** The `scripts/build_sdk_docs.sh` script generates many artifacts (virtual env, RST files) that can pollute the repo if not ignored.
**Action:** Always check generated files and update `.gitignore` when optimizing build scripts.
