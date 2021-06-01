# login shell

export PATH="/usr/lib/ccache/bin/:$PATH"
export PATH="/opt/git/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.npm-packages/bin:$PATH"

export EMAIL=felipe.contreras@gmail.com
export VIM_EDITOR=vim
export VISUAL=$VIM_EDITOR
export LESS='-RXFS --use-color -Dd+r$Du+b'
export MAKEFLAGS='-j8'
export PS_FORMAT='pid,cmd'
export DOTFILES="$HOME/.local/share/dotfiles"

# Colorize man
export MANPAGER='less -RX --use-color -Dd+r -Du+b'
export MANROFFOPT='-c'

export SUDO_ASKPASS=$HOME/bin/user_password

# Bundler doesn't know where to install gems otherwise
export GEM_HOME=$(ruby -e 'puts Gem.user_dir')
export PATH="$GEM_HOME/bin:$PATH"
