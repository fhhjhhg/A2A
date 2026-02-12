# Bolt's Journal

## 2024-05-22 - Optimize SDK Docs Build
**Learning:** Reusing the virtual environment for SDK documentation builds avoids redundant `pip install` calls, significantly reducing build time.
**Action:** Always check for existing environments in build scripts and add a `--clean` flag for fresh builds.
