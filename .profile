export PATH="/usr/lib/ccache/bin/:$PATH"
export PATH="/opt/git/bin:/opt/sb2/bin:/opt/notmuch/bin:/opt/xchat/bin:$PATH"
export PATH="$HOME/bin:$PATH"

export EMAIL=felipe.contreras@gmail.com
export EDITOR="vim"

# export DESKTOP_SESSION=gnome

# export DEBFULLNAME="Felipe Contreras" DEBEMAIL="felipe.contreras@gmail.com"
# export DEBFULLNAME="Maemo Multimedia" DEBEMAIL="multimedia@maemo.org"

if test "$PS1" && test "$BASH" && test -r ~/.bashrc; then
	. ~/.bashrc
fi
