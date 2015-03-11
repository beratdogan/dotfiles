# Hi girl. Here is my dotfiles installer.
# This makefile allows you to install or update my environment files with one-click.

all: git_install vim_install tmux_install

update:
	@echo "Getting up-to-date version from origin"
	@git pull origin master
	@echo "Here we go"

hello:
	@echo "Hello there"

git_install:
	@cp git/.gitconfig $(HOME)/.gitconfig
	@cp git/.gitignore_global $(HOME)/.gitignore_global

vim_install:

tmux_install:

