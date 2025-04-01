#!/bin/zsh

DISABLE_AUTO_TITLE=true

BULLETTRAIN_TIME_SHOW="true"
BULLETTRAIN_PROMPT_CHAR="❯"
BULLETTRAIN_DIR_EXTENDED="false"

WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

setopt hist_ignore_all_dups
setopt share_history
setopt inc_append_history
setopt hist_reduce_blanks
setopt HIST_EXPIRE_DUPS_FIRST

setopt local_options
setopt local_traps

setopt correct
setopt complete_in_word
# setopt complete_aliases # we wan't to autocomplete in aliases.
setopt ignore_eof
unsetopt nomatch
setopt EXTENDED_HISTORY
setopt PROMPT_SUBST
setopt NO_BG_NICE
setopt NO_HUP


HISTFILE=~/.zhistory
HISTSIZE=40960
SAVEHIST=40960



autoload run-help
# lazy cd
setopt autocd

zle -N newtab


export SDKROOT=$(xcrun --show-sdk-path)
export ARCHFLAGS="-arch arm64"
export EDITOR='atom-beta'
export GIT_EDITOR='atom-beta --wait'
# export SSL_CERT_FILE="/usr/local/share/ca-bundle.crt"

# start typing + [Up-Arrow] - fuzzy find history forward
bindkey "^[[A" history-substring-search-up
# start typing + [Down-Arrow] - fuzzy find history backward
bindkey "^[[B" history-substring-search-down

# OPTION+left
bindkey '[D' beginning-of-line
# OPTION+right
bindkey '[C' end-of-line

# [Ctrl-RightArrow] - move forward one word
bindkey '^[[1;5C' forward-word
# [Ctrl-LeftArrow] - move backward one word
bindkey '^[[1;5D' backward-word
# [Backspace] - delete backward
bindkey '^?' backward-delete-char
bindkey "^[[3~" delete-char
bindkey "^[3;5~" delete-char
bindkey "\e[3~" delete-char
