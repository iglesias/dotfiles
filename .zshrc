bindkey -v
bindkey '^R' history-incremental-search-backward
# Shif-Tab for backward Tab.
# bindkey '^[[Z' reverse-menu-complete

# Powerline.
# if [[ -r ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
#   source ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
# fi

alias matlabci='matlab -nosplash -nodesktop'

# Little trick to avoid automatic renaming of tmux tabs after a name has been set.
DISABLE_AUTO_TITLE=true
