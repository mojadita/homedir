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
tty="$(tty | sed -e 's/^\/dev\///')"
host="$(hostname | sed -e 's/\..*//')"

if [ "$(id -u)" -eq 0 ]
then
    user="${root}${USER}${e}"
    prompt='#'
else
    user="${r}${USER}"
    prompt='$'
fi


PS1="${user}${w}@${b}${host}${w}:${g}"'$(pwd | sed -e "s/^'"${home_esc}"'/~/;/.\{20\}/s/^\(.[^\/]*\/\)....*\(\/[^\/]*\/[^\/]*\)/\1'"${y}..${g}"'\2/")'"${w}${prompt}${e}"' '
PS1="\[]0;${tty} - ${USER}@${host} - "'$(pwd)'"\]$PS1"

alias la='ls -a'
alias ll='ls -l'
alias lf='ls -F'
alias ls='/bin/ls -G'
alias vi='$EDITOR'
alias ssh='/usr/bin/ssh -A'
