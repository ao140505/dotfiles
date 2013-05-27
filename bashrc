source ~/.bash/aliases
source ~/.bash/completions

export USE_BUNDLER=force

export EDITOR=vim
export PS1='\W\[\e[1;31m\]$(__git_ps1 " (%s)")\[\e[0m\]:'

export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"

# fix command-t in vim
stty -ixon

# terrible fix for rbenv + tmuxinator
function rvm () {
  if [[ $1 == 'use' ]]; then
    rbenv shell $2
  fi
}

set -o vi
