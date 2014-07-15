**HINT**: You can use tab completion when typing out the code below to get done quickly.

**HINT**: You can find these instructions online at rack.to/rccc-ruby

Setup fog

```ruby
require 'fog'
```

Get the client for Rackspace Cloud Files in the DFW region.

```ruby
storage = Fog::Storage.new(
  provider: 'rackspace',
  rackspace_username: username,
  rackspace_api_key: api_key,
  rackspace_region: 'DFW'
)
```

Get the directories

```ruby
directories = storage.directories.all
```

List the directories (note the directory with the current program name)

```ruby
directories.map { |directory| directory.key }
```

Get the directory with the current program name; change {blank} to that name

```ruby
directory = storage.directories.get('{blank}')
```

Get the objects within the directory

```ruby
files = directory.files.all
```

List the objects

```ruby
files.map { |file| file.key }
```

Get the object; change {blank} to the previous program name

```ruby
file = directory.files.get('{blank}')
```

Print the contents of the object

```ruby
puts file.body
```

Read the message and follow the instructions for the win!
