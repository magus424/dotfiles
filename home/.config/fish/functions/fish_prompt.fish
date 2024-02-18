function fish_prompt --description 'Write out the prompt'
    echo

    if test -n "$TMUX"
        fixssh
    end

    set icon_sqrt \u221a
    set icon_branch \ue0a0
    set icon_right_full \ue0b0
    set icon_right_empty \ue0b1
    set icon_left_full \ue0b2
    set icon_left_empty \ue0b3

    set -l git_prompt_new 1

    git config core.bare &> /dev/null
    set -l git_status $status
    set -l git_branch
    set -l git_description

    if test $git_status -eq 0
        set git_branch (git rev-parse --abbrev-ref HEAD)
        set git_description (git config branch.$git_branch.description)

        if test $git_prompt_new -eq 0 -a -n "$git_description" -a $COLUMNS -lt 200
            set_color 555
            echo -n 'Ticket: '
            set_color AF87D7
            echo -n $git_description
            echo
        end
    end

    if test $git_prompt_new -eq 1 -a $git_status -eq 0
        set_color A8A8A8
        echo -n "$icon_branch "
        set_color normal
        echo -n (__fish_git_prompt '%s')
        if test -n "$git_description"
            set_color 626262
            echo -n " $icon_right_empty "
            #  
            set_color AF87D7
            echo $git_description
            set_color normal
        end
    else if test $git_prompt_new -eq 1
        echo
    end

    # Host
    set_color 0BB
    echo -n (hostname -s)
    set_color 555

    echo -n ':'

    # PWD
    set_color 55F
    if test $COLUMNS -lt 50
        echo -n (prompt_pwd)
    else
        echo -n (prompt_pwd_long)
    end

    if test $git_prompt_new -eq 0 -a $git_status -eq 0
        set_color 555
        echo -n ' ('
        set_color 0B0
        echo -n (__fish_git_prompt "$icon_branch %s")
        set_color 555
        echo -n ')'
        if test -n "$git_description" -a $COLUMNS -gt 199
            echo -n ' ['
            set_color AF87D7
            echo -n $git_description
            set_color 555
            echo -n ']'
        end
    end

    echo -ne '\e[0K'
    echo
    set_color normal
    echo -n "$icon_sqrt "
end
