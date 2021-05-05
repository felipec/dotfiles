fpath=(~/.zsh $fpath)

source ~/.aliases
source /usr/share/git-completion/prompt.sh

GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=auto

autoload -U compinit && compinit
autoload -U colors && colors

zstyle ':completion:*' menu yes=long select
zstyle ':completion:*' use-cache yes
zstyle ':completion:*:functions' ignored-patterns '_*'

HISTFILE=~/.history
SAVEHIST=10000
HISTSIZE=10000
HISTORY_IGNORE='(ls|[bf]g|exit|reset|clear|cd *)'

# Left
# PS1='%F{blue}%B%m%b%f %F{white}%~%f$(__git_ps1 "[%s]") %F{green}%#%f '
# PS1='%F{blue}%B%m%b%f %F{white}%~%f %F{green}%#%f '

# Right
PS1=' %(2L.%L.) %F{green}%#%f '
RPS1='%F{white}%~%f$(__git_ps1 "[%s]") %F{blue}%B%m%b%f'

eval $(dircolors -b)
export LS_COLORS="$LS_COLORS:*.txt=00;36:*.patch=00;36:*.csv=00;36:*.json=00;36:*.yml=00;36"

zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

setopt inc_append_history
setopt hist_ignore_space
setopt hist_save_no_dups
setopt hist_reduce_blanks
setopt hist_no_store

setopt hist_verify
setopt complete_in_word
setopt correct

setopt auto_cd
setopt auto_param_slash

setopt prompt_subst

zshaddhistory () {
	printf "%s\0" "$1" >> ~/.local/share/histstat/commands
	printf "%s\0" "$PWD" >> ~/.local/share/histstat/dirs
	true
}

bindkey -e
bindkey "\e[3~" delete-char
bindkey "\e[2~" quoted-insert
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line

bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line

bindkey "\e[5~" history-beginning-search-backward
bindkey "\e[6~" history-beginning-search-forward

hash -d d=~/dev
hash -d g=~d/git
hash -d l=~d/linux
hash -d c=~/contrib

hash -d mnt=/run/media/$USER
hash -d shared=~mnt/shared
hash -d data=~mnt/data

hash -d dotfiles=~/.local/share/dotfiles

source /usr/share/fzf/key-bindings.zsh

precmd () {
	# Change the window title of X terminals
	# http://tldp.org/HOWTO/Xterm-Title-3.html
	print -Pn "\e]2;%2~\a"
	# Try __git_ps1 in PROMPT_COMMAND mode
	# __git_ps1 '%F{blue}%B%m%b%f %F{white}%~%f' ' %F{green}%#%f ' '[%s]'
}

compdef _git gk=gitk gks=gitk gl=git_log gls=git_log

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
