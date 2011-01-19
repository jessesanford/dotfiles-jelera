#!/bin/bash

#######################
# CREATING THE SYMLINKS
#######################

# Vim
ln -s $HOME/dotfiles/vim  $HOME/.vim
ln -s $HOME/dotfiles/vim/vimrc  $HOME/.vimrc

# Bash
ln -s $HOME/dotfiles/bash/bash_profile $HOME/.bash_profile
ln -s $HOME/dotfiles/bash/bashrc $HOME/.bashrc

# Zsh
ln -s $HOME/dotfiles/zsh/zshrc  $HOME/.zshrc

# tmux
ln -s $HOME/dotfiles/tmux/tmux.conf  $HOME/.tmux.conf

# GNU Screen
ln -s $HOME/dotfiles/gnu-screen/screenrc  $HOME/.screenrc

# git
ln -s $HOME/dotfiles/git/gitconfig  $HOME/.gitconfig

# mutt
ln -s $HOME/dotfiles/mutt/muttrc  $HOME/.muttrc

# Mercurial
ln -s $HOME/dotfiles/hg/hgrc $HOME/.hgrc
