# Arch

## Arch Linux Official Repositories

`alacritty`
`bat`
`chafa`
`inkscape`


## AUR

`vim-youcompleteme-git` I did a `makepkg -cCfis` to reinstall and fix

# OS X

## YouCompleteMe

```console
> vim --version    # +/- python3
> brew install vim # /opt/homebrew/Cellar/vim/9.2.0000/bin/vim
> pwd              # /home/YouCompleteMe
> python3.14 install.py --clangd-completer
```

```vim
" vimrc
source /home/YouCompleteMe/plugin/youcompleteme.vim
set runtimepath+=/home/YouCompleteMe/
```

```vim
:echo has('python3')
:echo py3eval('sys.version')
:echo py3eval('sys.executable')
:echo exists('g:loaded_youcompleteme') 
```
