export TERM=xterm-256color
parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

green=$(tput setaf 10)
yellow=$(tput setaf 11)
reset=$(tput sgr0)
PS1="\[$green\]\$(parse_git_branch)\[$yellow\] \W \$ \[$reset\]"
export PS1
