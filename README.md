# Linux Desktop Bootstrap

Make your GNU/Linux Debian Desktop usable.

## Description (aka What makes a Debian Desktop usable?)

The default Debian desktop comes with only the most basic software stack.

To make it really usable, a lot more needs to be installed, and I got quite
annoyed at having to find and install the tools I needed every time I set up a
new Debian desktop (even if it was not for myself).

So here it is: a simple script `linux-desktop-bootstrap.sh` that does the most basic things:

- install the following "bootstrapping" packages: `git`, `etckeeper`, `ansible-core`
- clone my [dotfiles](https://github.com/jkirk/dotfiles.git)
- clone / update this `linux-desktop-boostrap` Ansible playbook collection to `$HOME/linux-desktop-bootstrap`
- deploy the [Base selection (linux-desktop-base.yml)](#base-selection-linux-desktop-baseyml)

## Requirements

OS: GNU/Linux Debian (bookworm)

Tools:

* busybox

or:

* wget

## Usage

We assume a very minimal Linux Desktop system.

```sh
❯ busybox wget -O - https://raw.githubusercontent.com/jkirk/linux-desktop-bootstrap/main/linux-desktop-bootstrap.sh | bash
```

If you have wget installed and do not want to use busybox, run:

```sh
❯ wget -O - https://raw.githubusercontent.com/jkirk/linux-desktop-bootstrap/main/linux-desktop-bootstrap.sh | bash
```

Note, that unzip does not support stdin as input. You have to download the zip-file first.

## Base selection (linux-desktop-base.yml)

See: [linux-desktop-base.yml](https://github.com/jkirk/linux-desktop-bootstrap/blob/main/linux-desktop-base.yml)

This playbook disables apt recommends, sets zsh as the default shell, and installs the following basic (command-line) tools:

- curl
- etckeeper
- git
- htop
- iotop
- jq
- psmisc
- tmux
- unzip
- vim
- vim-scripts
- zsh

## Extended base selection (linux-desktop-extended-base.yml)

The following (command line) tools will be installed:

- nnn
- jq
- taskwarrior
- starship
- vim-airline
- vim-fugitive
- vim-voom

## DevOps software selection (linux-desktop-devops.yml)

The following (command line) tools will be installed:

- nmap
- python3-sphinx
- smbclient
- strace

podman:

- golang-github-containernetworking-plugin-dnsname
- podman-docker
- podman-compose
- slirp4netns
- uidmap

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

## Special software in Debian

- linux-desktop-darktable.yml: Installs [darktable](https://www.darktable.org/) - an open source photography workflow application and raw developer
- linux-desktop-samba.yml: Installs Samba - SMB/CIFS file, print, and login server for Unix

## Special software not in Debian

- linux-desktop-anydesk.yml: Installs [AnyDesk](https://anydesk.com/en/downloads/linux)
- linux-desktop-element.yml: Installs [Element App](https://element.io/download)
- linux-desktop-freetube.yml: Installs [FreeTube](https://freetubeapp.io/#download)
- linux-desktop-rustdesk.yml Install [rustdesk](https://rustdesk.com/) - a full-featured open source remote control
- linux-desktop-signal.yml Install [Signal Desktop](https://signal.org/download/#)
- linux-desktop-virtualbox.yml [Virtualbox](https://www.virtualbox.org/wiki/Linux_Downloads)
- linux-desktop-vscodium.yml [VSCodium](https://vscodium.com/#install)
- linux-desktop-zoom.yml [Zoom](https://zoom.us/download#client_4meeting)

## FAQ

### busybox is not installed. What shall I do?

If busybox is not really not installed, run this:

```sh
❯ sudo apt install busybox
```
