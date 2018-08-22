if [ -f /etc/profile ]; then
    PATH=""
    source /etc/profile
fi

export PATH="$HOME/bin:$PATH"
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/usr/local/share/npm/bin:$PATH"
eval "$(rbenv init -)"

. ~/.bash/aliases
source ~/.bash/completion_scripts/git_completion
source ~/.bash/completion_scripts/git_prompt.sh

export USE_BUNDLER=force

export EDITOR=vim
export PS1='\W\[\e[1;31m\]$(__git_ps1 " (%s)")\[\e[0m\]:'

export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"

# moar history
export HISTSIZE=10000
export HISTFILESIZE=$HISTSIZE

# silence annoying "[tunemygc] not enabled" messages
export RUBY_GC_TUNE_VERBOSE=0

# fix command-t in vim
stty -ixon

# Erase duplicates in history
export HISTCONTROL=erasedups
# Append to the history file when exiting instead of overwriting it
shopt -s histappend

ulimit -n 4096

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# terrible fix for rbenv + tmuxinator
function rvm () {
  if [[ $1 == 'use' ]]; then
    rbenv shell $2
  fi
}

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

## lendinghome toolbelt
export PATH="~/work/lendinghome-monolith/toolbelt:~/work/lendinghome-monolith/bin:$PATH"

export NVM_DIR="/Users/aokolish/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export RUBY_GC_TUNE_VERBOSE=0
