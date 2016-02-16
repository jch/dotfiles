#!/bin/bash

DOTFILESDIR=$(pwd)

mkdir -p $HOME/.profile.d

echo "Setting up bash..."
ln -nfs $DOTFILESDIR/bash/profile $HOME/.profile
if [ ! -f $HOME/.profile_local ]; then
  cp $DOTFILESDIR/bash/profile_local $HOME/.profile_local
fi

echo "Setting up emacs..."
ln -nfs $DOTFILESDIR/emacs/emacs   $HOME/.emacs
ln -nfs $DOTFILESDIR/emacs/emacs.d $HOME/.emacs.d

echo "Setting up git..."
touch ~/.gitconfig.local

ln -nfs $DOTFILESDIR/git/gitconfig        $HOME/.gitconfig
ln -nfs $DOTFILESDIR/git/gitignore_global $HOME/.gitignore_global
ln -nfs $DOTFILESDIR/git/git-templates    $HOME/.git_templates
ln -nfs $DOTFILESDIR/git/git-completion   $HOME/.profile.d/git-completion

echo "Setting up screen..."
ln -nfs $DOTFILESDIR/screenrc ~/.screenrc

echo "Setting up rdebug..."
ln -nfs $DOTFILESDIR/ruby/rdebugrc ~/.rdebugrc

echo "Setting up ack..."
ln -nfs $DOTFILESDIR/ackrc ~/.ackrc

echo "Setting up ctags..."
ln -nfs $DOTFILESDIR/ctags ~/.ctags

echo "Setting up custom scripts..."
for s in "$DOTFILESDIR/bin/*"; do
  ln -nfs $s ~/bin/$(basename $s)
done

echo "Setting up brew packages..."
brew bundle

source ~/.profile

echo ""
echo "All done!"
