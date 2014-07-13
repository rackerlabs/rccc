**HINT**: You can use tab completion when typing out the code below to get done quickly.
**HINT**: You can find these instructions online at rack.to/rccc-java

Create a Context for Rackspace Cloud Files (it's OpenStack Swift)

```java
swiftApi = ContextBuilder.newBuilder("rackspace-cloudfiles-us") \
  .credentials(username, apiKey) \
  .buildApi(SwiftApi.class)
```

Get the ContainerApi for the DFW region

```java
containerApi = swiftApi.getContainerApiForRegion("DFW")
```

Get the containers

```java
containers = containerApi.list().toList()
```

List the containers (note the container with the current program name)

```java
Joiner.on("\n").join(containers)
```

Get the ObjectApi for the DFW region; change {blank} to that name

```java
objectApi = swiftApi.getObjectApiForRegionAndContainer("DFW", "{blank}")
```

Get the objects within the container

```java
objects = objectApi.list()
```

List the objects

```java
Joiner.on("\n").join(objects)
```

Get the object and change {blank} to the previous program name

```java
object = objectApi.get("{blank}")
```

Download the object and print out its contents

```java
ByteStreams.copy(object.getPayload().openStream(), System.out)
```

Read the message and follow the instructions for the win!
