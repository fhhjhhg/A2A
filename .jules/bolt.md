## 2025-05-24 - [SDK Docs Build Speedup]
**Learning:** Recreating Python venvs in build scripts is extremely costly (~1m). Reusing them reduces time to ~10s (7x faster). Always check for existence first.
**Action:** Use conditional venv creation in all Python build scripts.
