#!/bin/bash

DOTFILESDIR=$(pwd)

echo "Setting up bash..."
rm -f ~/.profile
ln -s $DOTFILESDIR/bash/profile ~/.profile

echo "Setting up emacs..."
rm -rf ~/.emacs ~/.emacs.d
ln -s $DOTFILESDIR/emacs/emacs ~/.emacs
ln -s $DOTFILESDIR/emacs/emacs.d ~/.emacs.d

echo "Setting up git..."
rm -f ~/.gitconfig
ln -s $DOTFILESDIR/gitconfig ~/.gitconfig

echo "Setting up screen..."
rm -f ~/.screenrc
ln -s $DOTFILESDIR/screenrc ~/.screenrc

echo "Setting up rdebug..."
rm -f ~/.rdebugrc
ln -s $DOTFILESDIR/ruby/rdebugrc ~/.rdebugrc

echo "All done!"
echo "Don't forget to 'source ~/.profile'"
