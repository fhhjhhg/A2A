# Bolt's Journal

## 2025-05-23 - Sphinx Docs Optimization
**Learning:** `sphinx-apidoc` generates `modules.rst` and `package.rst` (e.g., `a2a.rst`), but `index.rst` is typically the manually created master document. Be careful when cleaning up "generated" files (`rm *.rst`) to not delete `index.rst`.
**Action:** When cleaning up build artifacts, explicitly list generated files or use specific patterns, and verify what is being deleted. Also, always check if `index.rst` is tracked by git before deletion.
