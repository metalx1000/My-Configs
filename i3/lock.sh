#!/bin/bash
scrot /tmp/screen.png
#convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
#convert /tmp/screen.png -paint 3 -modulate 80 /tmp/screen.png
#s=($(xrandr|grep '*'|head -n1|awk '{print $1}'|tr 'x' ' '))
#x=$(echo ${s[1]}/2|bc)
#y=$(echo ${s[2]}/2|bc)
convert /tmp/screen.png -paint 3 /tmp/screen.png
#[[ -f ~/.config/i3/lock.png ]] && composite -geometry +683+$x ~/.config/i3/lock.png\
[[ -f ~/.config/i3/lock.png ]] && composite ~/.config/i3/lock.png\
  /tmp/screen.png\
  /tmp/screen.png
#mocp -P
i3lock -u -e -i /tmp/screen.png
