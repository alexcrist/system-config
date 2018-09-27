# system-config

> Base configuration for new machines.

## On fresh install of Linux Mint on a 2014 15" MacbookPro

### Install `git`

`sudo apt install git`

### Clone this repository

`mkdir ~/workspace`
`cd ~/workspace`
`git clone https://github.com/alexcrist/system-config.git`

### Run the autoconfigure script

`cd ~/workspace/system-config`
`sudo bash autoconfigure_linux_mint.sh`

#### This script will automatically

* Create `rc.local` to fix brightness control
* Configure Cinnamon key bindings
* Configure terminal profile and keybindings
* Switch [CMD] and [CTRL]
* Enable multitouch gestures with fusuma
* Configure git settings and aliases
* Install vim
* Configure vim, vundle, and install plugins
* Install zsh
* Install oh-my-zsh
* Configure zsh and install plugins
* Install NVM (node version manager)
* Install Anaconda (python with data science libraries)
* Install Spotify
* Install Chrome
* Install VSCode

## Notes

* I don't think loading the .conf files work
* Multitouch doesn't seem to work on the new machine either
* zsh set up is close but needs work

