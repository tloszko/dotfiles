#!/bin/zsh

e(){
  if [ "$1" = "" ];
  then
    exec "$EDITOR" "-n" . > /tmp/elog 2>&1 &
  else
    if [ -d "$1" ];
    then
      exec "$EDITOR" "-n" "$1" > /tmp/elog 2>&1 &
    else
      exec "$EDITOR" "$1" > /tmp/elog 2>&1 &
    fi
  fi
}
