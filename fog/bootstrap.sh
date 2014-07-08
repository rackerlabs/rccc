#!/bin/bash

mkdir fog
cd fog

# Get a modern Ruby
sudo add-apt-repository ppa:brightbox/ruby-ng
sudo apt-get update
sudo apt-get install -y ruby2.1 ruby2.1-dev

# Install fog
sudo gem install fog
