# Setup vim:

> rm -rf $HOME/.vim

> git clone git@github.com:luke-gru/vimfiles.git $HOME/.vim

> cd $HOME/.vim && git submodule update --init --recursive

*Done!*

# Updating submodule'd plugins to their latest versions:

> cd $HOME/.vim && git submodule foreach git fetch origin --tags && git pull origin master && git submodule update --init --recursive

# Setup neovim:

Do the vim setup, and then run:

> mkdir -p $HOME/.config

> ln -s $HOME/.vim $HOME/.config/nvim

Make sure you have a nerdfont patched monospace font installed and set as default font in your terminal.
I use BistromWera Nerd Font Mono.
