# required for the rest
set __fish_git_prompt_show_informative_status 1
set __fish_git_prompt_use_informative_chars 1

# set __fish_git_prompt_color ??
# set __fish_git_prompt_color_prefix ??
# set __fish_git_prompt_color_suffix ??
# set __fish_git_prompt_color_bare ??
# set __fish_git_prompt_color_merging ??
set __fish_git_prompt_char_cleanstate '' # '✔'
# set __fish_git_prompt_color_cleanstate ??

set __fish_git_prompt_char_stateseparator ' '

set __fish_git_prompt_showdirtystate 1
set __fish_git_prompt_char_dirtystate '*'
set __fish_git_prompt_char_invalidstate '#'
set __fish_git_prompt_char_stagedstate '+'

set __fish_git_prompt_showuntrackedfiles 1
set __fish_git_prompt_char_untrackedfiles '%'

# auto, verbose, name, informative
set __fish_git_prompt_showupstream informative
set __fish_git_prompt_char_upstream_ahead '↑'
set __fish_git_prompt_char_upstream_behind '↓'
set __fish_git_prompt_char_upstream_diverged '<>'
set __fish_git_prompt_char_upstream_equal '='
set __fish_git_prompt_char_upstream_prefix ' ' # μυ

set __fish_git_prompt_showcolorhints 1
set __fish_git_prompt_color_upstream 0087FF
set __fish_git_prompt_color_dirtystate AF0000           # (red with showcolorhints, same as color_flags otherwise)
# set __fish_git_prompt_color_invalidstate ??
set __fish_git_prompt_color_stagedstate 00AF00          # (green with showcolorhints, color_flags otherwise)
set __fish_git_prompt_color_untrackedfiles AF5F00       # (same as color_flags)
set __fish_git_prompt_color_branch 00AF00               # (green) - the color of the branch if nothing else applies
set __fish_git_prompt_color_branch_detached D70000      # (red) the color of the branch if it’s detached (e.g. a commit is checked out)
# set __fish_git_prompt_color_branch_dirty ??           # (no default) the color of the branch if it’s dirty and not detached
# set __fish_git_prompt_color_branch_staged ??          # (no default) the color of the branch if it just has something staged and is otherwise clean
# set __fish_git_prompt_color_flags ??                  # (--bold blue) - the default color for dirty/staged/stashed/untracked state

# Note that all colors can also have a corresponding _done color.
# For example, the contents of $__fish_git_prompt_color_upstream_done is printed right _after_ the upstream.
