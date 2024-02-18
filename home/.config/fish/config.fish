if test $TERM = 'screen' -o $TERM = 'screen-bce'
    set -x TERM screen-256color
else if test $TERM != 'putty-256color'
    set -x TERM xterm-256color
end

if type -f dircolors > /dev/null
    eval (dircolors -c | sed 's/>&\/dev\/null$//')
end

set -x fish_color_command blue --bold
set -x fish_color_end green
set -x fish_color_escape cyan
set -x fish_color_operator cyan

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
if test -e ~/bin/vimpager
    set -x PAGER ~/bin/vimpager
end
set -x XDEBUG_SESSION 1

if type -q thefuck
    thefuck --alias | source
end

if test -f ~/.homesick/repos/homeshick/homeshick.fish
    source ~/.homesick/repos/homeshick/homeshick.fish
end

for p in /home/vagrant/.local/lib ~/.local/lib64
    if test -d $p
        if not contains $p $LD_LIBRARY_PATH
            set -x LD_LIBRARY_PATH "$p:$LD_LIBRARY_PATH"
        end
    end
end

for p in ~/.config/vim/bundle/powerline/
    if test -d $p
        if not contains $p $PYTHONPATH
            set PYTHONPATH $p $PYTHONPATH
        end
    end
end

for p in $HOME/bin $HOME/.local/bin
    if test -d $p
        if not contains $p $PATH
            set PATH $p $PATH
        end
    end
end

complete -f -c git -n '__fish_git_needs_command' -a get -d 'Checkout and switch to a branch'
complete -f -c git -n '__fish_git_using_command get' -a '(__fish_git_branches)' --description 'Branch'
complete -f -c git -n '__fish_git_needs_command' -a delbr -d 'Delete a branch from both local and remote repos'
complete -f -c git -n '__fish_git_using_command delbr' -a '(__fish_git_branches)' --description 'Branch'

# AWS CLI completion
complete --command aws --no-files --arguments '(begin; set --local --export COMP_SHELL fish; set --local --export COMP_LINE (commandline); aws_completer | sed \'s/ $//\'; end)'

if test -d ~/.volta
    if test -z "$VOLTA_HOME"
        set -gx VOLTA_HOME "$HOME/.volta"
        set -gx PATH "$VOLTA_HOME/bin" $PATH
    end
end
