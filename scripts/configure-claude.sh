#!/bin/bash

# Exit on error
set -euo pipefail

# Import helpers
source "$(dirname "$0")/helpers.sh"

# Navigate to scripts dir
cd "$(dirname "$0")"

printTitle "Configuring CLAUDE..."

# Symlink CLAUDE.md
mkdir -p "${HOME}/.claude"
ln -sf "$(pwd)/CLAUDE.md" "${HOME}/.claude/CLAUDE.md"

printTitle "Done!"
