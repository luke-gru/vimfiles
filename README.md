#Setup:

> rm -rf $HOME/.vim

> git clone git@github.com:luke-gru/vimfiles.git $HOME/.vim

> cd $HOME/.vim && git submodule update --init

*Done!*

#Updating submodule'd plugins to their latest versions:

> cd $HOME/.vim && git submodule foreach git fetch origin --tags && git pull origin master && git submodule update --init --recursive
