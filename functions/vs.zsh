#!/bin/zsh

vs(){
  ruby -e "a = %Q[$*]" \
    -e 'res = `ack -l --ignore-dir=tmp --ignore-dir=bin --ignore-dir=log #{a}`' \
    -e 'res.split("\n").each_slice(10){|c| spawn %Q{ mvim -p #{c.join(" ")} +/#{a} }}'
}
