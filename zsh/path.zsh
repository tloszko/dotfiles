#!/bin/zsh

# export PATH="/usr/local/opt/postgresql@11/bin:$PATH"
# export LDFLAGS="-L/usr/local/opt/postgresql@11/lib"
# export CPPFLAGS="-I/usr/local/opt/postgresql@11/include"

export PATH=/bin:$PATH
export PATH=/sbin:$PATH
export PATH=/usr/bin:$PATH
export PATH=/usr/sbin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=~/.local/bin:$PATH

export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH
# export PATH=$(brew --prefix ansible@2.9)/bin:$PATH



source "$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"
source "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc"
export PATH="/opt/homebrew/bin:$PATH"
