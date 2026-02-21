## 2025-05-15 - [Sphinx Documentation Build Artifacts]
**Learning:** The `scripts/build_sdk_docs.sh` script generates `.rst` files in `docs/sdk/python/` (specifically `a2a*.rst` and `modules.rst`) and creates a `.doc-venv` directory. These are build artifacts that were previously untracked and not ignored, causing clutter and potential accidental commits.
**Action:** Always check `.gitignore` when working with build scripts that generate files in-source. Ensure generated documentation source files and virtual environments are properly ignored.

## 2025-05-15 - [Documentation Build Optimization]
**Learning:** The documentation build script was recreating the virtual environment on every run, taking ~70s. Reusing the environment reduced build time to ~9s (7.5x speedup). This pattern of "nuke and pave" for build environments is a common bottleneck in developer scripts.
**Action:** When optimizing build scripts, look for opportunities to cache or reuse environments while ensuring dependencies are still updated (e.g., using `pip install --upgrade`).
