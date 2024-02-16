# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

#DISPLAY="192.168.1.100:0.0"
#export DISPLAY

# set PATH so it includes user's private bin if it exists
if [ -d ~/bin ]; then
    PATH=~/bin:"${PATH}"
fi

# If running interactively, then:
if [ "$PS1" ]; then
    HISTCONTROL=ignoredups
    HISTSIZE=8192
    WHOIS_HIDE=1
    export HISTCONTROL HISTSIZE WHOIS_HIDE

    # This enables some spell-checking when doing a cd
    shopt -s cdspell
    # This smoothes resolution of executable paths
    shopt -s checkhash
    # This improves the capabilities of filename globbing
    shopt -s extglob
    # This will complete hostnames(!) after a @. Useful for ssh and scp.
    shopt -s hostcomplete
    # This, combined with history -a in prompt command will retain history between multiple shells
    shopt -s histappend
    # disables xoff on ctrl+s
    stty -ixon

    if [ "$TERM" != "dumb" ]; then
        eval `dircolors -b`
        export LS_OPTIONS='-AlFh --color=always'
        alias ls='ls $LS_OPTIONS'
    fi

    alias lsd='ls -AlFh --color | grep ^drw'
    alias lsnd='ls -AlFh --color | grep -v ^drw'

    alias :wq=exit

    alias bc='bc -ql'
    alias edit='vim'
    alias cls='clear'
    alias psme='ps auwx | grep cgrady'
    alias rehash='source ~/.bashrc'
    alias aamp='mplayer -framedrop -vo aa'

    if [[ -f ~/.localrc ]]; then
        . ~/.localrc
    fi

    NORMAL="\[\e[m\]"
    GREY="\[\e[1;30m\]"
    BLUE="\[\e[1;34m\]"
    PURPLE="\[\e[1;35m\]"
    CYAN="\[\e[0;36m\]"

    if [ $TERM == "screen" -o $TERM == "xterm" -o $TERM == "xterm-24bit" -o $TERM == "xterm-256color" ]; then
        if [[ -n $(type __git_ps1 2> /dev/null | grep function) ]]; then
            PS1='$(__git_ps1 " \e[1;30m(\e[0;32m%s\e[1;30m)")'
        else
            PS1=''
        fi
        PS1="\n${CYAN}\h${GREY}:${BLUE}\w${PS1}${NORMAL}\n\\$ "
        PROMPT_COMMAND='history -a;echo -ne "\e]0;${USER}@`uname -n` - `date +"%a %b %d %H:%M %p"` - `uname -sr`\a"'
    elif [ $TERM == "linux" ]; then
        PS1="\n\[\e[30;1m\][\[\e[35;1m\]0\[\e[30;1m\]] \[\e[0m\]\[\e[36m\]\h\[\e[37m\]:\[\e[34;1m\]\w\[\e[30;1m\]\\$ \[\e[0m\e7\e[1G\e[1H\e[1K\e[30;1m[\e[33m\j\e[30;1m] [\e[32;1m\!\e[30;1m] [\e[36m\u\e[30;1m] [\e[31;1m\d\e[30;1m] [\e[35m\@\e[30;1m] [\e[0m\e[36m`uname -sr`\e[30;1m] [\e[0m\e[34;1m`tty`\e[30;1m]\e8\]"
    else
        PS1="\n[\u@mail \w]\\$ "
    fi
    export PATH PS1 PROMPT_COMMAND

    if [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi

    if [ -f $HOME/.pythonrc ]; then
        export PYTHONSTARTUP=$HOME/.pythonrc
    fi

    if [[ -f $HOME/bin/vimpager ]]; then
        export PAGER=$HOME/bin/vimpager
    fi

    # if [ -f $HOME/bin/gitpager ]; then
    #     export GIT_PAGER=$HOME/bin/gitpager
    # fi

#    if [ -f ~/bin/rvm.sh -a -z "$rvm_bin_path" ]; then
#        source ~/bin/rvm.sh
#    fi

    if [[ -n $(which fish 2> /dev/null) ]]; then
        exec fish
    fi
fi

# vim: ts=4 sts=4 sw=4 et ai nowrap
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
