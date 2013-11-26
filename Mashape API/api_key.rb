Get a Mashape key
Next step is to grab a Mashape key so that you can call the API. In this case, we are going to use the WebKnox Web Extract API that pulls content from a webpage 

require 'unirest'

response = Unirest::get("https://webknox-web.p.mashape.com/webpage/content?url=http%3A%2F%2Fwww.bbc.co.uk%2Fnews%2Ftechnology-20124639",
  headers:{
    "X-Mashape-Authorization" => "-"
  }
)

puts response.body["mainText"];
