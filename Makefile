all: rmlinks install

rmlinks:
	rm -rf ~/.alacritty.yml
	rm -rf ~/.gitconfig
	rm -rf ~/.gitignore_global
	rm -rf ~/.tmux.conf

install:
	ln -s ~/dotfiles/alacritty.yml ~/.alacritty.yml
	ln -s ~/dotfiles/gitconfig ~/.gitconfig
	ln -s ~/dotfiles/gitignore_global ~/.gitignore_global
	ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
