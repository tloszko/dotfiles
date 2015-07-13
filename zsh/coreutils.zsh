#!/bin/zsh

export CLICOLOR=true
export CLICOLOR_FORCE=true

export GREP_OPTIONS="--color=auto"
export GREP_COLOR="4;33"

[ -f $HOME/.dotfiles/zsh/dircolors.256dark ] && eval "$(dircolors $HOME/.dotfiles/zsh/dircolors.256dark)"
