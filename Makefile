all:
	[ -f ~/.aliases ] || ln -s $(PWD)/aliases ~/.aliases
	[ -d ~/.config/nvim ] || mkdir -p ~/.config/nvim
	[ -f ~/.config/nvim/init.vim ] || ln -s $(PWD)/init.vim ~/.config/nvim/init.vim
	[ -f ~/.exports ] || ln -s $(PWD)/exports ~/.exports
	[ -f ~/.path ] || ln -s $(PWD)/path ~/.path
	[ -f ~/.vimrc ] || ln -s $(PWD)/vimrc ~/.vimrc
	[ -f ~/.zsh_profile ] || ln -s $(PWD)/zsh_profile ~/.zsh_profile
	[ -f ~/.zshrc ] || ln -s $(PWD)/zshrc ~/.zshrc
	[ -f ~/Brewfile ] || ln -s $(PWD)/Brewfile ~/Brewfile

clean:
	[ -h ~/.aliases ] || rm ~/.aliases
	[ -h ~/.config/nvim/init.vim ] || rm ~/.config/nvim/init.vim
	[ -h ~/.exports ] || rm ~/.exports
	[ -h ~/.path ] || rm ~/.path
	[ -h ~/.vimrc ] && rm ~/.vimrc
	[ -h ~/.zsh_profile ] && rm ~/.zsh_profile
	[ -h ~/.zshrc ] && rm ~/.zshrc
	[ -f ~/Brewfile ] || ln -s $(PWD)/Brewfile ~/Brewfile

.PHONY: all
