#
# ~/.bashrc
#

screenfetch -c 9

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
export PS1="\[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\h:\[$(tput sgr0)\]\[\033[38;5;6m\][\w]:\[$(tput sgr0)\]\[\033[38;5;15m\] \n\[$(tput sgr0)\]\[\033[38;5;179m\]\t\[$(tput sgr0)\]\[\033[38;5;98m\]>\[$(tput sgr0)\]"

cl() {
	local dir="$1"
	local dir="${dir:=$HOME}"
	if [[ -d "$dir" ]]; then
		cd "$dir" >/dev/null; ls
	else
		echo "bash: cl: $dir: Directory not found"
	fi
}

shopt -s autocd

shopt -s checkwinsize
