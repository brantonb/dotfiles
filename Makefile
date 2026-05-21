all:
	[ -f ~/.aliases ] || ln -s $(PWD)/aliases ~/.aliases
	[ -d ~/.config/git ] || mkdir -p ~/.config/git
	[ -f ~/.config/git/config ] || ln -s $(PWD)/gitconfig ~/.config/git/config
	[ -f ~/.config/git/ignore ] || ln -s $(PWD)/gitignore ~/.config/git/ignore
	[ -L ~/.config/git/config-sitebionics ] || (rm -f ~/.config/git/config-sitebionics && ln -s $(PWD)/config-sitebionics ~/.config/git/config-sitebionics)
	[ -L ~/.config/git/config-algo ] || (rm -f ~/.config/git/config-algo && ln -s $(PWD)/config-algo ~/.config/git/config-algo)
	[ -d ~/.config/nvim ] || mkdir -p ~/.config/nvim
	[ -f ~/.config/nvim/init.vim ] || ln -s $(PWD)/init.vim ~/.config/nvim/init.vim
	[ -f ~/.config/starship.toml ] || ln -s $(PWD)/starship.toml ~/.config/starship.toml
	[ -f ~/.exports ] || ln -s $(PWD)/exports ~/.exports
	[ -f ~/.path ] || ln -s $(PWD)/path ~/.path
	[ -f ~/.tmux.conf ] || ln -s $(PWD)/tmux.conf ~/.tmux.conf
	[ -f ~/.vimrc ] || ln -s $(PWD)/vimrc ~/.vimrc
	[ -f ~/.zsh_profile ] || ln -s $(PWD)/zsh_profile ~/.zsh_profile
	[ -f ~/.zshrc ] || ln -s $(PWD)/zshrc ~/.zshrc
	[ -f ~/Brewfile ] || ln -s $(PWD)/Brewfile ~/Brewfile

clean:
	[ -h ~/.aliases ] && rm ~/.aliases
	[ -h ~/.config/git/config ] && rm ~/.config/git/config
	[ -h ~/.config/git/ignore ] && rm ~/.config/git/ignore
	[ -h ~/.config/git/config-sitebionics ] && rm ~/.config/git/config-sitebionics
	[ -h ~/.config/git/config-algo ] && rm ~/.config/git/config-algo
	[ -h ~/.config/nvim/init.vim ] && rm ~/.config/nvim/init.vim
	[ -h ~/.config/starship.toml ] && rm ~/.config/starship.toml
	[ -h ~/.exports ] && rm ~/.exports
	[ -h ~/.path ] && rm ~/.path
	[ -h ~/.tmux.conf ] && rm ~/.tmux.conf
	[ -h ~/.vimrc ] && rm ~/.vimrc
	[ -h ~/.zsh_profile ] && rm ~/.zsh_profile
	[ -h ~/.zshrc ] && rm ~/.zshrc
	[ -h ~/Brewfile ] && rm ~/Brewfile

.PHONY: all clean
