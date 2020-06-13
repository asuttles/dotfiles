#!/bin/sh
#

Linux=true

if [[ $( uname -s ) != "Linux" ]]; then
    Linux=false
fi

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
feh --bg-fill /home/acs/images/wallpaper/default.jpeg &

# Composition Manager
xcompmgr -o 0.05 &

# Screen Brightness
if $Linux; then
    xrandr --output LVDS-1 --brightness 1.1
fi

# Initial Terminal 
$TERM_EXE -geometry 40x20 &


# Terminal Clock
if $Linux; then
    st -g=40x12 -n clock -e tty-clock -c &
fi
    
exec i3
