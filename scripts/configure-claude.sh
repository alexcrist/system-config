#!/bin/bash

# Exit on error
set -euo pipefail

# Import helpers
source "$(dirname "$0")/helpers.sh"

# Navigate to scripts dir
cd "$(dirname "$0")"

print_title "Configuring CLAUDE..."

# Symlink CLAUDE.md
mkdir -p "${HOME}/.claude"
cp "../configs/CLAUDE.md" "${HOME}/.claude/CLAUDE.md"

print_title "Done!"
