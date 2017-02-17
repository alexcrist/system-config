# Set history length
HISTSIZE=2000
HISTFILESIZE=5000

# Display git branch next to directory
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# Auto-complete git branches
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

# Set up aliases
alias w="cd ~/workspace && ls"
