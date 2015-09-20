#!/bin/sh
#exec gnome-session
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
exec cinnamon-session
