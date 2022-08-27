#!/bin/bash

resetColor="\[\e[0m\]"

getRightArrow() {
    echo "\[\e[$1;$2m\]"
}

getGitBranchNameColor() {
    gitStatus=$(git status --porcelain 2> /dev/null)

    if [ -n "$gitStatus" ]; then
        echo "30;43"
    else
        echo "30;44"
    fi
}

getGitBranchNameArrowColor() {
    gitStatus=$(git status --porcelain 2> /dev/null)

    if [ -n "$gitStatus" ]; then
        echo "33;49"
    else
        echo "34;49"
    fi
}

getArrowColorToMergeWithGit() {
    gitStatus=$(git status --porcelain 2> /dev/null)

    if [ -n "$gitStatus" ]; then
        echo "32;43"
    else
        echo "32;44"
    fi
}

getGitBranchNameFormated() {
    gitBranchName=$(git branch --show-current 2> /dev/null)

    if [ -z "$gitBranchName" ]; then
	    return 1
	fi

    echo "  $gitBranchName "
}

os="\[\e[30;47m\]  $(getRightArrow 37 42)"
git="\[\e[\$(getGitBranchNameColor)m\] \$(getGitBranchNameFormated) \[\e[\$(getGitBranchNameArrowColor)m\] $resetColor"
workingDir="\[\e[30;42m\] ﱮ \W $(getRightArrow 32 49) $resetColor"


fency_prompt() {
    if git rev-parse --is-inside-work-tree &> /dev/null; then
        workingDir="\[\e[30;42m\] ﱮ \W \[\e[\$(getArrowColorToMergeWithGit)m\]"
        PS1="$os$workingDir$git"
    else
        PS1="$os$workingDir"
    fi 
}

PROMPT_COMMAND='fency_prompt'