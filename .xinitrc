#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xbacklight -set 50
xset r rate 200 80
setxkbmap -layout us -variant altgr-intl
synclient VertEdgeScroll=1

exec startxfce4
