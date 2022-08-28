#!/bin/bash

resetColor="\[\e[0m\]"
os="\[\e[00m\]  "
dir="\[\e[34m\]  \W "

getGitBranchNameFormated() {
    gitBranchName=$(git branch --show-current 2> /dev/null)
    gitStatus=$(git status --porcelain 2> /dev/null)

    if [ -n "$gitStatus" ]; then
        echo "\[\e[33m\]   $gitBranchName  "
    else
        echo "\[\e[32m\]   $gitBranchName  "
    fi
}

minimalist_prompt() {
    if git rev-parse --is-inside-work-tree &> /dev/null; then
        PS1="$os$dir$(getGitBranchNameFormated)$resetColor"
    else
        PS1="$os$dir $resetColor"
    fi 
}

PROMPT_COMMAND='minimalist_prompt'