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
)

source $ZSH/oh-my-zsh.sh


# -- CONFIGURATION ----
DEFAULT_USER=$(whoami)
POWERLEVEL9K_MODE="awesome-patched"


# -- PATH MANAGEMENT ----
# Add Visual Studio Code (code)
PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
# Add shared bin to PATH
PATH="$PATH:/usr/local/sbin"
# Add Go stuff
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
PATH=$PATH:$GOBIN
# Android Stuff
export ANDROID_SDK=/Users/joel/Library/Android/sdk
PATH=/Users/joel/Library/Android/sdk/platform-tools:$PATH

export PATH


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

# -- FUNCTIONS ----
weather() { curl -4 wttr.in/${1:-charlotte} }

# -- EXTRAS --
# rupa/z.sh
. /usr/local/etc/profile.d/z.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
