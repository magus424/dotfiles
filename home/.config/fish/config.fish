if test $TERM = 'screen' -o $TERM = 'screen-bce'
    set -x TERM screen-256color
else if test $TERM != 'putty-256color'
    set -x TERM xterm-256color
end

set -g fish_term24bit 1

# if type -f dircolors > /dev/null
if command_exists dircolors
    if test -f ~/.config/dircolors
        eval (dircolors -c ~/.config/dircolors | sed 's/>&\/dev\/null$//')
    else
        eval (dircolors -c | sed 's/>&\/dev\/null$//')
    end
end

abbr --add dcd docker compose down
abbr --add dce docker compose exec
abbr --add dcr docker compose restart
abbr --add dcu docker compose up

abbr --add hcd homeshick cd
abbr --add hln homeshick link
abbr --add htrack homeshick track

set -x fish_color_command blue --bold
set -x fish_color_end green
set -x fish_color_escape cyan
set -x fish_color_operator cyan

if test -f ~/.homesick/repos/homeshick/homeshick.fish
    source ~/.homesick/repos/homeshick/homeshick.fish
    source ~/.homesick/repos/homeshick/completions/homeshick.fish
end

for p in ~/.config/vim/bundle/powerline/
    if test -d $p
        if not contains $p $PYTHONPATH
            set PYTHONPATH $p $PYTHONPATH
        end
    end
end

for p in /home/linuxbrew/.linuxbrew/share/fish/vendor_completions.d
    if test -d $p
        if not contains $p $fish_complete_path
            set fish_complete_path $p $fish_complete_path
        end
    end
end

add_path_if_exists $HOME/bin
add_path_if_exists $HOME/.local/bin
add_path_if_exists /usr/local/bin

if test -d /home/linuxbrew/.linuxbrew
    eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)

    set -x HOMEBREW_NO_ENV_HINTS 1
end

if test -d ~/.volta
    if test -z "$VOLTA_HOME"
        set -gx VOLTA_HOME "$HOME/.volta"
        set -gx PATH "$VOLTA_HOME/bin" $PATH
    end
end

set -x NPM_TOKEN (gh auth token)

set -x SHELL fish
set -x RIPGREP_CONFIG_PATH ~/.ripgreprc
set -x XDG_CONFIG_HOME ~/.config
set -x POWERLINE_COMMAND ~/.config/vim/bundle/powerline/scripts/powerline-render
set -x WHOIS_HIDE 1
set -x EDITOR vim
set -e GREP_OPTIONS
set -x GREP_COLOR "1;33"
set -x ACK_COLOR_MATCH "bold yellow"

if type -q bat
    set -x MANPAGER "sh -c 'col -b | bat -l man -p'"
    set -x PAGER "bat -p"
end

if command_exists thefuck
    thefuck --alias | source
end

complete -f -c git -n '__fish_git_needs_command' -a get -d 'Checkout and switch to a branch'
complete -f -c git -n '__fish_git_using_command get' -a '(__fish_git_branches)' --description 'Branch'
complete -f -c git -n '__fish_git_needs_command' -a delbr -d 'Delete a branch from both local and remote repos'
complete -f -c git -n '__fish_git_using_command delbr' -a '(__fish_git_branches)' --description 'Branch'

# AWS CLI completion
complete --command aws --no-files --arguments '(begin; set --local --export COMP_SHELL fish; set --local --export COMP_LINE (commandline); aws_completer | sed \'s/ $//\'; end)'

if command_exists zoxide
    zoxide init fish | source
end
