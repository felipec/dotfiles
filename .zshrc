fpath=(~/.zsh/completion $fpath)

autoload -U compinit && compinit
autoload -U colors && colors

source ~/.git-prompt.sh

zstyle ':completion:*:*:git:*' script ~/.git-completion.sh

HISTFILE=~/.histfile
SAVEHIST=1000000
HISTSIZE=1000000
HISTIGNORE="ls:[bf]g:exit:reset:clear:cd *"

# PS1='%m:%~%# '
PS1='%m:%~$(__git_ps1 "[%%F{5}%s%%f]")%# '

eval $(dircolors -b)

zstyle ':completion:*' list-colors ''

# setopt append_history
setopt hist_ignore_space
setopt hist_no_store
setopt hist_reduce_blanks
setopt hist_ignore_dups
setopt hist_verify
setopt complete_in_word
setopt inc_append_history

setopt auto_cd
setopt correct
setopt prompt_subst

zshaddhistory() {
	print -r -- "${1%%$'\n'} ### ${PWD}" >> ~/.histstat || true
}

bindkey -e
bindkey "\e[3~" delete-char
bindkey "\e[2~" quoted-insert
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line

bindkey "\e[5~" history-beginning-search-backward
bindkey "\e[6~" history-beginning-search-forward

hash -d data=/data
hash -d src=/data/src
hash -d dev=/data/dev
hash -d home=/data/felipec
hash -d todo=/data/felipec/todo
hash -d notes=/data/felipec/notes

hash -d mnt=/run/media/felipec
hash -d key=~mnt/felipec
hash -d data=~mnt/wd
hash -d private=~mnt/wd_private
hash -d personal=~mnt/wd_personal

hash -d gst-dsp=/data/dev/omap/gst-dsp
hash -d pecan=/data/dev/msn/msn-pecan
hash -d sb_home="/opt/scratchbox/users/felipec/home/felipec"

source ~/.aliases

case $TERM in
	xterm*)
		precmd () { print -Pn "\e]0;${TITLE:-%m: %~}\a" }
		;;
esac

function title()
{
	TITLE=$*
}

compdef _git gk=gitk
