fpath=(~/.zsh $fpath)

source ~/.aliases
source /usr/share/git-completion/prompt.sh

GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=auto

eval $(dircolors -b)
export LS_COLORS="$LS_COLORS:*.txt=00;36:*.patch=00;36:*.csv=00;36:*.json=00;36:*.yml=00;36"

HISTFILE=~/.history
HISTSIZE=10000
SAVEHIST=50000

autoload -U compinit && compinit
autoload -U colors && colors
autoload -U promptinit && promptinit

prompt felipec

setopt auto_cd
setopt inc_append_history

setopt auto_param_slash
setopt hist_ignore_space
setopt hist_verify
setopt correct

zstyle ':completion:*' menu yes=long select
zstyle ':completion:*' use-cache yes
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

bindkey -e
bindkey "\e[3~" delete-char
bindkey "\e[2~" quoted-insert
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line

bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line

bindkey "\e[A" history-beginning-search-backward
bindkey "\e[B" history-beginning-search-forward

hash -d d=~/dev
hash -d c=~/contrib
hash -d g=~d/git
hash -d l=~d/linux

hash -d mnt=/run/media/$USER
hash -d shared=~mnt/shared
hash -d data=~mnt/data

hash -d dot=~/.local/share/dot-files

source /usr/share/fzf/key-bindings.zsh

precmd () {
	# Change the window title of X terminals
	# http://tldp.org/HOWTO/Xterm-Title-3.html
	print -Pn "\e]2;%2~\a"
}

zshaddhistory () {
	printf "%s\0" "$1" >> ~/.local/share/histstat/commands
	printf "%s\0" "$PWD" >> ~/.local/share/histstat/dirs
	true
}

_git_smartlist () {
	_git_log
}

_git_related () {
	_git_log
}

_git_v () {
	_git_gitk
}

_git_reintegrate () {
	case "$cur" in
	--add=*)
		__gitcomp_nl "$(__git_refs)" "" "${cur##--add=}"
		return
		;;
	-*)
		__gitcomp "
			--create --edit --rebuild --continue --abort
			--generate --cat --status
			--add= --prefix=
			--autocontinue"
		return
		;;
	esac

	__gitcomp_nl "$(git --git-dir="$(__gitdir)" \
		for-each-ref --format='%(refname)' refs/int | sed -e 's#^refs/int/##')"
}
