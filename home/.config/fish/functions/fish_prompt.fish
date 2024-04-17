function __my_git_prompt
    git config core.bare &> /dev/null
    set -l git_status $status

    if test $git_status -eq 0
        set git_branch (git rev-parse --abbrev-ref HEAD 2>/dev/null)
        set git_description (git config branch.$git_branch.description)

        set git_desc_prompt (__my_git_desc_prompt)
        set git_desc_length (string length -V "$git_desc_prompt")

        set git_branch_prompt (__my_git_branch_prompt)
        set git_branch_length (string length -V "$git_branch_prompt")

        echo -n $git_branch_prompt
        if test -n "$git_desc_prompt" -a $COLUMNS -gt (math $git_branch_length + $git_desc_length + 10)
            echo -n $git_desc_prompt
        end
    end
end

function __my_git_branch_prompt
    set icon_branch \ue0a0          # 
    set icon_half_left \ue0b6       # 
    set icon_half_right \ue0b4      # 
    source ~/.config/fish/conf.d/git_prompt_vars.fish

    set_color $git_bg
    echo -n $icon_half_left
    set_color 00a0a0 -b $git_bg
    echo -n "$icon_branch "
    set_color normal
    echo -n (__fish_git_prompt '%s')
    set_color $git_bg
    echo -n $icon_half_right
end

function __my_git_desc_prompt
    set icon_right_empty \ue0b1     # 
    set icon_half_left \ue0b6       # 
    set icon_half_right \ue0b4      # 
    set icon_file_text \uf0f6       # 
    set icon_file \uf4a5            # 
    set nbsp \ua0

    set git_branch (git rev-parse --abbrev-ref HEAD 2>/dev/null)
    set git_description (git config branch.$git_branch.description)

    set desc_bg 201030
    if test -n "$git_description"
        echo -n " "
        set_color $desc_bg
        echo -n $icon_half_left
        set_color AF87D7 -b $desc_bg
        echo -n "$icon_file_text$nbsp$git_description"
        set_color $desc_bg -b normal
        echo -n $icon_half_right
        set_color normal
        echo
    end
end

function fish_prompt --description 'Write out the prompt'
    echo

    if test -n "$TMUX"
        fixssh
    end

    set icon_sqrt \u221a            # √
    set icon_folder \uf07b          # 
    set icon_half_left \ue0b6       # 
    set icon_half_right \ue0b4      # 
    set icon_cloud \uf0c2           # 

    set pwd_fg 5f5fff
    set pwd_bg 101030

    set aws_prompt ''
    set aws_status (__fish_aws_sso_login_status)
    if test "active" = "$aws_status"
        set aws_prompt (set_color 080)"$icon_cloud "(set_color normal)
    else if test "expired" = "$aws_status"
        set aws_prompt (set_color 800)"$icon_cloud "(set_color normal)
    end

    set main_prompt $aws_prompt(set_color $pwd_bg)$icon_half_left(set_color -b $pwd_bg $pwd_fg)$icon_folder\ua0(prompt_pwd_long)(set_color -b normal $pwd_bg)$icon_half_right
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
