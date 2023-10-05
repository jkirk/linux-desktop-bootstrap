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
❯ busybox wget -O - https://raw.githubusercontent.com/jkirk/linux-desktop-bootstrap/main/linux-desktop-bootstrap.sh | sh
```

If you have wget installed and do not want to use busybox, run:

```sh
❯ wget -O - https://raw.githubusercontent.com/jkirk/linux-desktop-bootstrap/main/linux-desktop-bootstrap.sh | sh
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

## Special software not in Debian

- linux-desktop-element.yml: Installs [Element App](https://element.io/download)
- linux-desktop-freetube.yml: Installs [FreeTube](https://freetubeapp.io/#download)
- linux-desktop-signal.yml Install [Signal Desktop](https://signal.org/download/#)
- linux-desktop-virtualbox.yml [Virtualbox](https://www.virtualbox.org/wiki/Linux_Downloads)
- linux-desktop-vscodium.yml [VSCodium](https://vscodium.com/#install)

## FAQ

### busybox is not installed. What shall I do?

If busybox is not really not installed, run this:

```sh
❯ sudo apt install busybox
```
