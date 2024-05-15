function __kf_context
    kubectl config get-contexts | \
        fzf-tmux $FZF_TMUX_OPTS \
            --header-lines=1 \
            --bind 'enter:become(kubectl config use-context {2})'
end

function __kf_namespace
    kubectl get namespaces | \
        fzf-tmux $FZF_TMUX_OPTS \
            --header-lines=1 \
            --bind 'enter:become(kubectl config set-context --current --namespace={1})'
end

function kf
    switch $argv[1]
        case ctx
            __kf_context
        case context
            __kf_context
        case ns
            __kf_namespace
        case namespace
            __kf_namespace
    end
end

