all:
	[ -f ~/.aliases ] || ln -s $(PWD)/aliases ~/.aliases
	[ -f ~/.exports ] || ln -s $(PWD)/exports ~/.exports
	[ -f ~/.path ] || ln -s $(PWD)/path ~/.path
	[ -f ~/.vimrc ] || ln -s $(PWD)/vimrc ~/.vimrc
	[ -f ~/.zsh_profile ] || ln -s $(PWD)/zsh_profile ~/.zsh_profile
	[ -f ~/.zshrc ] || ln -s $(PWD)/zshrc ~/.zshrc

clean:
	[ -h ~/.aliases ] || rm ~/.aliases
	[ -h ~/.exports ] || rm ~/.exports
	[ -h ~/.path ] || rm ~/.path
	[ -h ~/.vimrc ] && rm ~/.vimrc
	[ -h ~/.zsh_profile ] && rm ~/.zsh_profile
	[ -h ~/.zshrc ] && rm ~/.zshrc

.PHONY: all
