#!/usr/bin/env bash

dotdir=$(cd "$(dirname "$0")" && pwd)

dotfiles=(
    .bashrc
    .tmux.config
)

for file in "${dotfiles[@]}"; do
    ln -s "$dotdir/$file" "$HOME/$file"
done

echo "Successful Install"
