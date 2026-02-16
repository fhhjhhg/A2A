#!/bin/bash
set -e # Exit immediately if a command exits with a non-zero status.

# --- Configuration ---
PACKAGE_NAME="a2a"          # The name of the package to import
PYPI_PACKAGE_NAME="a2a-sdk" # The name on PyPI
DOCS_SOURCE_DIR="docs/sdk/python"
DOCS_BUILD_DIR="${DOCS_SOURCE_DIR}/_build"
VENV_DIR=".doc-venv"

CLEAN=false
for arg in "$@"; do
  if [ "$arg" == "--clean" ]; then
    CLEAN=true
  fi
done

echo "--- Setting up documentation build environment ---"

if [ "$CLEAN" = true ] && [ -d "$VENV_DIR" ]; then
  echo "Cleaning existing virtual environment..."
  rm -rf "$VENV_DIR"
fi

if [ ! -d "$VENV_DIR" ]; then
  echo "Creating new virtual environment..."
  python3 -m venv "$VENV_DIR"
  source "$VENV_DIR/bin/activate"
  echo "--- Upgrading pip ---"
  pip install -U pip
else
  echo "Reusing existing virtual environment..."
  source "$VENV_DIR/bin/activate"
fi

echo "--- Installing/Updating package and dependencies ---"

# Install documentation requirements and the package itself
# pip is smart enough to skip if already satisfied
pip install -r "requirements-docs.txt" "${PYPI_PACKAGE_NAME}"

echo "--- Finding installed package path ---"

# Find the installation path of the package
PACKAGE_PATH=$(python -c "import ${PACKAGE_NAME}, os; print(os.path.dirname(${PACKAGE_NAME}.__file__))")
echo "Found '${PACKAGE_NAME}' at: ${PACKAGE_PATH}"

echo "--- Generating API documentation source files (.rst) ---"

# Run sphinx-apidoc on the installed package directory
# -f: force overwrite of existing files
# -e: put each module on its own page
sphinx-apidoc -f -e -o "${DOCS_SOURCE_DIR}" "${PACKAGE_PATH}"

echo "--- Building HTML documentation ---"

# Build the HTML documentation
sphinx-build -b html "${DOCS_SOURCE_DIR}" "${DOCS_BUILD_DIR}/html"

# Deactivate the virtual environment
deactivate

echo ""
echo "✅ Documentation build complete!"
echo "View the docs by opening: ${DOCS_BUILD_DIR}/html/index.html"
