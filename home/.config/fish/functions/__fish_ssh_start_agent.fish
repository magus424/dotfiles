function __fish_ssh_start_agent
    set -x SSH_ENV "$HOME/.ssh/fish-agent"

    function __start_ssh_agent
        ssh-agent -c | grep -v echo | sed -e 's/setenv/set -x/' | sed -s 's/;//' > "$SSH_ENV"
        source $SSH_ENV
    end

    if test -f $SSH_ENV
        source $SSH_ENV

        ps -ef | grep $SSH_AGENT_PID | grep ssh-agent > /dev/null
        if test $status -gt 0
            __start_ssh_agent
        end
    else
        __start_ssh_agent
    end

    set -u SSH_ENV
end

