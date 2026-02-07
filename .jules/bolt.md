## 2024-05-22 - [Doc Build Performance]
**Learning:** Recreating Python virtual environments on every script run is a significant bottleneck. Reusing them with a `--clean` option is much faster.
**Action:** Always check for existing venvs in build scripts and reuse if possible.
