require "rest-client"
require "json"

events_url = "https://api.box.com/2.0/events"

response = RestClient.get(
  events_url,
  :params => {:limit => 1},
  :authorization => "Bearer " << "ACCESS_TOKEN"
)

JSON.parse(response.body)



