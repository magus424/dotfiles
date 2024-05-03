# vim: ts=4 sts=4 sw=4 et ai nowrap ft=bash

if [ "$PS1" ]; then
    stty -ixon
    if [[ -n $(which fish 2> /dev/null) ]]; then
        if [[ "$SHELL" != "fish" ]]; then
            exec fish
        fi
    fi
fi

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
