#!/usr/bin/env bash

languages=$(echo "golang c cpp typescript javascript rust" | tr " " "\n")
# core_utils=$(echo "find xargs sed awk tmux" | tr " " "\n")
selected=$(echo -e "Select a language, or input something else\n$languages\n$core_utils" | fzf --print-query | tail -1)

if [ -n "$selected" ]; then
    read -p "DAS QUERY: " query

        if echo "$languages" | grep -qa $selected; then
            tmux split-window -v bash -c "curl cht.sh/$selected/$(echo "$query" | tr " " "+") | less"
        else
            tmux split-window -v bash -c "curl cht.sh/$selected~$(echo "$query" | tr " " "+") | less"
        fi
else
    echo "No selection made."
    exit 1
fi
