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

## Alacritty

https://github.com/orgs/Homebrew/discussions/6482 `¯\_(ツ)_/¯`

All you need is git clone and cargo build :octocat: 🤝 :crab:

### Exclude directory from Spotlight

```console
> mdfind "alacritty"
```

Then, add directory to something like `System Preferences → Spotlight → Spotlight Privacy`.

### Bundle app

```console
> mkdir -p /somewhere/Alacritty.app/Contents/MacOS
> cp /directory/alacritty/target/debug/alacritty /somewhere/Alacritty.app/Contents/MacOS/alacritty
> chmod +x /somewhere/Apps/Alacritty.app/Contents/MacOS/alacritty
```
Put 
```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>CFBundleExecutable</key>
    <string>alacritty</string>
    <key>CFBundleName</key>
    <string>Alacritty</string>
    <key>CFBundlePackageType</key>
    <string>APPL</string>
    <key>CFBundleVersion</key>
    <string>1.0</string>
</dict>
</plist>
```
into `/somehwere/Apps/Alacritty.app/Contents/Info.plist`.
