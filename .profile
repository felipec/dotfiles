UPATH="$HOME/bin"
UPATH="$UPATH:$HOME/.local/bin"
UPATH="$UPATH:/usr/lib/ccache/bin"
UPATH="$UPATH:/opt/git/bin"

# Bundle doesn't know where to install gems otherwise
export GEM_HOME=$(ruby -e 'puts Gem.user_dir')
UPATH="$UPATH:$GEM_HOME/bin"

export PATH="$UPATH:$PATH"

export EDITOR='vim'
export VISUAL='gvim'
export GIT_EDITOR="$EDITOR"

export LESS='-RXFS --use-color -Dd+r$Du+b'
export MAKEFLAGS='-j24'
export EMAIL=felipe.contreras@gmail.com
export PS_FORMAT='pid,cmd'

# Colorize man
export MANPAGER='less -RX --use-color -Dd+r -Du+b'
export MANROFFOPT='-c'

export SUDO_ASKPASS=$HOME/bin/user_password
