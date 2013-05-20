source ~/.bash/aliases
source ~/.bash/completions
source ~/.bash/paths

if [ -f ~/.server_aliases ]; then
  source ~/.server_aliases
fi

# use .localrc for settings specific to one system
if [ -f ~/.localrc ]; then
  source ~/.localrc
fi

export USE_BUNDLER=force

if [ -f `brew --prefix`/etc/autojump ]; then
  . `brew --prefix`/etc/autojump
fi

export EDITOR=vim
export PS1='\W\[\e[1;31m\]$(__git_ps1 " (%s)")\[\e[0m\]:'


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
