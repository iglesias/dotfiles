bindkey -v
bindkey '^R' history-incremental-search-backward
# Shif-Tab for backward Tab.
# bindkey '^[[Z' reverse-menu-complete

# Powerline.
# if [[ -r ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
#   source ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
# fi

# Avoid automatic renaming of tmux tabs after a name has been set.
DISABLE_AUTO_TITLE=true

export GIT_EDITOR=vim

# oh-my-zsh
plugins=(git extract zsh-autosuggestions)
