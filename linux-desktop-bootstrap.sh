#!/bin/sh
# Filename:      linux-desktop-boostrap.sh
# Purpose:       Bootstrap a Linux Desktop
# Authors:       Darshaka Pathirana <dpat@syn-net.org>
# Bug-Reports:   ---
# License:       This file is licensed under the GPL v2.
################################################################################

sudo apt install -y --no-install-recommends git etckeeper ansible
[ ! -d "${HOME}/.dotfiles" ] && git clone https://github.com/jkirk/dotfiles.git "${HOME}/.dotfiles"
( cd "${HOME}/.dotfiles"; sh "./create-symlinks.sh" ) || exit 1
ansible-playbook -K linux-desktop-base.yml
