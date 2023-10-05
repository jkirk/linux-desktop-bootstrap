# Linux Desktop Bootstrap

Make your GNU/Linux Debian Desktop usable.

## Requirements

OS: GNU/Linux Debian (bookworm)

Tools:

* busybox

or:

* wget

## Usage

We assume a very minimal Linux Desktop system.

```sh
❯ busybox wget https://raw.githubusercontent.com/jkirk/linux-desktop-bootstrap/main/linux-desktop-bootstrap.sh
❯ sh ./linux-desktop-bootstrap.sh
```

If you have wget installed and do not want to use busybox, run:

```sh
❯ wget https://raw.githubusercontent.com/jkirk/linux-desktop-bootstrap/main/linux-desktop-bootstrap.sh
❯ sh ./linux-desktop-bootstrap.sh
```

Note, that unzip does not support stdin as input. You have to download the zip file first.

## Base selection (linux-desktop-base.yml)

The following (command line) tools will be installed:

- curl
- etckeeper
- git
- htop
- iotop
- psmisc
- tmux
- unzip
- vim
- vim-scripts
- zsh

It disables apt recommenends and sets zsh as default shell.

## Extended base selection (linux-desktop-extended-base.yml)

The following (command line) tools will be installed:

- nnn
- jq
- taskwarrior
- starship
- vim-airline
- vim-fugitive
- vim-voom

## GUI/Office software selection (linux-desktop-office.yml)

The following GUI/Office tools will be installed:

- autokey-gtk
- curl
- dioden
- doublecmd-gtk
- gnupg
- keepassxc
- libreoffice
- mpv
- thunderbird
- syncthing
- vim-gtk3

## FAQ

### busybox is not installed. What shall I do?

If busybox is not really not installed, run this:

```sh
❯ sudo apt install busybox
```
