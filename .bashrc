source ~/.rc

if [[ -r /usr/local/share/bash-completion/completions/git ]]; then
  source /usr/local/share/bash-completion/completions/git
  __git_complete g git
  __git_complete c git
fi

# Dummy version of __git_ps1
declare -f __git_ps1 > /dev/null || __git_ps1 () { PS1="$1$2"; }

PROMPT_COMMAND='__git_ps1 "\[\e[1;34m\]\h\[\e[m\] \w" " \[\e[0;32m\]\\\$\[\e[m\] " "[%s]"'

# Change the window title of X terminals
PROMPT_COMMAND="$PROMPT_COMMAND; "'echo -ne "\e]2;${PWD/#$HOME/\~}\a"'
