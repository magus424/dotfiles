function __my_git_prompt
    git config core.bare &> /dev/null
    set -l git_status $status

    if test $git_status -eq 0
        set git_branch (git rev-parse --abbrev-ref HEAD)
        set git_description (git config branch.$git_branch.description)

        set git_desc_prompt (__my_git_desc_prompt)
        set git_desc_length (string length -V "$git_desc_prompt")

        __my_git_branch_prompt
        if test -n "$git_desc_prompt" -a $COLUMNS -gt (math $git_desc_length + 20)
            __my_git_desc_prompt
        end
    end
end

function __my_git_branch_prompt
    set icon_branch \ue0a0          # 

    set_color A8A8A8
    echo -n "$icon_branch "
    set_color normal
    echo -n (__fish_git_prompt '%s')
end

function __my_git_desc_prompt
    set icon_right_empty \ue0b1     # 
    set git_branch (git rev-parse --abbrev-ref HEAD)
    set git_description (git config branch.$git_branch.description)

    if test -n "$git_description"
        set_color 626262
        echo -n " $icon_right_empty "
        set_color AF87D7
        echo $git_description
        set_color normal
    end
end

function fish_prompt --description 'Write out the prompt'
    echo

    if test -n "$TMUX"
        fixssh
    end

    set icon_sqrt \u221a            # √

    set main_prompt (set_color 0BB)(hostname -s)(set_color 555):(set_color 55F)(prompt_pwd_long)(set_color normal)
    set main_length (string length -V $main_prompt)
    if test $COLUMNS -lt (math $main_length + 5)
        set main_prompt (set_color 0BB)(hostname -s)(set_color 555):(set_color 55F)(prompt_pwd)(set_color normal)
        set main_length (string length -V $main_prompt)
    end

    set git_prompt (__my_git_prompt)
    set git_length (echo (string length -V $git_prompt) | cut -d' ' -f1)

    set prompt_length (math $main_length + $git_length + 10)

    echo -ne '\e[0J'

    if test $COLUMNS -lt $prompt_length
        if test -n "$git_prompt"
            echo $git_prompt
        end
        echo $main_prompt
    else
        echo "$main_prompt $git_prompt"
    end

    set_color normal
    echo -n "$icon_sqrt "
end
