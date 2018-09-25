#!/bin/bash

function printTitle {
  echo -e "\n\033[0;34m$1\033[0m\n"
}

function printText {
  echo -e "\033[0;36m$1\033[0m"
}

printTitle "========== GIT =========="

printText "Installing git..."
apt install git

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
cp .vimrc ~/.vimrc

printText "Installing vundle package manager..."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

printText "Installing vim plugins..."
vim +PluginInstall +qall

printTitle "========== ZSH =========="

printText "Installing zsh..."
apt install zsh

printText "Setting zsh to default shell..."
chsh -s $(which zsh)

printText "Installing oh-my-zsh package manager..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

printText "Installing zsh-autosuggestions..."
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

printText "Installing zsh theme..."
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

printText "Installing powerline fonts..."
apt install fonts-powerline

printTitle "========== NVM =========="

printText "Installing nvm (0.33.11)..."
git clone https://github.com/creationix/nvm.git ~/.nvm
cd ~/.nvm
git checkout v0.33.11
. nvm.sh
cd ..

printTitle "========== ANACONDA =========="

printText "Installing anaconda (5.2.0)..."
cd /tmp
curl -O https://repo.anaconda.com/archive/Anaconda3-5.2.0-Linux-x86_64.sh
sha256sum Anaconda3-5.2.0-Linux-x86_64.sh
bash Anaconda3-5.2.0-Linux-x86_64.sh

printTitle "========== SPOTIFY =========="

printText "Installing spotify..."
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | tee /etc/apt/sources.list.d/spotify.list
apt update
apt install spotify-client

printTitle "========== CHROME =========="

printText "Installing chrome..."
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
apt udpate
apt install google-chrome-stable

printTitle "========== VSCODE =========="

printText "Installing vscode..."
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
apt install apt-transport-https
apt update
apt install code

printTitle "Finished!"
