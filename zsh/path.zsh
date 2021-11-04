#!/bin/zsh

export PATH="/usr/local/opt/postgresql@11/bin:$PATH"

export LDFLAGS="-L/usr/local/opt/postgresql@11/lib"
export CPPFLAGS="-I/usr/local/opt/postgresql@11/include"
export PATH=/bin:$PATH
export PATH=/sbin:$PATH
export PATH=/usr/bin:$PATH
export PATH=/usr/sbin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH

source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc
