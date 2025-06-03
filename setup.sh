#!/usr/bin/env bash
#
# Codex setup script — runs at container startup.
# Installs Python deps, linters, and test tooling.
#
set -euo pipefail

# Upgrade pip & install deps (placeholder list)
python -m pip install --upgrade pip
if [ -f requirements.txt ]; then
  pip install -r requirements.txt
fi

# Recommended dev extras
pip install pytest pytest-cov black isort
echo "✅  Dependencies installed."
