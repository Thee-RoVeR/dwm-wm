#
# ~/.bashrc
#


[[ $- != *i* ]] && return
# Enable command-line auto-completion
if [ -f /usr/share/bash-completion/bash_completion ]; then
	. /usr/share/bash-completion/bash_completion
elif [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi
source /usr/share/bash-completion/completions/paru.bash
alias 'ls'='ls --color=auto'
alias 'grep'='grep --color=auto'

export PS1='\n\[\e[1;34m\]\h\[\e[0m\] \[\e[1;38m\]as \[\e[1;33m\]\u\[\e[0m\]  \[\e[1;32m\]✅:\[\e[1;32m\]\w\[\e[1;0m\]\n|➤  '

export EDITOR='nvim'
#custom alias
alias "ls"="lsd -al"
alias ".."="cd .."
alias "..."="cd .. cd .."
alias "fff"="fastfetch"
alias "v"="nvim"
alias "wifi-off"="sudo nmcli networking off"
alias "wifi-on"="sudo nmcli networking on"
alias "htop"="bashtop"
alias "fff"="fastfetch"
alias "..."="cd .. && cd .."

