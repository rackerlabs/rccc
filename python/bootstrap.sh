#!/bin/bash

mkdir python
cd python

# Get pip
sudo apt-get update
sudo apt-get install -y python-pip

# Get pyrax
sudo pip install pyrax
