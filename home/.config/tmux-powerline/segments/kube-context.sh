#!/usr/bin/env bash

run_segment() {
    context=`kubectl config current-context`
    context_trimmed=`echo "$context" | sed -e 's@arn.*cluster/@@'`
    current_ns=`kubectl config view -o "jsonpath={.contexts[?(@.name==\"${context}\")].context.namespace}"`

    echo -n "$context_trimmed"
    if [[ -n "$current_ns" ]]; then
        echo -n ":$current_ns"
    fi
    echo
}
