# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch notify
unsetopt beep
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/abraao/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# start X11

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	exec startx
fi

# PS1 config

os=" "

getDirNameFormated() {
	dir="%F{blue}  %~ %f"

	if find "*.java" &> /dev/null; then
		dir="$dir "
	fi

	if find "*.go" &> /dev/null; then
		dir="$dir ﳑ"
	fi
	
	if find "*.sh" &> /dev/null; then
		dir="$dir "
	fi

	echo "$dir"
}

getGitBranchNameFormated() {
	gitBranchName=$(git branch --show-current 2> /dev/null)
	gitStatus=$(git status --porcelain 2> /dev/null)
	
	if [ -n "$gitStatus" ]; then
		echo "%F{yellow}  $gitBranchName  %f"
	else
		echo "%F{green}  $gitBranchName  %f"
	fi
												
}

enchanted_minimalist_prompt() {									       
	if git rev-parse --is-inside-work-tree &> /dev/null; then
		PS1="$os$(getDirNameFormated)$(getGitBranchNameFormated)"
	else
       		PS1="$os$(getDirNameFormated) "
	fi
}

PROMPT_COMMAND='enchanted_minimalist_prompt'
#enchanted_minimalist_prompt

function precmd() {
    enchanted_minimalist_prompt
}


