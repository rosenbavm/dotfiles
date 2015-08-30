#!/bin/sh
xrdb $HOME/.Xresources
setxkbmap -layout us -option compose:caps
export GTK_IM_MODULE="xim"
redshift -l 40.014405:-105.234151 -t 5500:2200 &
autocutsel -fork
autocutsel -selection PRIMARY -fork
unclutter &
exec ssh-agent herbstluftwm
