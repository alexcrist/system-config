#!/bin/bash

function printTitle {
  echo -e "\n\033[0;34m$1\033[0m\n"
}

function printText {
  echo -e "\033[0;36m$1\033[0m"
}

printTitle "========== GIT =========="

printText "Configuring git settings..."
git config --global user.email "alexecrist@gmail.com"
git config --global user.name "alexcrist"
git config --global core.editor "vim"
git config --global core.pager "cat"
git config --global alias.co "checkout"
git config --global alias.br "branch"
git config --global alias.ci "commit"
git config --global alias.st "status"
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit -15"

printTitle "========== VIM =========="

printText "Installing vim..."
apt install vim

printText "Copying .vimrc..."
cp .vimrc-raspi ~/.vimrc

printText "Installing vundle package manager..."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

printText "Installing vim plugins..."
vim +PluginInstall +qall

printTitle "Finished!"

