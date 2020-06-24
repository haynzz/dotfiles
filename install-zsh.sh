#!/bin/bash
brew cask install iterm2
brew install zsh zsh-completions
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
zsh --version
upgrade_oh_my_zsh
zsh --version
chsh -s /usr/local/bin/zsh