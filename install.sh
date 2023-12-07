#!/usr/bin/env bash

dotdir=$(dirname "$0")

dotfiles=(
    .bashrc
    .tmux.config
)

for file in "${dotfiles[@]}"; do
    ln -s "$dotdir/$file" "$HOME/$file"
done

echo "Successful Install"
