#! /bin/sh

# NOTE:
# .kshrc - executed every time a new shell is spawned

# Directory
alias ls='ls -Bt --color=auto --group-directories-first'
alias la='ls -ABt --color=auto --group-directories-first'
alias ll='ls -GBlFth'
alias lla='ls -GBAlFth'
alias lld='ls -odth */'
alias dir='ls -GBlAFth'

# Editor
alias emacs='emacs -nw'

# Tools
alias top='top -H'
alias du='ncdu'

# Battery and Temp
alias batt='acpi -b'
alias temp='acpi -tf'

# Music
alias kwpx="mpv http://184.164.135.70:8133/"
alias hpr1="mpv http://87.98.130.255:8947/stream/1/"  # Heartland Public Radio
alias fm181="mpv http://listen.181fm.com/181-80scountry_128k.mp3?noPreRoll=true" # 80s

# Sound
alias sound='alsamixer'

# System Info
alias screenfetch="neofetch -gtk2 off -gtk3 off --disable Theme --memory_display infobar"

# Programming Tools
alias valgrind="/bin/valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes --log-file=$PWD/.valgrind"
