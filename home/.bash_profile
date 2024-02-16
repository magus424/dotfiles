if [ "$PS1" ]; then
    stty -ixon
    if [[ -n $(which fish 2> /dev/null) ]]; then
        # exec fish
        echo
    fi
fi

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# vim: ts=4 sts=4 sw=4 et ai nowrap ft=sh
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
