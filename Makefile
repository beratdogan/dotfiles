all: clean install

clean:
	rm -rf ~/.alacritty.yml
	rm -rf ~/.gitconfig
	rm -rf ~/.gitignore_global
	rm -rf ~/.config/karabiner
	rm -rf ~/.tmux.conf

install:
	ln -s ~/dotfiles/alacritty.yml ~/.alacritty.yml
	ln -s ~/dotfiles/gitconfig ~/.gitconfig
	ln -s ~/dotfiles/gitignore_global ~/.gitignore_global
	ln -s ~/dotfiles/karabiner ~/.config
	ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
