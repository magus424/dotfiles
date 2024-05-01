#!/usr/bin/env bash

run_segment() {
    source ~/.config/tmux-powerline/segments/.dotfiles.sh

    segment_dotfile_status ~/.homesick/repos/dotfiles/
    return 0
}
