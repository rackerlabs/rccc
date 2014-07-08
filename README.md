# Rackspace Cloud Coding Challenge

## Get the code

    git clone https://github.com/rackerlabs/rccc.git

## Start the RCCC VM

    cd rccc
    vagrant up
    
## Stop the RCCC VM before turning off the laptop

    vagrant halt

## Java: SDK = jclouds

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
    
Clear the history at the end of a challenge

    :H clear
    
Quit the groovy shell at the end of the day

    :q

## Python: SDK = pyrax

In a new Terminal tab

    Command+Shift+I
    Title: Python

Connect to the RCCC VM

    cd rccc/
    vagrant ssh

Start the python interpreter

    cd pyrax/
    python

Set the username and apiKey

    username = "{blank}"
    api_key = "{blank}"

Clear the history at the end of a challenge

    import readline
    readline.clear_history()

## Ruby: SDK = fog

In a new Terminal tab

    Command+Shift+I
    Title: Ruby

Connect to the RCCC VM

    cd rccc/
    vagrant ssh

Start the ruby interpreter

    cd fog/
    TODO

Set the username and apiKey

    username = "{blank}"
    apiKey = "{blank}"

Clear the history at the end of a challenge

    TODO
