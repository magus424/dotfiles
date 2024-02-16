function tnew
    tmux new-session -As (basename $PWD | sed -e "s/^\.//")
end

