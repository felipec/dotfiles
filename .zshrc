fpath=(~/.zsh $fpath)

source ~/.rc

HISTFILE=~/.history
HISTSIZE=10000
SAVEHIST=50000

autoload -U compinit && compinit
autoload -U promptinit && promptinit

prompt felipec

setopt auto_cd
setopt inc_append_history

setopt auto_param_slash
setopt hist_ignore_space
setopt hist_verify
setopt correct

zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

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
