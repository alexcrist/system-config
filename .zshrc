# Theme
ZSH_THEME="spaceship"

# Spaceship Theme Options
SPACESHIP_PROMPT_ORDER=(
  dir
  git
  exit_code
  char
)

# Plugins
plugins=(
  git
  zsh-autosuggestions
)

# Plugin manager
export ZSH=~/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Always sudo edit with vim
function vim(){
  OWNER=$(stat -c '%U' $1)
  if [[ "$OWNER" == "root" ]]; then
    sudo /usr/bin/vim $*;
  else
    /usr/bin/vim $*;
  fi
}

# Navigation shortcut
function navigate {
  clear
  cd $1
  echo "Navigated to \033[1;33m$2\033[0m.\n"
  ls
}

# Aliases
alias w="navigate ~/workspace workspace"
alias reload=". ~/.zshrc"
alias drracket="~/racket/bin/drracket &"
alias racket="~/racket/bin/racket"

# Anaconda
export PATH="/home/alexcrist/anaconda3/bin:$PATH"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


