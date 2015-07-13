#!/bin/zsh

alias gl='git pull'
alias gp='git push'
alias glr='git pull --rebase'
alias gd='git diff'
alias gc='git commit -m'
alias ga='git commit -am'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status -sb'
alias gm='git mergetool'
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias glg="git log --graph --decorate --oneline --abbrev-commit"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
