#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source /usr/share/git/completion/git-prompt.sh
source /usr/share/git/completion/git-completion.bash

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="auto"
export EDITOR="nvim"
export PATH=$PATH:/home/xaosmaker/go/bin

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias v="nvim"
alias docker_prune='docker system prune --volumes -a'
alias cls="clear"
alias screen="python /home/$USER/.config/custom_steam_runner/dissable_enable_monitor.py"
alias k="kubectl"

function count_lines(){
find . \
  -type d \( -name node_modules -o -path "./internal/db" -o -name .next -o -path "*/static" -o -path "*/.git" -o -path "*/migrations" -o -path "*/ui" \) -prune -o \
  -type f ! \( -name go.mod -o -name go.sum -o -name schema.sql -o -name pnpm-lock.yaml -o -name components.json -o -name Pipfile -o -name Pipfile.lock \) \
  -exec wc -l {} +
}

function docker_stop(){
docker stop $(docker ps -a -q)
}

function env_load() {
	export $(grep -v '^#' $1 | xargs)
}


PS1='\[\e[38;5;34m\] \H@\u\[\e[0m\] \[\e[94m\]\w\[\e[0m\]$(__git_ps1 " \[\e[38;5;208m\](%s)\[\e[0m\]") \[\e[35m\]\$$?\[\e[0m\] \[\e[38;5;206m\]\$\[\e[0m\] '
