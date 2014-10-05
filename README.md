## Installation

You should backup the following type of dotfiles:

* .bashrc
* .bash_profile
* .gitconfig
* .vimrc
* .vim/
* .gvimrc
* etc.

Note: You will be prompted before any file or folder is overwritten and
you will have an option to create a backup of each file.

    git clone git://github.com/ao140505/dotfiles ~/.dotfiles
    cd ~/.dotfiles
    rake install
