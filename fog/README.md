Require the "fog" SDK.

```ruby
require 'fog'
```

Authenticate to the Storage service.

```ruby
storage = Fog::Storage.new(
  provider: 'rackspace',
  rackspace_username: username,
  rackspace_api_key: api_key,
  rackspace_region: 'DFW'
)
```

Get the list of all containers.

```ruby
directories = storage.directories.all
```

Print them out.

```ruby
directories.each do |directory|
  puts directory.name
end
```

Get the container with the current program name.

```ruby
directory = storage.directories.get('{currentProgramName}')
```

Get the objects within the container.

```ruby
files = directory.files.all
```

Print the objects.

```ruby
files.each do |file|
  puts file.key
end
```

Get the object with the previous program name.

```ruby
file = directory.files.get('{previousProgramName}')
```

Print the contents of the object for the win!

```ruby
puts file.body
```
