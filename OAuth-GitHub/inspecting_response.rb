# Aside from not having to handle user passwords, 
# another upside of OAuth for you the application developer is that OAuth calls are easily tracked to your application. 
# If your application becomes popular, the service you're calling might be willing to bump your rate limit, the number of calls you can make in a period of time.

# Let's take another look at our API call to create a token and inspect the full response this time.

# We're looking for two important headers: x-ratelimit-limit and x-ratelimit-remaining. 
# The first is how many requests your application gets per hour. The second is how many you have left.


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

puts response.inspect