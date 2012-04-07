#Setup:

> rm -rf $HOME/.vim

> git clone git@github.com:luke-gru/sickvim.git $HOME/.vim

> cd .vim && git submodule update --init

*Done!*

#Updating submodule'd plugins to their latest versions:

> cd $HOME/.vim && submodule foreach git fetch origin --tags && git pull origin master && git submodule update --init --recursive
