#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Only load Liquidprompt in interactive shells, not from a script or from scp
[[ $- = *i* ]] && source ~/.liquidprompt/liquidprompt

# Aliases
alias ll='ls -l'
alias la='ls -lA'
alias config='/usr/bin/git --git-dir=/home/desmond/.cfg/ --work-tree=/home/desmond'

# Environment variables
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

# Autocomplete
source /usr/share/git/completion/git-completion.bash
source /usr/share/bash-completion/bash_completion
