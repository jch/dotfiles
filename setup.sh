#!/bin/bash

DOTFILESDIR=$(pwd)

git pull

mkdir -p $HOME/.profile.d

echo "Setting up bash..."
ln -nfs $DOTFILESDIR/bash/profile $HOME/.profile

echo "Setting up emacs..."
ln -nfs $DOTFILESDIR/emacs/emacs   $HOME/.emacs
ln -nfs $DOTFILESDIR/emacs/emacs.d $HOME/.emacs.d

echo "Setting up git..."
ln -nfs $DOTFILESDIR/git/gitconfig        $HOME/.gitconfig
ln -nfs $DOTFILESDIR/git/gitignore_global $HOME/.gitignore_global
ln -nfs $DOTFILESDIR/git/git-templates    $HOME/.git_templates
ln -nfs $DOTFILESDIR/git/git-completion   $HOME/.profile.d/git-completion

echo "Setting up screen..."
ln -nfs $DOTFILESDIR/screenrc ~/.screenrc

echo "Setting up ruby..."
ln -nfs $DOTFILESDIR/ruby/rdebugrc ~/.rdebugrc
ln -nfs $DOTFILESDIR/ruby/irbrc    ~/.irbrc

echo "Setting up ack..."
ln -nfs $DOTFILESDIR/ackrc ~/.ackrc

echo "Setting up ctags..."
ln -nfs $DOTFILESDIR/ctags ~/.ctags

# Mac
if [ Darwin == $(uname) ] ; then
  echo "Setting up mac..."
  if [ /bin/bash != $SHELL ]; then
    echo "Changing shell to bash..."
    chsh -s /bin/bash
  fi

  which brew > /dev/null 2>&1 || {
    echo "Setting up homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  }
  brew update --quiet
  brew bundle --quiet
  brew bundle cleanup --quiet --force

  echo "Outdated homebrew packages, brew upgrade [package]..."
  brew outdated
fi

source ~/.profile

echo ""
echo "All done!"
