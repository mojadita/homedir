# .bashrc -- local environment for bash(1). Nothing here is exported.

r="\[[0;31m\]"
g="\[[0;32m\]"
b="\[[0;34m\]"
w="\[[0;1;37m\]"
y="\[[0;1;33m\]"
c="\[[0;1;36m\]"
e="\[[0m\]"

root="\[[1;33;41m\]"

home_esc="$(echo $HOME | sed -e 's/\//\\\//g')"
host="$(hostname | sed -e 's/\..*//')"
tty="$(tty | sed -e 's/^\/dev\///')"

PS1='$(if [ $(id -u) -eq 0 ]; then echo "'"${root}"'"; else echo "'"${r}"'"; fi)'"${USER}${w}@${b}${host}${w}:${g}"'$(pwd | sed -e "s/^'"${home_esc}"'/~/;/.\{20\}/s/^\(.[^\/]*\/\)....*\(\/[^\/]*\/[^\/]*\)/\1'"${y}"'..'"${g}"'\2/")'"${w}"'\$'"${e}"' '
PS1="\[]0;${tty} - ${USER}@${host} - "'$(pwd)'"\]$PS1"

alias la='ls -a'
alias ll='ls -l'
alias lf='ls -F'
alias ls='/bin/ls -G'
alias vi='$EDITOR'
alias ssh='/usr/bin/ssh -A'
