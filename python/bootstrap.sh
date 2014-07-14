#!/bin/bash

mkdir python
cd python

# Get pip
sudo apt-get update
sudo apt-get install -y python-dev
sudo apt-get install -y python-pip

# Install ipython
sudo pip install ipython
sudo easy_install readline

# Get pyrax
sudo pip install pyrax
