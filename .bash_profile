# .bash_profile -- initialization script for bash(1) login
# Author: Luis Colorado <luiscoloradourcola@gmail.com>
# Date: Wed Aug  3 23:27:25 EEST 2016
#
export CDPATH=.:$HOME
export MANPATH=$HOME/man:$MANPATH
export PATH=$HOME/bin:$PATH
export PAGER="less -r"
export EDITOR=vim
export LD_LIBRARY_PATH="$HOME/lib:$LD_LIBRARY_PATH"
export LANG="es_ES.UTF-8"

echo TERM is $TERM
cal
calendar
ENV="${HOME}/.bashrc"
test -f "${ENV}" && source "${ENV}"

test -x /usr/games/fortune && /usr/games/fortune freebsd-tips
