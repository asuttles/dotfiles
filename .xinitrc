#!/bin/sh
#

# X Config Files - System
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# X Config Files - System
userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap

# merge in defaults and keymaps
if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi
if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi
if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi
if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# Background Image
feh --bg-fill ~/images/wallpaper/188888.jpg &

# Composition Manager
xcompmgr -o 0.30 &

# Screen Brightness
xrandr --output LVDS-1 --brightness 1.1

# Terminal 
st &

# Emacs FTW!
emacs --daemon &

exec i3
