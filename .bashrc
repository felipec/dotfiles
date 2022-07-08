source ~/.rc

source /usr/local/share/bash-completion/completions/git

# Barebones version of __git_ps1
if ! declare -f __git_ps1 > /dev/null; then
__git_ps1 () {
  local gitstring
  local b="$(git rev-parse --abbrev-ref HEAD 2> /dev/null)"
  [[ -n "$b" ]] && printf -v gitstring -- "$3" "$b"
  PS1="${1}${gitstring}${2}"
}
fi

PROMPT_COMMAND='__git_ps1 "\[\e[1;34m\]\h \[\e[0;37m\]\w\[\e[m\]" " \[\e[0;32m\]\\\$\[\e[m\] " "[%s]"'

__git_complete g git

# Change the window title of X terminals
PROMPT_COMMAND="$PROMPT_COMMAND; "'echo -ne "\e]2;${PWD/#$HOME/\~}\a"'
