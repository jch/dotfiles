#!/bin/bash

DOTFILESDIR=$(pwd)

mkdir -p ~/.profile.d

echo "Setting up bash..."
ln -nfs $DOTFILESDIR/bash/profile ~/.profile
if [ ! -f ~/.profile_local ]; then
  cp $DOTFILESDIR/bash/profile_local ~/.profile_local
fi

echo "Setting up emacs..."
ln -nfs $DOTFILESDIR/emacs/emacs ~/.emacs
ln -nfs $DOTFILESDIR/emacs/emacs.d ~/.emacs.d

echo "Setting up git..."
touch ~/.gitconfig.local
cat $DOTFILESDIR/gitconfig ~/.gitconfig.local > ~/.gitconfig.tmp
mv ~/.gitconfig.tmp ~/.gitconfig
ln -nfs $DOTFILESDIR/gitignore_global ~/.gitignore_global
ln -nfs $DOTFILESDIR/git-templates ~/.git_templates
ln -nfs $DOTFILESDIR/bash/git-completion ~/.profile.d/git-completion

echo "Setting up screen..."
ln -nfs $DOTFILESDIR/screenrc ~/.screenrc

echo "Setting up rdebug..."
ln -nfs $DOTFILESDIR/ruby/rdebugrc ~/.rdebugrc

echo "Setting up ack..."
ln -nfs $DOTFILESDIR/ackrc ~/.ackrc

source ~/.profile

echo ""
echo "All done!"
