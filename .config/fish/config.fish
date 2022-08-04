if status is-interactive
    # Commands to run in interactive sessions can go here
    alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
end

set -x TERMINAL alacritty
set -x EDITOR nvim
set -x GOPATH $HOME/go
set -x PATH $GOPATH/bin:$PATH
set -x DATABASE_URL mysql://root@127.0.0.1:3306/pushcode3 # diesel migration
set -x DB_HOST localhost # goper db host

# fix ssh agent forwarding on WSL
# fish_ssh_agent

set -U fish_greeting "🐟"

fish_vi_key_bindings
set -U nvm_default_version lts/gallium
