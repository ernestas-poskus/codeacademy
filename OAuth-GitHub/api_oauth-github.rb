# oAuth2 with GitHub

# Most APIs support Basic Authentication which accepts a username and a password to authenticate users. 
# While simple for developers, end users shouldn't be expected to hand over their application passwords to third parties to make requests on their behalf. 
# Security concerns aside, it's also a maintenance problem. Changing your password just to shut off one rogue site 
# means you have to update all the sites using that password.

# OAuth ditches the username and password for a single token that uniquely identifies a user and verifies their access.

# For the GitHub API, which we'll use throughout this course, access tokens are 40 character strings.


require 'httparty'

token = "e6a75d6b6d7b0fdd0eee93fd3c141d808852a0e9"

user = HTTParty.get "https://api.github.com/user", 
        :headers => { 
                        "Authorization" => "token #{token}",
                        "User-Agent" => "codecademy"    
                    }

puts "Hi, my username is #{user["login"]}"



# Getting into the flow
# Now that we've seen what an access token looks like, let's look at how we create them.

# Most sites implement a web flow like the one illustrated in this ASCII sequence diagram on the right. Let's walk through through the flow for a simple use case.

# A) Site #1 sends a user to Site #2 to authorize access.
# B) Once the user is logged in and agrees to allow access, they're sent back to Site #1 with some extra info.
# C) Site #1 passes this extra info back to Site #2 to ask for an access token
# D) Site #2 validates the info and sends back an access token which Site #1 stores for future use.
# E) Site #1 passes the access token back to Site #2 when it requests any resources.
# F) Site #2 validates the token and responds with the requested resource.

# You can mentally divide the diagram into two parts. Steps A-D are used to get an access token and are generally done one time for a user. 
# Steps E-F are repeated every time the third party requests a resource from the API.

# Don't get intimidated by all the arrows. We're just taking a look a the big picture before we dive into OAuth access tokens.
#     +--------+                               +---------------+
#     |        |--(A)- Authorization Request ->|   Resource    |
#     |        |                               |     Owner     |
#     |        |<-(B)-- Authorization Grant ---|               |
#     |        |                               +---------------+
#     |        |                               +---------------+
#     |        |--(C)-- Authorization Grant -->| Authorization |
#     | Client |                               |     Server    |
#     |        |<-(D)----- Access Token -------|               |
#     |        |                               +---------------+
#     |        |                               +---------------+
#     |        |--(E)----- Access Token ------>|    Resource   |
#     |        |                               |     Server    |
#     |        |<-(F)--- Protected Resource ---|               |
#     +--------+                               +---------------+
#     


require 'httparty'
require 'json'

class GitHub
  include HTTParty
  headers "User-Agent" => "codecademy"
  basic_auth "api-padawan", "GitHubPassw0rd"

  def create_token
    endpoint = "https://api.github.com/authorizations"
    self.class.post endpoint, :body => {}.to_json
  end
end

client = GitHub.new
response = client.create_token

print response.parsed_response


















