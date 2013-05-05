fpath=(~/.zsh $fpath)

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

PS1='%{$fg_bold[green]%} %# %{$reset_color%}'
RPS1='%{$fg[white]%}%~$(__git_ps1 "[%%{$fg[yellow]%%}%s%%{$reset_color%%}]") %{$fg_bold[blue]%}%m%{$reset_color%}'

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

hash -d g=~/dev/git
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
	precmd () { print -Pn "\e]0;${TITLE:-%2~}\a" }
	;;
esac

function title() {
	TITLE=$*
}

compdef _git gk=gitk gkm=gitk gkb=gitk
