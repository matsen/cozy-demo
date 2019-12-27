# Activate autojump
source /usr/share/autojump/autojump.sh

# Set up Bash prompt to include git status
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

# fdfind is what we want when we type fd
alias fd='fdfind'
