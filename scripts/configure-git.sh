#!/bin/bash

# Exit on error
set -euo pipefail

# Import helpers
source "$(dirname "$0")/helpers.sh"

# Navigate to scripts dir
cd "$(dirname "$0")"

printTitle "Configuring git settings..."

git config --global user.email "alexecrist@gmail.com"
git config --global user.name "alexcrist"
git config --global core.editor "vim"
git config --global core.pager "cat"
git config --global alias.co "checkout"
git config --global alias.br "branch"
git config --global alias.ci "commit"
git config --global alias.st "status"
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit -15"
git config --global init.defaultBranch main

printTitle "Done!"
