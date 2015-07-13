#!/bin/zsh

DISABLE_AUTO_TITLE=true

BULLETTRAIN_TIME_SHOW="true"
BULLETTRAIN_PROMPT_CHAR="❯"
BULLETTRAIN_DIR_EXTENDED="false"

setopt hist_ignore_all_dups
setopt share_history
setopt inc_append_history
setopt hist_reduce_blanks

setopt local_options
setopt local_traps

setopt correct
setopt complete_in_word
setopt complete_aliases
setopt ignore_eof
unsetopt nomatch


HISTFILE=~/.zhistory
HISTSIZE=4096
SAVEHIST=4096


PURE_CMD_MAX_EXEC_TIME=1
# PURE_GIT_PULL=0


# lazy cd
setopt autocd

zle -N newtab


export ARCHFLAGS="-arch x86_64"
export EDITOR='atom -n'
export GIT_EDITOR='mvim'
# export SSL_CERT_FILE="/usr/local/share/ca-bundle.crt"
