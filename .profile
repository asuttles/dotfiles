#! /bin/sh

# .profile  4June20

Linux=true
if [[ $( uname -s ) != "Linux" ]]; then
    Linux=false
fi


PATH=$PATH:$HOME/bin
export PATH

# Prompts
export PS1=' \u:\033[36m\w\033[0m [\#]> '
export PS2=' \u:\033[36m\w\033[0m [\#]>>  '
export PS3=' \u:\033[36m\w\033[0m [\#]>>>   '

# Pagers
export PAGER=less
export MANPAGER='less -isg'

# Command History
export HISTSIZE=512
export HISTFILE=/home/acs/.ksh_history

# File Editing
set -o emacs
export ALTERNATE_EDITOR=""
export EDITOR="emacsclient -t -a emacs"
export VISUAL=$EDITOR

# Preferred Terminal - Used by I3
if $Linux; then
    TERM_EXE=st
else
    TERM_EXE=xterm
fi
export TERM_EXE

# Timezone
if $Linux; then
    export TZ=/usr/share/zoneinfo/Asia/Qatar
fi

# PWD
if [ -z "$PWD" ]; then
    PWD=$HOME
    export PWD
fi

# Exec .kshrc
if [ -f $HOME/.kshrc -a -r $HOME/.kshrc ]; then
    ENV=$HOME/.kshrc
    export ENV
    . $ENV
fi


