if (( $+commands[grc] )) && (( $+commands[brew] ))
then
  source `brew --prefix`/etc/grc.bashrc
fi

alias ls='ls --color=auto -hFG'
alias ll='ls --color=auto -lhFG'
alias l='ls --color=auto -lAhFG'
alias la='ls --color=auto -AFG'

if $(gls &>/dev/null)
then
  alias ls="gls -hFG --color"
  alias ll="gls -lhFG --color"
  alias l="gls -lAhFG --color"
  alias la='gls -AFG --color'
fi
