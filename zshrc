[ -n "$PS1" ] && source ~/.zsh_profile

eval "$(op completion zsh)"; compdef _op op

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
