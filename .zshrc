fpath=( ~/.zsh $fpath )

zstyle ':completion:*' completer _complete
zstyle :compinstall filename '/home/felipec/.zshrc'
zstyle ':completion:*' special-dirs true

autoload -Uz compinit
compinit

autoload -U colors
colors

# autoload bashcompinit
# bashcompinit

HISTFILE=~/.histfile
SAVEHIST=100000
HISTSIZE=10000

# setopt append_history
setopt hist_ignore_all_dups
setopt hist_no_store
setopt hist_reduce_blanks
setopt hist_verify
setopt complete_in_word
setopt inc_append_history

bindkey -e
bindkey "\e[3~" delete-char
bindkey "\e[2~" quoted-insert
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line

bindkey ' ' magic-space # also do history expansion on space
bindkey '^I' complete-word # complete on tab, leave expansion to _expand

# History completion on pgup and pgdown
autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "\e[5~" history-beginning-search-backward-end
bindkey "\e[6~" history-beginning-search-forward-end

hash -d data=/data/public
hash -d src=/data/public/src
hash -d dev=/data/public/dev
hash -d home=/data/public/felipec
hash -d todo=/data/public/felipec/todo
hash -d notes=/data/public/felipec/notes

hash -d private=/data/private
hash -d gst-dsp=/data/public/dev/omap/gst-dsp
hash -d pecan=/data/public/dev/msn/msn-pecan
hash -d sb_home="/opt/scratchbox/users/felipec/home/felipec"

alias gitg=/opt/gitg/bin/gitg
alias gp=~/bin/gst-player
alias e=/opt/epris/bin/epr
alias xo=xdg-open

alias mv=mv -i
alias l=ls
alias ll=ls -l

alias devh=devhelp -s

case $TERM in
    xterm*)
        precmd () { print -Pn "\e]0;%n@%m: %~\a" }
        ;;
esac

qf () {
 	flasher -f --flash-only=nolo,kernel,rootfs -F "$@"
}
