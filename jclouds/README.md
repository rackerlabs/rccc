*HINT*: You can use tab completion when typing out the code below to get done quickly.

Create a Context for Rackspace Cloud Files (it's OpenStack Swift)

    swiftApi = ContextBuilder.newBuilder("rackspace-cloudfiles-us") \
      .credentials(username, apiKey) \
      .buildApi(SwiftApi.class)

Get the ContainerApi for the DFW region

    containerApi = swiftApi.getContainerApiForRegion("DFW")

Get the containers

    containers = containerApi.list().toList()

List the containers (note the container with the current program name)

    Joiner.on("\n").join(containers)

Get the ObjectApi for the DFW region and change {blank} to the name of the container with the current program name

    objectApi = swiftApi.getObjectApiForRegionAndContainer("DFW", "{blank}");

Get the objects within the container

    objects = objectApi.list()

List the objects

    Joiner.on("\n").join(objects)

Get the object and change {blank} to the previous program name

    object = objectApi.get("{blank}");

Download the object and print out its contents

    ByteStreams.copy(object.getPayload().openStream(), System.out);

Read the message to nearest Racker for the win!
