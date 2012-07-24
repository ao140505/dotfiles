source ~/.bash/aliases
source ~/.bash/completions
source ~/.bash/paths
source ~/.bash/config

# use .localrc for settings specific to one system
if [ -f ~/.localrc ]; then
  source ~/.localrc
fi

export USE_BUNDLER=force

if [ -f `brew --prefix`/etc/autojump ]; then
  . `brew --prefix`/etc/autojump
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

mvim()
{
  (unset GEM_PATH GEM_HOME; command mvim "$@")
}

export EDITOR=vim
# original
# export PS1="\w$ "
export PS1='\W\[\e[1;31m\]$(__git_ps1 " (%s)")\[\e[0m\]:'
