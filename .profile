# $FreeBSD: releng/10.3/share/skel/dot.profile 266029 2014-05-14 15:23:06Z bdrewery $
#
# .profile - Bourne Shell startup script for login shells
#
# see also sh(1), environ(7).
#

# These are normally set through /etc/login.conf.  You may override them here
# if wanted.
# PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/games:/usr/local/sbin:/usr/local/bin:$HOME/bin; export PATH

MANPATH="${HOME}/man:$(manpath)"
export PATH=".:$HOME/bin:$PATH"
# BLOCKSIZE=K;	export BLOCKSIZE
export BLOCKSIZE=K
export LANG=es_ES.UTF-8

# Setting TERM is normally done through /etc/ttys.  Do only override
# if you're sure that you'll never log in via telnet or xterm or a
# serial line.
# TERM=xterm; 	export TERM

export EDITOR=vim
export PAGER=less

# set ENV to a file invoked each time sh is started for interactive use.
export ENV="$HOME/.bashrc"

test -f "$HOME/.bashrc" && source "$HOME/.bashrc"

cal
echo "....,....;....,....;....,....;....,....;....,....;....,....;....,....;....,...."
if [ -x /usr/games/fortune ] ; then /usr/games/fortune freebsd-tips ; fi
echo "....,....;....,....;....,....;....,....;....,....;....,....;....,....;....,...."
