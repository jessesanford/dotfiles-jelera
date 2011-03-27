#!/bin/bash

#--------------------------------#
#  backing up Existing dotfiles  #
#--------------------------------#
clear
echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
echo "Backing your existing dotfiles (if any)"
echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
echo ""
echo ""
echo "Copying them to ~/.backupdotfiles"

mkdir ~/.backupdotfiles

cp ~/.bashrc ~/.backupdotfiles/bashrc
cp ~/.bash_profile ~/.backupdotfiles/bash_profile
cp ~/.zshrc ~/.backupdotfiles/zshrc
cp ~/.vimrc ~/.backupdotfiles/vimrc
cp ~/.vim ~/.backupdotfiles/vim
cp ~/.tmux.conf ~/.backupdotfiles/tmux.conf
cp ~/.gitconfig ~/.backupdotfiles/gitconfig
cp ~/.screenrc ~/.backupdotfiles/screenrc
cp ~/.hgrc ~/.backupdotfiles/hgrc

rm -f ~/.bashrc
rm -f ~/.bash_profile
rm -f ~/.hgrc
rm -rf ~/.vim
rm -f ~/.gitconfig
rm -f ~/.zshrc
rm -f ~/.vimrc
rm -f ~/.tmux.conf
rm -f ~/.screenrc

echo "Backup done"
sleep 1.5
clear
#-----------------------#
#  Create the symlinks  #
#-----------------------#

echo "^^^^^^^^^^^^^^^^^^^^^"
echo "Creating the Symlinks"
echo "^^^^^^^^^^^^^^^^^^^^^"
echo ""
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
# ln -s $HOME/dotfiles/mutt/muttrc  $HOME/.muttrc

# Mercurial
ln -s $HOME/dotfiles/hg/hgrc $HOME/.hgrc

echo "Creating symlinks done"
sleep 1.5
clear

#------------------------------------#
#  Update Vim plugin git submodules  #
#------------------------------------#

echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
echo "Updating Vim Plugins via git submodules"
echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
echo ""

cd ~/dotfiles
git submodule init
git submodule update

echo "Vim Plugins are ready"
sleep 1.5
clear

echo ""
echo "If you get an error with git, install it and run again"
echo ""
echo "$ git submodule init"
echo "$ git submodule update"
echo ""
echo ""
echo "Enjoy!!"
