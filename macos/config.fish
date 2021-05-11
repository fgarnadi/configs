starship init fish | source

# sbin path
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

# Locale
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8

# Python virtualenv
# alias activate='source venv/bin/activate'

# Python pyenv
pyenv init - | source

# Node nodenv
eval (nodenv init - | source)

# Alias
alias brewit='update; upgrade; brew cleanup; brew doctor'
alias update="brew update"
alias upgrade="brew upgrade"
alias install="brew install"
alias reinstall="brew reinstall"
alias remove="brew remove"
alias search="brew search"
alias info="brew info"
alias home="brew home"
alias zap="brew remove --zap"
alias installc="brew install --cask"
alias reinstallc="brew reinstall --cask"
alias updatec="echo N | brew cu -a"
alias upgradec="brew upgrade --cask"
alias removec="brew remove --cask"
alias infoc="brew info --cask"
alias zapc="brew remove --zap --cask"

alias ls="exa"

# Home variable
set -x GOPATH $HOME/Code/go
# set -x GOBIN $GOPATH/bin 
set -x GOVERSION (go version | grep -o '\([0-9]\.\?\)\+' | head -1)
set -x GOROOT /usr/local/Cellar/go/$GOVERSION/libexec 

# PATH variable
# set -x PATH $GOBIN $PATH
set -x PATH $HOME/.cargo/bin $PATH
set -x PATH $HOME/.flutter/bin $PATH
set -x PATH $HOME/Library/Android/sdk/tools $PATH
set -x PATH $HOME/Library/Android/sdk/tools/bin $PATH
set -x PATH $HOME/Library/Android/sdk/platform-tools $PATH

# GCP
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc"

# Misc
set -x EDITOR /usr/local/bin/vim
