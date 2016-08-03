# ~/.bash_profile: executed by bash(1) for login shells.
# $Id: .bash_profile,v 3.14 2000/03/05 23:42:59 luis Exp $
# $Log: .bash_profile,v $
# Revision 3.14  2000/03/05 23:42:59  luis
# Cambio del nick SLUG_MSTR por mojadita en IRCNICK.
#
# Revision 3.13  1999/10/26 16:44:36  luis
# Eliminado el tratamiento del terminal con tset, ya que se hace en /etc/profile.
#
# Revision 3.10  1999/08/19 11:07:47  luis
# Modificación de algunos parámetros de IRC.
#
# Revision 3.9  1999/02/06 22:21:45  luis
# *** empty log message ***
#
# [...]
# Revision 3.3  1997/10/24 20:25:01  luis
# Inclusión de un chequeo de la cola de salida de sendmail, para ver si
# hay mensajes pendientes.
#
# Revision 3.2  1997/10/05 10:40:26  luis
# *** empty log message ***
#
# Revision 3.1  1997/02/24 00:07:16  luis
# Include local man directory.
#
# Revision 3.0  1997/02/23 23:26:08  luis
# Comprobación de nueva versión y eliminación de alguna utilidad que
# aún no funciona.
#
# Revision 1.1  1997/02/23 23:22:48  luis
# Initial revision
#
echo '$Id: .bash_profile,v 3.14 2000/03/05 23:42:59 luis Exp $'
export CDPATH=.:$HOME
export MANPATH=$HOME/man:$MANPATH
export PATH=$HOME/bin:$PATH
export IRCNICK=mojadita
export IRCUSER=starlux
export IRCNAME="...nos vamos a vivir... a un mundo nuevo"
export IRCSERVER=libres.irc-hispano.org:6667:CPrdVBDz4DQk
export GNOMECVSROOT=:pserver:anonymous@anoncvs.gnome.org:/cvs/gnome
export PAGER=less
export CVSROOT=/home/cvsroot
export EDITOR=vi
export PKG_CONFIG_PATH=/usr/lib/pkgconfig
export LD_LIBRARY_PATH=$HOME/lib:$LD_LIBRARY_PATH
export LANG=es_ES.utf8

#pom
eval `resize`
resize
echo TERM is $TERM
checkdf -t ext3 -l 500
echo
cal
calendar
# gs ()
# {
	# rm -f ~/gs/*
	# if [ -z "$1" ]
	# then
		# /usr/bin/gs -sOutputFile="$HOME/gs/pag.%d" \
			# -sDEVICE=epson \
			# -r360x180 -q -
	# else
		# /usr/bin/gs -g2976x2104 -sOutputFile="$HOME/gs/pag.%d" \
			# -sDEVICE=epson \
			# -r360x180 $* </dev/null
	# fi
# }	
case $(tty) in
/dev/ttyS[03])
	stty ixon ixoff
	echo "Pausa para lectura de los mensajes"
	sleep 10
	exec screen
;;
esac
. ~/.bashrc
# $Id: .bash_profile,v 3.14 2000/03/05 23:42:59 luis Exp $
# ---- language-env DON'T MODIFY THIS LINE!
# .bash_profile is executed on login.
if [ -f ~/.bashrc ]
then
  # execute .bashrc if it exists.
  . ~/.bashrc
fi
# ---- language-env end DON'T MODIFY THIS LINE!
export PATH=.:${PATH}
