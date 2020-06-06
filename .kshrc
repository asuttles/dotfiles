#! /bin/sh

# .kshrc 6June20
#  NOTE: executed every time a new shell is spawned

Linux=true


if [[ $( uname -s ) != "Linux" ]]; then

    Linux=false

    # Setup a Compositor for BSD XTerm
    if [[ -n "$XTERM_VERSION" ]]; then
	sleep 0.6
	transset -a 1>/dev/null
    fi
fi


# Directory
if $Linux; then
    alias ls='ls -Bt --color=auto --group-directories-first'
    alias la='ls -ABt --color=auto --group-directories-first'
    alias ll='ls -GBlFth'
    alias lla='ls -GBAlFth'
    alias lld='ls -odth */'
    alias dir='ls -GBlAFth'
else
    alias ll='/bin/ls -FGchlpt'
    alias la='/bin/ls -AFGchpt'
    alias lla='/bin/ls -AFGchlpt'
    alias lld='ls */'
    alias dir='ll'
fi

# Editor
alias emacs='emacsclient -c -a emacs'


# Tools
alias top='top -H'

if $Linux; then
    alias du='ncdu'
fi

# Battery and Temp
alias batt='acpi -b'
alias temp='acpi -tf'

# Music
if $Linux; then
    alias kwpx="mpv http://184.164.135.70:8133/"
    alias hpr1="mpv http://87.98.130.255:8947/stream/1/"  # Heartland Public Radio
    alias fm181="mpv http://listen.181fm.com/181-80scountry_128k.mp3?noPreRoll=true" # 80s
fi

# Sound
if $Linux; then
    alias sound='alsamixer'
fi

# System Info
if $Linux; then
    alias screenfetch="neofetch -gtk2 off -gtk3 off --disable Theme --memory_display infobar"
fi

# Programming Tools
if $Linux; then
    alias valgrind="/bin/valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes --log-file=$PWD/.valgrind"
fi

# Change Background Images
if $Linux; then
    alias ubg="~/bin/bg.ksh"
    alias dbg="feh --bg-fill /home/acs/images/wallpaper/default.jpeg"
fi

# Clock
if $Linux; then
    alias clock="st -g=40x12 -n clock -e tty-clock -c &"
fi

# Weather
alias wx="curl wttr.in/xjd?u0npF"
alias wx1="curl wttr.in/xjd?u1pFn"
alias wx2="curl wttr.in/xjd?u2pF"
alias moon="curl wttr.in/Moon"
