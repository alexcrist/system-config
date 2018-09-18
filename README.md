# system-config

> Base configuration for new machines.

## Essentials

#### [Chrome](https://support.google.com/chrome/answer/95346?co=GENIE.Platform%3DDesktop&hl=en)

> The internet.

* **Plugins:**
  * [Clear Cache](https://chrome.google.com/webstore/detail/clear-cache/cppjkneekbjaeellbfkmgnhonkkjfpdn?hl=en)
  * [uBlock Origin](https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm?hl=en)
  * [GitHub File Icons](https://chrome.google.com/webstore/detail/github-file-icon/ficfmibkjjnpogdcfhfokmihanoldbfe?hl=en)
  * [Momentum](https://chrome.google.com/webstore/detail/momentum/laookkfknpbbblfpciffpaejjkokdgca?hl=en)

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

* **Settings:** [settings.json](./settings.json)
* **Plugins:**
  * Auto Close Tag
  * ESLint
  * RainbowBrackets
  * Kay Theme

#### [iTerm2](https://www.iterm2.com/)

> Terminal but better.

* **Fonts:** [powerline](https://github.com/powerline/fonts)
  * `Settings` > `Profiles` > `Text` > `Font` > `14pt Meslo LG M Regular for Powerline`
* **Theme:** [material design](https://github.com/MartinSeeler/iterm2-material-design)

#### [Zsh](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)

> Bash but better.

* **Settings**: [.zshrc](./.zshrc)
* **Plugin Manager**: [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
* **Theme:** [spaceship-prompt](https://github.com/denysdovhan/spaceship-prompt#oh-my-zsh)

#### Git

> It's delicious!

* [A better git log.](https://coderwall.com/p/euwpig/a-better-git-log)

```
git config --global alias.lg \
   "log --color \
        --graph \
        --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' \
        --abbrev-commit \
        -15"
 ```
 * Set pager to `cat`
 
`git config --global core.pager cat`

* Common shortcuts

```
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
```

#### Vim

> In case my mouse breaks.

* **Settings**: [.vimrc](./.vimrc)
* **PluginManager**: [vundle](https://github.com/VundleVim/Vundle.vim)
  * `:PluginInstall`

