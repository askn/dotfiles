install:
	[ -f ~/.bashrc ] || ln -s $(PWD)/bashrc ~/.bashrc
	[ -f ~/.bash_aliases ] || ln -s $(PWD)/bash_aliases ~/.bash_aliases
	[ -f ~/.bash_prompt ] || ln -s $(PWD)/bash_prompt ~/.bash_prompt
	[ -f ~/.bash_profile ] || ln -s $(PWD)/bash_profile ~/.bash_profile
	[ -f ~/.bash_export ] || ln -s $(PWD)/bash_export ~/.bash_export

	[ -f ~/.gitconfig ] || ln -s $(PWD)/gitconfig ~/.gitconfig
	[ -f ~/.gitignore_global ] || ln -s $(PWD)/gitignore_global ~/.gitignore_global

	[ -f ~/.inputrc ] || ln -s $(PWD)/inputrc ~/.inputrc

	[ -f ~/.tmux.conf ] || ln -s $(PWD)/tmux.conf ~/.tmux.conf

	ln -sfn $(PWD)/vim ~/.vim
	ln -s $(PWD)/vim/vimrc ~/.vimrc
