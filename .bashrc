source ~/.rc

source /usr/local/share/bash-completion/completions/git

# PS1='\[\e[1;34m\]\h \[\e[0;37m\]\w \[\e[0;32m\]\$\[\e[m\] '
# PS1='\[\e[1;34m\]\h \[\e[0;37m\]\w\[\e[m\]$(__git_ps1 "[%s]") \[\e[0;32m\]\$\[\e[m\] '
PROMPT_COMMAND='__git_ps1 "\[\e[1;34m\]\h \[\e[0;37m\]\w\[\e[m\]" " \[\e[0;32m\]\\\$\[\e[m\] " "[%s]"'

__git_complete g git

# Change the window title of X terminals
PROMPT_COMMAND="$PROMPT_COMMAND; "'echo -ne "\e]2;${PWD/#$HOME/\~}\a"'
