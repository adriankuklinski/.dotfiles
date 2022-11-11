#!/usr/bin/env bash

languages=$(echo "c cpp rust golang typescrigt solidity nodejs javascript tmux lua css html" | tr " " "\n")
core_utils=$(echo "man sed tr cp ls rm grep rg ps mv jq kill lsof less head tail tar cat ssh cargo git git-status git-commit git-rebase chmod chown" | tr " " "\n")
selected=$(echo -e "$languages\n$core_utils" | fzf)

read -p  "Gimme a query: " query

if echo "$languages" | grep -qs $selected; then
    tmux split-window -p 22 -h bash -c "curl cht.sh/$selected/$(echo "$query" | tr " " "+") | less"
else
    tmux split-window -p 22 -h bash -c "curl cht.sh/$selected~$query | less"
fi
