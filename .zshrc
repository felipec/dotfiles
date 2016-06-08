fpath=(~/.zsh $fpath)

export TERM=xterm-256color

autoload -U compinit && compinit
autoload -U colors && colors

source ~/.git-prompt.sh

zstyle ':completion:*:*:git:*' script ~/.git-completion.sh

zstyle ':completion:*' menu yes=long select
zstyle ':completion:*' use-cache yes
zstyle ':completion:*:functions' ignored-patterns '_*'

HISTFILE=~/.histfile
SAVEHIST=1000000
HISTSIZE=1000000
HISTIGNORE='ls:[bf]g:exit:reset:clear:cd *'

GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_SHOWDIRTYSTATE=1

PS1='%{$fg_bold[green]%} %# %{$reset_color%}'
RPS1='%{$fg[white]%}%~$(__git_ps1 "[%s]") %{$fg_bold[blue]%}%m%{$reset_color%}'

eval $(dircolors -b)

zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

setopt hist_ignore_space
setopt hist_no_store
setopt hist_reduce_blanks
setopt hist_ignore_all_dups
setopt hist_verify
setopt complete_in_word
setopt inc_append_history

setopt auto_cd
setopt correct
setopt prompt_subst
setopt auto_param_slash

zshaddhistory () {
	print -r -- "${1%%$'\n'} ### ${PWD}" >> ~/.histstat || true
}

bindkey -e
bindkey "\e[3~" delete-char
bindkey "\e[2~" quoted-insert
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line

bindkey "\e[5~" history-beginning-search-backward
bindkey "\e[6~" history-beginning-search-forward

hash -d mnt=/run/media/felipec
hash -d shared=~mnt/shared
hash -d download=~mnt/shared/download
hash -d data=~mnt/data
hash -d src=~data/src
hash -d dev=~data/dev
hash -d home=~data/felipec
hash -d todo=~data/felipec/todo
hash -d notes=~data/felipec/notes

hash -d d=~/dev
hash -d g=~/dev/git
hash -d l=~/dev/linux

hash -d gst-dsp=~data/omap/gst-dsp
hash -d pecan=~data/msn/msn-pecan

source ~/.aliases

precmd () {
	print -Pn "\e]2;${TITLE:-%2~}\a"
}

title () {
	TITLE=$*
}

compdef _git gk=gitk gkm=gitk gkn=gitk gku=gitk

_git_related () {
	_git_log
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
