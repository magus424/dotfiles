#!/usr/bin/env bash

segment_dotfile_status() {
    cd $1

    if test `find .git/FETCH_HEAD -mmin +30`; then
        git fetch >/dev/null 2>&1 &
    fi

    local ahead='↑'
    local behind='↓'
    local stash='$'
    local staged='+'
    local modified='!'
    local untracked='?'
    local symbols=''

    while read -r line
    do
        case $line in
          "# branch.oid"*)
              ;;
          "# branch.upstream"*)
              ;;
          "# branch.head"*)
            branch=$(echo $line | cut -d' ' -f 3)
            ;;
          "# branch.ab"*)
            local ahead_count behind_count
            read ahead_count behind_count < <(echo "$line" | cut -d' ' -f 3,4 | tr -d '+-')
            [[ $ahead_count > 0 ]] && symbols+="$ahead"
            [[ $behind_count > 0 ]] && symbols+="$behind"
            ;;
          "# stash"*)
              symbols+="$stash"
              ;;
          [12]\ ?[MTADRC]*)
              symbols+="$modified"
              ;;
          [12]\ [MTADRC]?*)
              symbols+="$staged"
              ;;
          ?\ *)
              symbols+="$untracked"
              ;;
          *)
              symbols+=$line
              ;;
        esac
    done < <(git --no-optional-locks status --porcelain=v2 --branch 2>/dev/null)

    symbols=`echo $symbols | tr -s '\0-\255'`

    echo "$symbols"
}
