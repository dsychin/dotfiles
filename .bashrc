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
export TERMINAL=alacritty
export EDITOR=nvim
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0
export DATABASE_URL=mysql://root@127.0.0.1:3306/pushcode3 # diesel migration
export DB_HOST=localhost # goper db host

# Autocomplete
source /usr/share/git/completion/git-completion.bash
source /usr/share/bash-completion/bash_completion

# enable ssh agent forwarding
if [ -z "$SSH_AUTH_SOCK" ] ; then
    eval `ssh-agent -s`
    ssh-add
fi
set -o vi

[[ -s "/home/desmond/.gvm/scripts/gvm" ]] && source "/home/desmond/.gvm/scripts/gvm"
