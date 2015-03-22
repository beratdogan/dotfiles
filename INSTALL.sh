#!/bin/sh

# Hi girl. Here is my dotfiles installer.
# This file allows you to install or update my environment files with one-click.

update () {
    echo "Getting up-to-date version from origin"
    git pull origin master
    echo "Here we go!"
}

install_git() {
    echo "Installing latest version of Git"
}

install_zsh() {
    echo "Installing latest version if Zsh shell"
}

make_links() {
    here=$(basename `pwd`)

    for i in *; do
        if [ -f ~/.$i ]; then
            if [ ! -L ~/.$i ]; then
                rm -i ~/.$i
                ln -s $here/$i ~/.$i
            fi
        else
            ln -s $here/$i ~/.$i
        fi
    done
}

#update

install_git
install_zsh

make_links
