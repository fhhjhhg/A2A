## 2025-05-18 - [Documentation Build Optimization]
**Learning:** Recreating virtual environments on every build is a significant performance bottleneck in local development loops.
**Action:** When writing build scripts, always check for existing artifacts (like venvs) and offer a way to reuse them, while providing a clean/rebuild option.
