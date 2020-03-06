all:
	[ -f ~/.exports ] || ln -s $(PWD)/exports ~/.exports
	[ -f ~/.vimrc ] || ln -s $(PWD)/vimrc ~/.vimrc
	[ -f ~/.zsh_profile ] || ln -s $(PWD)/zsh_profile ~/.zsh_profile
	[ -f ~/.zshrc ] || ln -s $(PWD)/zshrc ~/.zshrc

clean:
	[ -h ~/.vimrc ] && rm ~/.vimrc
	[ -h ~/.zsh_profile ] && rm ~/.zsh_profile
	[ -h ~/.zshrc ] && rm ~/.zshrc

.PHONY: all
