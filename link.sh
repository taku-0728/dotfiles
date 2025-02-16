#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

for dotfile in "${SCRIPT_DIR}"/.??* ; do
    [[ "$dotfile" == "${SCRIPT_DIR}/.git" ]] && continue
    [[ "$dotfile" == "${SCRIPT_DIR}/.github" ]] && continue
    [[ "$dotfile" == "${SCRIPT_DIR}/.DS_Store" ]] && continue
    [[ "$dotfile" == "${SCRIPT_DIR}/.config" ]] && continue

    ln -fnsv $dotfile $HOME/$(basename "$dotfile")
done

ln -fnsv ${SCRIPT_DIR}/.config/kitty/kitty.conf ${HOME}/.config/kitty/kitty.conf
ln -fnsv ${SCRIPT_DIR}/.config/kitty/startup_session.conf ${HOME}/.config/kitty/startup_session.conf
