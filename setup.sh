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
ln -nfs $DOTFILESDIR/gitignore_global ~/.gitignore_global
ln -nfs $DOTFILESDIR/git-templates ~/.git_templates

echo "Setting up screen..."
ln -nfs $DOTFILESDIR/screenrc ~/.screenrc

echo "Setting up rdebug..."
ln -nfs $DOTFILESDIR/ruby/rdebugrc ~/.rdebugrc

echo "Setting up ack..."
ln -nfs $DOTFILESDIR/ackrc ~/.ackrc

echo "Setting up rvm..."
if [ ! -d ~/.rvm ];
  then bash < <( curl http://rvm.beginrescueend.com/releases/rvm-install-head )
fi
mkdir -p ~/.rvm/gemsets
ln -nfs $DOTFILESDIR/rvm/global.gems ~/.rvm/gemsets/global.gems

echo "Setting up sublime text 2..."
if [ -d ~/Library/Application\ Support ];
  then ln -nfs $DOTFILESDIR/sublime_text/Sublime\ Text\ 2 ~/Library/Application\ Support/Sublime\ Text\ 2
fi

echo ""
echo "All done!"
echo "Don't forget to 'source ~/.profile'"
