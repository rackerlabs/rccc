# The Rackspace Python SDK (pyrax)

**HINT**: You can use tab completion when typing out the code below to get done quickly.

**HINT**: You can find these instructions online at rack.to/rccc-python

Set up pyrax

```python
import pyrax
pyrax.set_setting("identity_type", "rackspace")
```

Create an authenticated Context

```python
context = pyrax.create_context()
context.set_credentials(username, api_key)
context.authenticate()
```

Get the client for Rackspace Cloud Files in the DFW region

```python
client = context.get_client("object_store", "DFW")
```

List the containers (note the container with the current program name)

```python
print "\n".join([container.name for container in client.list()])
```

Get the container with the current program name; change {blank} to that name

```python
cont = client.get("{blank}")
```

List the objects within that container

```python
print "\n".join([obj.name for obj in cont.list()])
```

Get the object; change {blank} to the previous program name

```python
obj = cont.get_object("{blank}")
```

Download the object and print out its contents

```python
print obj.fetch()
```

Read the message and follow the instructions for the win!
