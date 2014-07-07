#!/bin/bash

mkdir fog
cd fog

# Get a modern Ruby
sudo add-apt-repository ppa:/brightbox-rubyng
sudo apt-get ruby2.1

# Install fog
sudo gem install fog
