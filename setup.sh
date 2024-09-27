#!/bin/bash

DOTFILESDIR=$(pwd)

echo "Fetching latest dotfiles..."
git reset --hard > /dev/null
git clean -f
git pull > /dev/null

if [ /bin/bash != $SHELL ]; then
  echo "Changing shell to bash..."
  chsh -s /bin/bash
fi

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

  echo "Disable automatic device backups..."
  defaults write com.apple.AMPDevicesAgent.plist AutomaticDeviceBackupsDisabled -bool true

  which brew > /dev/null 2>&1 || {
    echo "Setting up homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  }
  brew update --quiet
  brew bundle --quiet

  if [[ " $@ " =~ " --personal " ]]; then
    echo "Installing Brewfile.personal packages..."
    brew bundle --file Brewfile.personal --quiet
  else
    echo "Skipping Brewfile.personal, add --personal to install desktop apps"
  fi

  echo "Removing old homebrew packages..."
  brew cleanup

  outdated_packages=$(brew outdated)
  if [ -n "$outdated_packages" ]; then
    echo "Outdated homebrew packages, brew upgrade [package]..."
    echo "$outdated_packages"
  fi
fi

echo "Sourcing profile..."
source ~/.profile
