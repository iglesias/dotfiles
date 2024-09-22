autoload -Uz compinit && compinit

# https://github.com/rothgar/mastering-zsh/blob/master/docs/helpers/aliases.md#automatically-expand-aliases
globalias() {
   zle _expand_alias
   zle expand-word
   zle self-insert
}
zle -N globalias

# space expands all aliases, including global
bindkey -M emacs " " globalias
bindkey -M viins " " globalias

# control-space to make a normal space
bindkey -M emacs "^ " magic-space
bindkey -M viins "^ " magic-space

# normal space during searches
bindkey -M isearch " " magic-space

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
