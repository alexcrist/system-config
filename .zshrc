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
  z
)

# Plugin manager
export ZSH=/Users/acrist/.oh-my-zsh
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

