export PATH="/usr/lib/ccache/bin/:$PATH"
export PATH="/opt/git/bin:/opt/sb2/bin:/opt/notmuch/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$(ruby -e 'puts Gem.user_dir')/bin:$PATH"

export EMAIL=felipe.contreras@gmail.com
export EDITOR="vim"
export LESS=FRSX
export PYTHON_PATH=/usr/bin/python2
export MAKEFLAGS='-j8'

if test "$PS1" && test "$BASH" && test -r ~/.bashrc; then
	. ~/.bashrc
fi
