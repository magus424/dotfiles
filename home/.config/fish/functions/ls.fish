function ls --description 'List contents of directory'
    if type -q lsd
        set -l param -l
        command lsd $param $argv
    else
        set -l param -AlFh --color=always
        if isatty 1
            set param $param --indicator-style=classify
        end
        command ls $param $argv
    end
end
