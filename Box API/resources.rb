# All About Resources

# As we saw before, API URLs should be easy to read, Everything in the Box API is centered around resources or objects.

# As you can see on the right, figuring out where resources are is easy. All you do is add a / and the name of the resource. 
# And if you're looking for a specific one of that resource type, you just add another / and its ID.

events_url = "https://api.box.com/2.0/events"

files_url = "https://api.box.com/2.0/files"

files_123_url = "https://api.box.com/2.0/files/123"

folders_url = "https://api.box.com/2.0/folders"

folders_ABC_url = folders_url + '/ABC'