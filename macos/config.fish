# remove fish greeting
set -g fish_greeting

# homebrew setup
eval (/opt/homebrew/bin/brew shellenv)

starship init fish | source

# sbin path
fish_add_path -g /usr/local/sbin

# Locale
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8

# Python virtualenv
# alias activate='source venv/bin/activate'

# Python pyenv
set -x PYENV_ROOT $HOME/.pyenv
set -x PYTHON_CONFIGURE_OPTS --enable-framework
fish_add_path -g $PYENV_ROOT/bin


status is-login; and pyenv init --path | source
status is-interactive; and pyenv init - | source

# Node nodenv
status --is-interactive; and source (nodenv init -|psub)

# Java jenv
# set -x JENV_ROOT $HOME/.jenv
# fish_add_path -g $JENV_ROOT/bin

# status --is-interactive; and source (jenv init -|psub)

# Rust
set -x CARGO_HOME $HOME/.cargo
fish_add_path -g $CARGO_HOME/bin

# Alias
alias brew="env PATH=(string replace (pyenv root)/shims '' \"\$PATH\") brew"
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
alias vim="nvim"

# Golang
# set -x GOPATH $HOME/Code/go
# set -x GOBIN $GOPATH/bin 
# set -x GOVERSION (go version | grep -o '\([0-9]\.\?\)\+' | head -1)
# set -x GOROOT /usr/local/Cellar/go/$GOVERSION/libexec 
# set -x PATH $GOBIN $PATH

# PATH variable
set -x PATH $HOME/.local/bin $PATH

# Android sdk
set -x PATH $HOME/.android/sdk/tools $PATH
set -x PATH $HOME/.android/sdk/tools/bin $PATH
set -x PATH $HOME/.android/sdk/platform-tools $PATH

# GCP
# source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc"

# Misc
set -x EDITOR (which vim)
