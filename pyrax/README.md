**HINT**: You can use tab completion when typing out the code below to get done quickly.

Set up pyrax

    import pyrax
    pyrax.set_setting("identity_type", "rackspace")

Create an authenticated Context

    context = pyrax.create_context(username, api_key)

Get the client for Rackspace Cloud Files in the DFW region.

    client = context.get_client("object_store", "DFW")

List the containers (note the container with the current program name)

    print "\n".join([container.name for container in client.list()])

Get a reference to the container with the current program name; change {blank}
to that name.

    cont = client.get("{blank}")

List the objects within that container.

    print "\n".join([obj.name for obj in cont.list()])

Get the object; change {blank} to the previous program name.

    obj = cont.get_object("{blank}")

Download the object and print out its contents

    print obj.fetch()

Read the message and follow the instructions for the win!
