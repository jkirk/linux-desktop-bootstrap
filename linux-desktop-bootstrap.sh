#!/bin/bash
# Filename:      linux-desktop-boostrap.sh
# Purpose:       Bootstrap a Linux Desktop
# Authors:       Darshaka Pathirana <dpat@syn-net.org>
# Bug-Reports:   ---
# License:       This file is licensed under the GPL v2.
################################################################################

set -euo pipefail

if id -u | grep -q "^0"; then
  APT_COMMAND="apt"
else
  if command -v sudo &> /dev/null; then
    APT_COMMAND="sudo apt"
  else
    echo "Error: Not running as root and sudo is not available."
    echo "Please run this script with sudo or as root."
    exit 1
  fi
fi

${APT_COMMAND} update -q
${APT_COMMAND} install -q -y --no-install-recommends git etckeeper ansible-core

[ ! -d "${HOME}/.dotfiles" ] && git clone https://github.com/jkirk/dotfiles.git "${HOME}/.dotfiles"
[ -d "${HOME}/.dotfiles" ] && ( cd "${HOME}/.dotfiles"; git pull; sh "./create-symlinks.sh" ) || exit 1
[ ! -d "${HOME}/linux-desktop-bootstrap" ] && git clone https://github.com/jkirk/linux-desktop-bootstrap
[ -d "${HOME}/linux-desktop-bootstrap" ] && ( cd "${HOME}/linux-desktop-bootstrap"; git pull; ansible-playbook linux-desktop-base.yml ) || exit 1
