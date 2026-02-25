# Bolt's Journal

## 2024-05-23 - [Notebook UI Performance]
**Learning:** Streaming text generation in Jupyter/Colab notebooks using `clear_output()` and `display()` on every token causes severe UI flickering and browser lag due to O(N^2) rendering cost.
**Action:** Always throttle UI updates (e.g., every 0.1s) when implementing streaming loops in notebooks.
