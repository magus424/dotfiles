#!/usr/bin/env bash

run_segment() {
    context=`yq -o=json --unwrapScalar .current-context ~/.kube/config`
    current_ns=`yq -o=json --unwrapScalar ".contexts[] | select(.name == \"${context}\") | .context.namespace" ~/.kube/config`
    context_trimmed=`echo "$context" | sed -e 's@arn.*cluster/@@'`

    echo -n "$context_trimmed"
    if [[ -n "$current_ns" ]]; then
        echo -n ":$current_ns"
    fi
    echo
}
