# Rackspace Cloud Coding Challenge

## Get the code

    git clone https://github.com/rackerlabs/rccc.git

## Start the RCCC VM

    cd rccc
    vagrant up

## jclouds

In a new Terminal tab

    Command+Shift+I
    Title: Java

Connect to the RCCC VM

    cd rccc/
    vagrant ssh

Start the groovy shell

    cd jclouds/
    groovysh -cp "lib/*"

Set the username and apiKey

    username = "{blank}"
    apiKey = "{blank}"
