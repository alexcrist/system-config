#!/usr/bin/env bash

# Exit on error
set -euo pipefail

# Import helpers
source "$(dirname "$0")/helpers.sh"

# Navigate to scripts dir
cd "$(dirname "$0")"

print_title "Configuring vim (for Raspbery Pi)..."

print_text "Assuming vim is installed."

print_text "Copying .vimrc..."
cp ../configs/.vimrc-raspi "${HOME}/.vimrc"

print_text "Installing vundle package manager..."
if [[ ! -d "${HOME}/.vim/bundle/Vundle.vim" ]]; then
  git clone https://github.com/VundleVim/Vundle.vim.git "${HOME}/.vim/bundle/Vundle.vim"
else
  print_text "Vundle already installed. Skipping clone."
fi

print_text "Installing vim plugins..."
vim +PluginInstall +qall

print_title "Done!"