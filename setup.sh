#!/bin/bash

DOTFILESDIR=$(pwd)

# Emacs
rm -rf ~/.emacs ~/.emacs.d
ln -s $DOTFILESDIR/emacs/emacs ~/.emacs
ln -s $DOTFILESDIR/emacs/emacs.d ~/.emacs.d

# Git
rm -f ~/.gitconfig
ln -s $DOTFILESDIR/gitconfig ~/.gitconfig

# Screen
rm -f ~/.screenrc
ln -s $DOTFILESDIR/screenrc ~/.screenrc