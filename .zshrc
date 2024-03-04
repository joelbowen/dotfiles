# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# -- OH MY ZSH ----
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="agnoster"
ZSH_THEME="powerlevel10k/powerlevel10k"
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
  zsh-better-npm-completion
  zsh-nvm
  zsh-syntax-highlighting
  zsh-z
)

source $ZSH/oh-my-zsh.sh


# -- CONFIGURATION ----
DEFAULT_USER=$(whoami)
POWERLEVEL9K_MODE="awesome-patched"

export EDITOR=vim
export VISUAL="$EDITOR"
export DEVHOME="$HOME/dev"

# -- PATH MANAGEMENT ----

# Visual Studio Code (code) stuff
PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# shared bin to PATH
PATH="$PATH:/usr/local/sbin"

# Go stuff
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
PATH=$PATH:$GOBIN

# Android stuff
export ANDROID_SDK=/Users/$DEFAULT_USER/Library/Android/sdk
export ANDROID_SDK_ROOT=$ANDROID_SDK

export JAVA_HOME=/Applications/Android\ Studio.app/Contents/jre/Contents/Home

PATH=$PATH:/Users/$DEFAULT_USER/Library/Android/sdk/platform-tools

# Brew stuff
PATH=$PATH:/opt/homebrew/bin

# Dev home stuff for some personal bin files
PATH=$PATH:$DEVHOME/bin

# Python stuff
PATH=$PATH:/Users/$DEFAULT_USER/Library/Python/3.9/bin
alias python="python3"
export PATH

# Rust
source "$HOME/.cargo/env"

# -- ALIASES ----
# Open VSCode
alias c='code'
# Refresh an npm repo
alias nfresh="rm -rf node_modules/ package-lock.json && npm install"
# When mistakes have been made
alias nuke="git clean -df && git reset --hard"
# Git
alias gl="git log --oneline --decorate --color"
# Pour my brews
alias ibrew="cd ~/dotfiles && sh ./install/homebrew.sh"
# Neovim
alias vim="nvim"

# -- FUNCTIONS ----
weather() { curl -4 wttr.in/${1:-charlotte} }

function chpwd() {
  emulate -L zsh
  ls -a
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# AWS CLI v1
export PATH="/opt/homebrew/opt/awscli@1/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# The next line updates PATH for the Google Cloud SDK.
if [ -f "/Users/$DEFAULT_USER/google-cloud-sdk/path.zsh.inc" ]; then . "/Users/$DEFAULT_USER/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "/Users/$DEFAULT_USER/google-cloud-sdk/completion.zsh.inc" ]; then . "/Users/$DEFAULT_USER/google-cloud-sdk/completion.zsh.inc"; fi

