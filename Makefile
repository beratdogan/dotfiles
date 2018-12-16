all: rmlinks install

rmlinks:
	rm -rf ~/.alacritty.yml
	rm -rf ~/.bashrc
	rm -rf ~/.bash_profile
	rm -rf ~/.gitconfig
	rm -rf ~/.gitignore_global
	rm -rf ~/.tmux.conf

install:
	ln -s ~/dotfiles/alacritty.yml ~/.alacritty.yml
	ln -s ~/dotfiles/bashrc.sh ~/.bashrc
	ln -s ~/dotfiles/bash_profile.sh ~/.bash_profile
	ln -s ~/dotfiles/gitconfig ~/.gitconfig
	ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

pyenv:
	curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash