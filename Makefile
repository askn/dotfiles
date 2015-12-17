install:
	[ -f ~/.bash_aliases ] || ln -s $(PWD)/bash_aliases ~/.bash_aliases
	[ -f ~/.bash_prompt ] || ln -s $(PWD)/bash_prompt ~/.bash_prompt
	[ -f ~/.bash_profile ] || ln -s $(PWD)/bash_profile ~/.bash_profile
	[ -f ~/.bash_export ] || ln -s $(PWD)/bash_export ~/.bash_export

	[ -f ~/.gitconfig ] || ln -s $(PWD)/gitconfig ~/.gitconfig
	[ -f ~/.gitignore_global ] || ln -s $(PWD)/gitignore_global ~/.gitignore_global

	[ -f ~/.inputrc ] || ln -s $(PWD)/inputrc ~/.inputrc

	[ -f ~/.tmux.conf ] || ln -s $(PWD)/tmux.conf ~/.tmux.conf

	[ -d ~/.vim ] || ln -sfn $(PWD)/vim ~/.vim
	[ -f ~/.vimrc ] || ln -s $(PWD)/vim/vimrc ~/.vimrc
	[ -f ~/.Xresources ] || ln -s $(PWD)/Xresources ~/.Xresources

	[ -f ~/.gemrc ] || ln -s $(PWD)/gemrc ~/.gemrc
	[ -f ~/.ackrc ] || ln -s $(PWD)/ackrc ~/.ackrc
	[ -f ~/.irbrc ] || ln -s $(PWD)/irbrc ~/.irbrc
	[ -f ~/.rubocop.yml ] || ln -s $(PWD)/rubocop.yml ~/.rubocop.yml
