#!/bin/bash
set -e # Exit immediately if a command exits with a non-zero status.

# --- Configuration ---
PACKAGE_NAME="a2a"          # The name of the package to import
PYPI_PACKAGE_NAME="a2a-sdk" # The name on PyPI
DOCS_SOURCE_DIR="docs/sdk/python"
DOCS_BUILD_DIR="${DOCS_SOURCE_DIR}/_build"
VENV_DIR=".doc-venv"
CLEAN_BUILD=false

# Parse arguments
while [[ $# -gt 0 ]]; do
  case $1 in
    --clean)
      CLEAN_BUILD=true
      shift # past argument
      ;;
    *)
      shift # past unknown argument
      ;;
  esac
done

echo "--- Setting up documentation build environment ---"

# Check if virtual environment exists
if [ -d "$VENV_DIR" ] && [ -f "$VENV_DIR/bin/activate" ] && [ "$CLEAN_BUILD" = false ]; then
  echo "Reusing existing virtual environment at $VENV_DIR"
  source "$VENV_DIR/bin/activate"
else
  if [ "$CLEAN_BUILD" = true ]; then
    echo "Clean build requested. Removing existing virtual environment..."
  elif [ ! -d "$VENV_DIR" ]; then
     echo "Virtual environment not found. Creating..."
  else
     echo "Virtual environment found but seemingly invalid or clean build implied. Recreating..."
  fi

  # Create a clean virtual environment
  if [ -d "$VENV_DIR" ]; then
    rm -rf "$VENV_DIR"
  fi
  python3 -m venv "$VENV_DIR"
  source "$VENV_DIR/bin/activate"

  # Upgrade pip in a new environment
  pip install -U pip
fi

echo "--- Installing package and dependencies ---"

# Install documentation requirements
pip install -r "requirements-docs.txt"

# Install the package itself
pip install "${PYPI_PACKAGE_NAME}"

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
