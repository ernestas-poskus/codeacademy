require "rest-client"
require "json"

body = {
    "name" => "ernestas.poskus",
    "parent" => {
        "id" => "0"
    }
}

response = RestClient.post(
    "https://api.box.com/2.0/folders",
    JSON.generate(body),
    {:authorization => "Bearer " << "-"}
)

puts "COPY THIS NUMBER DOWN: " + JSON.parse(response.body)['id']