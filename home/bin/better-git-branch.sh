#!/bin/bash

# Colors
RED='\e[1;31m'
GREEN='\e[1;32m'
NO_COLOR='\e[0m'
BLUE='\e[1;34m'
YELLOW='\e[0;33m'
NO_COLOR='\e[0m'

width1=5
width2=6
width3=30
width4=20
width5=40

# Function to count commits
count_commits() {
    local branch="$1"
    local base_branch="$2"
    local ahead_behind

    ahead_behind=$(git rev-list --left-right --count "$base_branch"..."$branch" 2>/dev/null)
    if [[ $? -gt 0 ]]; then
        ahead_behind="-"
    fi
    echo "$ahead_behind"
}

git fetch --all >/dev/null 2>&1

# Main script
printf "${GREEN}%-${width1}s ${RED}%-${width2}s ${BLUE}%-${width3}s ${YELLOW}%-${width4}s ${NO_COLOR}%-${width5}s\n" "Ahead" "Behind" "Branch" "Last Commit"  " "

# Separator line for clarity
printf "${GREEN}%-${width1}s ${RED}%-${width2}s ${BLUE}%-${width3}s ${YELLOW}%-${width4}s ${NO_COLOR}%-${width5}s\n" "-----" "------" "------------------------------" "-------------------" " "


format_string="%(objectname:short)@%(refname:short)@%(committerdate:relative)"
IFS=$'\n'

for branchdata in $(git for-each-ref --sort=-authordate --format="$format_string" refs/heads/)
do
    sha=$(echo "$branchdata" | cut -d '@' -f1)
    branch=$(echo "$branchdata" | cut -d '@' -f2)
    time=$(echo "$branchdata" | cut -d '@' -f3)

    # Get branch description
    description=$(git config branch."$branch".description)

    # Count commits ahead and behind
    ahead_behind=$(count_commits "$sha" "origin/$branch")
    ahead=$(echo "$ahead_behind" | cut -f2)
    behind=$(echo "$ahead_behind" | cut -f1)

    # Display branch info
    printf "${GREEN}%-${width1}s ${RED}%-${width2}s ${BLUE}%-${width3}s ${YELLOW}%-${width4}s ${NO_COLOR}%-${width5}s\n" $ahead $behind $branch "$time" "$description"
done

