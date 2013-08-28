source ~/.bashrc

export PATH="$HOME/bin:$PATH"
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/usr/local/share/npm/bin:$PATH"
eval "$(rbenv init -)"

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# terrible fix for rbenv + tmuxinator
function rvm () {
  if [[ $1 == 'use' ]]; then
    rbenv shell $2
  fi
}
