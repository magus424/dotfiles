if test -z "$TMUX"
    fish_ssh_agent
    __fish_ssh_add_all_keys
end

if test -d /home/linuxbrew/.linuxbrew
    eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)

    set -x HOMEBREW_NO_ENV_HINTS 1
end

add_path_if_exists $HOME/bin
add_path_if_exists $HOME/.local/bin
add_path_if_exists /usr/local/bin

add_pythonpath_if_exists ~/.config/vim/bundle/powerline/

set -g fish_term24bit 1

set fish_color_command blue --bold
set fish_color_end green
set fish_color_escape cyan
set fish_color_operator cyan

set -e GREP_OPTIONS

set -x ACK_COLOR_MATCH "bold yellow"
set -x EDITOR vim
set -x GREP_COLOR "mt=1;33"
set -x NPM_TOKEN (gh auth token)
set -x POWERLINE_COMMAND ~/.config/vim/bundle/powerline/scripts/powerline-render
set -x RIPGREP_CONFIG_PATH ~/.ripgreprc
set -x SHELL fish
set -x WHOIS_HIDE 1
set -x XDG_CONFIG_HOME ~/.config

if test -n "$TMUX"
    set -x TERM tmux-256color
else if test $TERM = 'screen' -o $TERM = 'screen-bce'
    set -x TERM screen-256color
else if test $TERM != 'putty-256color'
    set -x TERM xterm-256color
end

if test -f ~/.homesick/repos/homeshick/homeshick.fish
    source ~/.homesick/repos/homeshick/homeshick.fish
    source ~/.homesick/repos/homeshick/completions/homeshick.fish

    abbr --add hcd homeshick cd
    abbr --add hln homeshick link
    abbr --add htrack homeshick track
    abbr --add hpull homeshick pull
end

if test -d ~/.volta
    if test -z "$VOLTA_HOME"
        set -gx VOLTA_HOME "$HOME/.volta"
        add_path_if_exists "$VOLTA_HOME/bin"
    end
end

if command_exists bat
    set -x DELTA_PAGER "less -R"
    set -x MANPAGER "sh -c 'col -b | bat -l man --pager=\"less -R\"'"
    set -x PAGER "bat -p"
    abbr --add cat bat
end

if command_exists dircolors
    if test -f ~/.config/dircolors
        eval (dircolors -c ~/.config/dircolors | sed 's/>&\/dev\/null$//')
    else
        eval (dircolors -c | sed 's/>&\/dev\/null$//')
    end
end

if command_exists docker
    abbr --add dcd docker compose down
    abbr --add dce docker compose exec
    abbr --add dcr docker compose restart
    abbr --add dcu docker compose up
end

if command_exists fzf
    set -x FZF_TMUX_OPTS '-p80%,60%'
    set -x FZF_CTRL_T_OPTS "
        --walker-skip .git,node_modules
        --preview 'bat -n --color=always {}'
    "
    set -x FZF_CTRL_R_OPTS "
        --preview 'echo {}'
        --preview-window up:8:wrap
        --bind 'ctrl-/:toggle-preview'
        --bind 'ctrl-y:execute-silent(echo -n {1..} | xsel -b)+abort'
        --color header:italic
        --header 'Press CTRL-Y to copy command into clipboard'""
    "
    set -x FZF_ALT_C_OPTS "
        --walker-skip .git,node_modules
        --preview 'command lsd --tree {}'
    "

    fzf --fish | source
end

if command_exists kubectl
    abbr --add k kubectl
    abbr --add kns kubectl config set-context --current --namespace
end

if command_exists thefuck
    thefuck --alias | source
end

if command_exists wslview
    set -x BROWSER wslview
end

if command_exists zoxide
    zoxide init fish | source
end
