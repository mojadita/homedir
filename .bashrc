# .bashrc -- local environment for bash(1). Nothing here is exported.
# Author: Luis Colorado <luiscoloradourcola@gmail.com>
# Date: Wed Aug  3 23:16:57 EEST 2016
#

r="\[[0;31m\]" # red escape sequence
g="\[[0;32m\]" # green escape sequence
b="\[[0;34m\]" # blue escape sequence
w="\[[0;1;37m\]" # white escape sequence
y="\[[0;1;33m\]" # yellow escape sequence
c="\[[0;1;36m\]" # cyan  escape sequence
e="\[[0m\]" # end

root="\[[1;33;41m\]" # root attributes escape sequence

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

# color prompt
PS1="${user}${w}@${b}${host}${w}:${g}"'$(pwd | sed -e "s/^'"${home_esc}"'/~/;/.\{20\}/s/^\(.[^\/]*\/\)....*\(\/[^\/]*\/[^\/]*\)/\1'"${y}..${g}"'\2/")'"${w}${prompt}${e}"' '
# title display for xterm(1)
PS1="\[]0;${tty} - ${USER}@${host} - "'$(pwd)'"\]$PS1"

# several aliases.
alias la='ls -a'
alias ll='ls -l'
alias lf='ls -F'
alias ls='/bin/ls -G'
alias vi='$EDITOR'
alias ssh='/usr/bin/ssh -A'
