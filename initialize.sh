#!/bin/sh

ln -s ~/dotfiles/.emacs.d ~/
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/.gitconfig ~/.gitconfig

cp ./git-subcommands/* $(git --exec-path)
