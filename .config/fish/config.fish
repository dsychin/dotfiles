if status is-interactive
    # Commands to run in interactive sessions can go here
    alias config='/usr/bin/git --git-dir=/home/desmond/.cfg/ --work-tree=/home/desmond'
end

set -x TERMINAL alacritty
set -x EDITOR nvim
set -x GOPATH $HOME/go
set -x PATH $GOPATH/bin:$PATH
set -x DATABASE_URL mysql://root@127.0.0.1:3306/pushcode3 # diesel migration
set -x DB_HOST localhost # goper db host

# fix ssh agent forwarding on WSL
bash -c '
    if [ -z "$SSH_AUTH_SOCK" ] ; then
        eval `ssh-agent -s`
        ssh-add
    fi'

set -U fish_greeting "🐟"

fish_vi_key_bindings
