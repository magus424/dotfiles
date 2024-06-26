#!/usr/bin/env bash

update_aws_status() {
    aws sts get-caller-identity --query Account --output text 2>&1 > /dev/null
    if [[ $? -eq 0 ]]; then
        echo "active" > /tmp/tmux-aws-status.txt
    else
        echo "inactive" > /tmp/tmux-aws-status.txt
    fi
}

run_segment() {
    cloud="\uf0c2"

    if ! test -f /tmp/tmux-aws-status.txt || test `find /tmp/tmux-aws-status.txt -mmin +5`; then
        update_aws_status 2>&1 > /dev/null &
    fi

    status=`cat /tmp/tmux-aws-status.txt`

    if [[ "$status" == "active" ]]; then
        echo -e "#[fg=#008000]${cloud} "
    else
        echo -e "#[fg=#800000]${cloud} "
    fi

    return 0
}
