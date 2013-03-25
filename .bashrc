#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR="vim"
export HISTSIZE=10000 

export LANG=en_US.UTF-8
export LC_MESSAGES="C"

complete -cf sudo

alias ls='ls --color=auto'
alias ll="ls --color -lh"
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias ls='ls --color=auto --human-readable --group-directories-first --classify'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

### GIT ########################################################

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUPSTREAM="auto"
export GIT_PS1_SHOWUNTRACKEDFILES=1

source ~/.git-completion.bash
source ~/.git-prompt.sh

alias gb='git branch'
alias gc='git commit -v'
alias gca='git commit -a -v'
alias gco='git checkout'
alias gd='git diff'
alias gdc='git diff --cached'
alias gdh='git diff HEAD'
alias gp='git push'
alias gl='git pull'
alias gpr='git pull --rebase'
alias gst='git status'
alias gap='git add -p'
alias glg='git log --pretty=oneline --abbrev-commit'


### COLORED MAN PAGES ##########################################

man() {
	env \
		LESS_TERMCAP_mb=$(printf "\e[1;31m") \
		LESS_TERMCAP_md=$(printf "\e[1;31m") \
		LESS_TERMCAP_me=$(printf "\e[0m") \
		LESS_TERMCAP_se=$(printf "\e[0m") \
		LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
		LESS_TERMCAP_ue=$(printf "\e[0m") \
		LESS_TERMCAP_us=$(printf "\e[1;32m") \
			man "$@"
}

### PROMPT #####################################################


#RESET='\[\017\]'
#BASH_BLUE='\[\033[34;1m\]'
#BASH_GREEN='\[\033[32;1m\]'
#BASH_GITPATH='\[\033[44m;1m\]'
#BASH_WHITE='\[\033[0m\]'
#BASH_YELLOW='\[\033[33;1m\]'
#BASH_PURPLE='\[\033[35;1m\]'

PS1='\[\033[34;1m\]\u\[\033[0m\]@\h:\[\033[32;1m\]\w \[\033[0;40;93m\]$(__git_ps1 "(%s)")\[\033[0m\]\$ '
#PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '


