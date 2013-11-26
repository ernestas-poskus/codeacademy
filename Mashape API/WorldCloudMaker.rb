# This will make our app generate a cloud tag. We will use the WordCloudMaker API 

require 'unirest'

response = Unirest::get("https://webknox-web.p.mashape.com/webpage/content?url=http%3A%2F%2Fwww.bbc.co.uk%2Fnews%2Ftechnology-20124639",
  headers:{
    "X-Mashape-Authorization" => "<INSERT YOUR MASHAPE KEY HERE>"
  }
)

response = Unirest::post("https://gatheringpoint-word-cloud-maker.p.mashape.com/index.php",
  headers:{
    "X-Mashape-Authorization" => "<INSERT YOUR MASHAPE KEY HERE>"
  },
  parameters:{
    :height => 200,
    :textblock => response.body["mainText"],
    :width => 300,
    :config => "n\/a"
  }
)

puts response.body["url"];