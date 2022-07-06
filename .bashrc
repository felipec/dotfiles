source ~/.rc

source /usr/local/share/bash-completion/completions/git

if type -t __git_ps1 > /dev/null; then
  PROMPT_COMMAND='__git_ps1 "\[\e[1;34m\]\h \[\e[0;37m\]\w\[\e[m\]" " \[\e[0;32m\]\\\$\[\e[m\] " "[%s]"'
else
  PS1='\[\e[1;34m\]\h \[\e[0;37m\]\w \[\e[0;32m\]\$\[\e[m\] '
fi

__git_complete g git

# Change the window title of X terminals
PROMPT_COMMAND="$PROMPT_COMMAND; "'echo -ne "\e]2;${PWD/#$HOME/\~}\a"'
