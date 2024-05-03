# Configuration file for tmux-powerline.
# vi: foldmarker={,} foldmethod=marker foldlevel=1 tabstop=4 filetype=sh

# General {
	# Show which segment fails and its exit code.
	export TMUX_POWERLINE_DEBUG_MODE_ENABLED="false"
	export TMUX_POWERLINE_PATCHED_FONT_IN_USE="true"

	export TMUX_POWERLINE_THEME="default"
	export TMUX_POWERLINE_DIR_USER_THEMES="${XDG_CONFIG_HOME:-$HOME/.config}/tmux-powerline/themes"
	export TMUX_POWERLINE_DIR_USER_SEGMENTS="${XDG_CONFIG_HOME:-$HOME/.config}/tmux-powerline/segments"

	export TMUX_POWERLINE_STATUS_VISIBILITY="on"
	export TMUX_POWERLINE_STATUS_INTERVAL="1"
	# The location of the window list. Can be {"absolute-centre, centre, left, right"}.
	export TMUX_POWERLINE_STATUS_JUSTIFICATION="left"

	export TMUX_POWERLINE_STATUS_LEFT_LENGTH="60"
	export TMUX_POWERLINE_STATUS_RIGHT_LENGTH="90"
# }
