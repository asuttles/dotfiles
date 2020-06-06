#! /bin/sh

# .profile  4June20

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
export EDITOR="emacs -nw"
export VISUAL=$EDITOR

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


