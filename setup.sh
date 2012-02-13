#!/bin/bash

DOTFILESDIR=$(pwd)

echo "Setting up bash..."
ln -nfs $DOTFILESDIR/bash/profile ~/.profile

echo "Setting up emacs..."
ln -nfs $DOTFILESDIR/emacs/emacs ~/.emacs
ln -nfs $DOTFILESDIR/emacs/emacs.d ~/.emacs.d

echo "Setting up git..."
cat $DOTFILESDIR/gitconfig ~/.gitconfig.local > ~/.gitconfig.tmp
mv ~/.gitconfig.tmp ~/.gitconfig

echo "Setting up screen..."
ln -nfs $DOTFILESDIR/screenrc ~/.screenrc

echo "Setting up rdebug..."
ln -nfs $DOTFILESDIR/ruby/rdebugrc ~/.rdebugrc

echo "Setting up rvm..."
if [ ! -d ~/.rvm ];
  then bash < <( curl http://rvm.beginrescueend.com/releases/rvm-install-head )
fi
mkdir -p ~/.rvm/gemsets
ln -nfs $DOTFILESDIR/rvm/global.gems ~/.rvm/gemsets/global.gems

echo ""
echo "All done!"
echo "Don't forget to 'source ~/.profile'"
