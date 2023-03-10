fpath=(~/.zsh $fpath)

source ~/.rc

alias git='noglob git'

HISTFILE=~/.history
HISTSIZE=100000
SAVEHIST=100000

autoload -U compinit && compinit

autoload -U promptinit && promptinit
prompt felipec

setopt auto_cd
setopt inc_append_history

setopt auto_param_slash
setopt hist_ignore_space
setopt hist_verify
setopt correct

bindkey -e
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line
bindkey "\e[A" history-beginning-search-backward
bindkey "\e[B" history-beginning-search-forward
bindkey "\e[3~" delete-char
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history
bindkey "\e[1;5C" forward-word
bindkey "\e[1;5D" backward-word

zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu select yes=long

hash -d dot=~/.local/share/dot-files
hash -d d=~/dev
hash -d c=~/contrib
hash -d g=~d/git/git
hash -d l=~d/linux
hash -d ghg=~d/git-remote-hg
hash -d b=~/backup
hash -d o=~b/home

hash -d mnt=/run/media/$USER
hash -d srv=/srv/http

hash -d shared=~mnt/shared
hash -d data=~mnt/data

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
