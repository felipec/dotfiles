# login shell

UPATH="$HOME/bin"
UPATH="$UPATH:$HOME/.local/bin"
UPATH="$UPATH:/opt/git/bin"
UPATH="$UPATH:/opt/groff/bin"

UPATH="$UPATH:/usr/lib/ccache/bin"

# Bundler doesn't know where to install gems otherwise
export GEM_HOME=$(ruby -e 'puts Gem.user_dir')
UPATH="$UPATH:$GEM_HOME/bin"

export PATH="$UPATH:$PATH"

export EMAIL=felipe.contreras@gmail.com
export VIM_EDITOR=vim
export VISUAL=$VIM_EDITOR
export LESS='-RXFS --use-color -Dd+r$Du+b'
export MAKEFLAGS='-j24'
export PS_FORMAT='pid,cmd'
export DOTFILES="$HOME/.local/share/dotfiles"

# Colorize man
export MANPAGER='less -RX --use-color -Dd+r -Du+b'
export MANROFFOPT='-c'

export SUDO_ASKPASS=$HOME/bin/user_password
