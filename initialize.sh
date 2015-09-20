#!/bin/sh

# .emacs.d
ln -s ~/dotfiles/.emacs.d ~/.emacs.d

# zsh
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.zshenv ~/.zshenv

# tmux
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf

# homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# llvm
brew install --with-clang --all-targets --rtti --universal --jit llvm

# global(for gtags)
brew install global --with-exuberant-ctags --with-pygments
