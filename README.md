# Rackspace Cloud Coding Challenge

## Requirements

1. Vagrant
2. Ruby 1.9+

## Get the code

    git clone https://github.com/rackerlabs/rccc.git

## Start the RCCC VM

    cd rccc
    vagrant up

## Stop the RCCC VM before turning off the laptop

    cd rccc
    vagrant halt

## The Rackspace Java SDK (jclouds)

In a new Terminal tab

    Command+Shift+I
    Title: Java

Connect to the RCCC VM

    cd rccc/
    vagrant ssh

Start the groovy shell

    cd java/
    groovysh -cp "lib/*"

Set the username and apiKey variables

    username = "{blank}"
    apiKey = "{blank}"

At this point you are ready for RCCC participants, see the [Java README](java/README.md)

Clear the history at the end of a challenge

    :H clear

Quit the groovy shell at the end of the day

    :q

## The Rackspace Python SDK (pyrax)

In a new Terminal tab

    Command+Shift+I
    Title: Python

Connect to the RCCC VM

    cd rccc/
    vagrant ssh

Start the iPython interpreter

    cd python/
    ipython

Set the username and api_key variables

    username = "{blank}"
    api_key = "{blank}"

At this point you are ready for RCCC participants, see the [Python README](python/README.md)

Clear the history at the end of a challenge

    import readline
    readline.clear_history()

## The Rackspace Ruby SDK (fog)

In a new Terminal tab

    Command+Shift+I
    Title: Ruby

Connect to the RCCC VM

    cd rccc/
    vagrant ssh

Start the ruby interpreter

    cd ruby/
    pry

Set the username and api_key variables

    username = "{blank}"
    api_key = "{blank}"

At this point you are ready for RCCC participants, see the [Ruby README](ruby/README.md)

Clear the history at the end of a challenge

    hist --clear
