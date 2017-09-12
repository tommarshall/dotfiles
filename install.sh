#!/usr/bin/env bash

# latest homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# # Install GNU core utilities (those that come with OS X are outdated)
# brew install coreutils
# echo "Don't forget to add $(brew --prefix coreutils)/libexec/gnubin to \$PATH."

# # install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
# brew install findutils

# install packages
brew install wget
brew install git
brew install rename
brew install tree

# ruby
brew install chruby
brew install ruby-install
ruby-install ruby

# remove outdated versions from the cellar
brew cleanup
