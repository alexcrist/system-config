# system-config

> Base configuration for new machines.

## Essentials

#### [Chrome](https://support.google.com/chrome/answer/95346?co=GENIE.Platform%3DDesktop&hl=en)

> The internet.

#### [Spotify](https://www.spotify.com/us/download/other/)

> The jams.

## Developement

#### [Anaconda](https://docs.continuum.io/anaconda/install)

> Python bundled with 250+ popular data science packages.

#### [Node Version Manager](https://github.com/creationix/nvm)

> For easily hoppping between Node and NPM versions.

#### [Homebrew](https://brew.sh/)

> Package manager for MacOS.

#### [VSCode](https://coderwall.com/p/euwpig/a-better-git-log)

> All purpose IDE.

* **Extensions:**
  * Auto Close Tag
  * ESLint
  * RainbowBrackets
  * Kay Theme
* **Color Theme:** Kay Dark

#### [iTerm2](https://www.iterm2.com/)

> Terminal but better.

* [powerline fonts](https://github.com/powerline/fonts)
  * `Settings` > `Profiles` > `Text` > `Font` > `14pt Meslo LG M Regular for Powerline`
* [material design theme](https://github.com/MartinSeeler/iterm2-material-design)

#### [Zsh](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)

> Bash but better.

* [oh-My-Zsh](https://github.com/robbyrussell/oh-my-zsh)
* [.zshrc](./.zshrc)

#### Git

> It's delicious!

* [A better git log.](https://coderwall.com/p/euwpig/a-better-git-log)

    git config --global alias.lg \
        "log \
            --color \
            --graph \
            --pretty=format:'%Cred%h%Creset \
                             -%C(yellow)%d%Creset \
                             %s \
                             %Cgreen(%cr) \
                             %C(bold blue)<%an>%Creset' \
            --abbrev-commit"

#### Vim

> In case my mouse breaks.

* [.vimrc](./.vimrc)
* [vundle](https://github.com/VundleVim/Vundle.vim)
  * `:PluginInstall`

