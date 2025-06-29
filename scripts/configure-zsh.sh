#!/usr/bin/env bash

# Exit on error
set -euo pipefail

# Import helpers
source "$(dirname "$0")/helpers.sh"

# Navigate to scripts dir
cd "$(dirname "$0")"

print_title "Configuring zsh..."

print_text "Assuming zsh is installed."

print_text "Setting zsh to default shell..."
chsh -s $(which zsh)

print_text "Installing oh-my-zsh package manager..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

print_text "Installing zsh-autosuggestions..."
ZSH_CUSTOM=~/.oh-my-zsh/custom
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

print_text "Installing zsh theme..."
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

print_text "Installing powerline fonts..."
apt install fonts-powerline

print_title "Done!"