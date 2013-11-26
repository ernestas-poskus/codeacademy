require 'uri'
require 'json'
require 'net/http'
require 'net/https'
require 'cgi'

headers = {} # these are the HTTP headers
params  = {} # any parameters needed for the API call
url = URI.parse('https://stage.wepayapi.com/v2/user') # URL of the call
call =  Net::HTTP::Post.new(url.path, initheader = headers)
call.body = params.to_json

request = Net::HTTP.new(url.host, url.port)
request.read_timeout = 30
request.use_ssl = true

# make http request
response = request.start { |http| http.request(call) }

# response in json
puts JSON.parse(response.body)