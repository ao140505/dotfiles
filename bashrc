. ~/.bash/aliases
. ~/.bash/completions

export USE_BUNDLER=force

export EDITOR=vim
export PS1='\W\[\e[1;31m\]$(__git_ps1 " (%s)")\[\e[0m\]:'

export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"

# moar history
export HISTSIZE=10000
export HISTFILESIZE=$HISTSIZE

# fix command-t in vim
stty -ixon

# Erase duplicates in history
export HISTCONTROL=erasedups
# Append to the history file when exiting instead of overwriting it
shopt -s histappend
