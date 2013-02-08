if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

test -r /sw/bin/init.sh && . /sw/bin/init.sh
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# fixes command-t in vim
# <C-s> was not working
# found here https://wincent.com/forums/command-t/topics/486#comment_7353
stty -ixon

# hacky fix for rbenv + tmuxinator
function rvm () {
  if [[ $1 == 'use' ]]; then
    rbenv shell $2
  fi
}
