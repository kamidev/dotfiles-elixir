#!/bin/sh

brew update
brew upgrade
brew cleanup

nvim +PlugUpdate +UpdateRemotePlugins +qa
