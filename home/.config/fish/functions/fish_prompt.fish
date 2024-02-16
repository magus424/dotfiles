function fish_prompt --description 'Write out the prompt'
    echo

    if test -n "$TMUX"
        fixssh
    end

    git config remote.origin.url &> /dev/null
    set -l git_status $status
    set -l git_branch
    set -l git_title

    if test $git_status -eq 0
        set git_branch (__fish_git_prompt '%s')
        set git_title (git config branch.$git_branch.description)

        if test -n "$git_title" -a $COLUMNS -lt 200
            #set_color 555
            #echo -n '['
            #set_color 0B0
            #echo -n $git_branch
            set_color 555
            echo -n 'Ticket: '
            set_color AF87D7
            echo -n $git_title
            #set_color 555
            #echo -n ']'
            echo
        end
    end

    # Host
    set_color 0BB
    echo -n (hostname -s)
    set_color 555

    echo -n ':'

    # PWD
    set_color 55F
    if test $COLUMNS -lt 100
        echo -n (prompt_pwd)
    else
        echo -n (prompt_pwd_long)
    end

    if test $git_status -eq 0
        set_color 555
        echo -n ' ('
        set_color 0B0
        echo -n $git_branch
        set_color 555
        echo -n ')'
        if test -n "$git_title" -a $COLUMNS -gt 199
            echo -n ' ['
            set_color AF87D7
            echo -n $git_title
            set_color 555
            echo -n ']'
        end
    end

    echo -ne '\e[0K'
    echo
    set_color normal
    echo -n \u221a' '
end
