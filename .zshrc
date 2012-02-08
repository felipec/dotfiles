autoload -U compinit && compinit
autoload -U colors && colors

autoload -U bashcompinit && bashcompinit
source ~/.git-completion.sh

HISTFILE=~/.histfile
SAVEHIST=1000000
HISTSIZE=1000000
HISTIGNORE="ls:[bf]g:exit:reset:clear:cd *"

# PS1='%m:%~%# '
PS1='%m:%~$(__git_ps1 "[%%F{5}%s%%f]")%# '

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

hash -d private=/private
hash -d gst-dsp=/data/dev/omap/gst-dsp
hash -d pecan=/data/dev/msn/msn-pecan
hash -d sb_home="/opt/scratchbox/users/felipec/home/felipec"

alias gitg=/opt/gitg/bin/gitg
alias gp=~/bin/gst-player
alias e=/opt/epris/bin/epr
alias xo=xdg-open

alias v="gvim"
alias mv="mv -i"
alias l="ls"
alias ll="ls -l"
alias g="git"
alias gka="gk --all"
alias gkb="gk --branches ^master"

alias devh="devhelp -s"

case $TERM in
	xterm*)
		precmd () { print -Pn "\e]0;${TITLE:-%m: %~}\a" }
		;;
esac

function gk()
{
	gitk $* &
}

function title()
{
	TITLE=$*
}
