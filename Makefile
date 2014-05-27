install:
	[ -f ~/.bashrc ] || ln -s $(PWD)/bashrc ~/.bashrc
	[ -f ~/.bash_aliases ] || ln -s $(PWD)/bash_aliases ~/.bash_aliases
	[ -f ~/.bash_prompt ] || ln -s $(PWD)/bash_prompt ~/.bash_prompt
	[ -f ~/.bash_profile ] || ln -s $(PWD)/bash_profile ~/.bash_profile
	[ -f ~/.bash_export ] || ln -s $(PWD)/bash_export ~/.bash_export
	
	[ -f ~/.gitconfig ] || ln -s $(PWD)/gitconfig ~/.gitconfig
	
	[ -f ~/.inputrc ] || ln -s $(PWD)/inputrc ~/.inputrc
