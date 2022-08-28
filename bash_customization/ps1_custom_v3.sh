#!/bin/bash

resetColor="\[\e[0m\]"
os="\[\e[00m\]  "

getDirNameFormated() {
    dir="\[\e[34m\] "

    if find *.java &> /dev/null; then
        dir="$dir "
    fi

    if find *.go &> /dev/null; then
        dir="$dir ﳑ"
    fi

    if find *.sh &> /dev/null; then
        dir="$dir "
    fi

    echo "$dir \W "
}

getGitBranchNameFormated() {
    gitBranchName=$(git branch --show-current 2> /dev/null)
    gitStatus=$(git status --porcelain 2> /dev/null)

    if [ -n "$gitStatus" ]; then
        echo "\[\e[33m\]  $gitBranchName  "
    else
        echo "\[\e[32m\]  $gitBranchName  "
    fi
}

enchanted_minimalist_prompt() {
    if git rev-parse --is-inside-work-tree &> /dev/null; then
        PS1="$os$(getDirNameFormated)$(getGitBranchNameFormated)$resetColor"
    else
        PS1="$os$(getDirNameFormated) $resetColor"
    fi 
}

PROMPT_COMMAND='enchanted_minimalist_prompt'