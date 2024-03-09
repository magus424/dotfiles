#!/usr/bin/env bash

git clone https://github.com/andsens/homeshick.git "$HOME/.homesick/repos/homeshick"

homeshick --batch clone git@github.com:magus424/dotfiles

homeshick link --force

# Install Vundle
mkdir -p ~/.vim/bundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install TPM
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm

# Install homebrew
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

brew bundle install --file=~/.config/Brewfile
