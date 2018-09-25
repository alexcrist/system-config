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

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Anaconda
export PATH="/home/alexcrist/anaconda3/bin:$PATH"
