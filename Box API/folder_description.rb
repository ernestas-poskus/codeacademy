require "rest-client"
require "json"

# This is the ID that you copied down in the last exercise
your_folder_id = "1333761600"

body = {
    "description" => "I made this on Codecademy!!"
}

response = RestClient.put(
    "https://api.box.com/2.0/folders/#{your_folder_id}",
    JSON.generate(body),
    :authorization => "Bearer " << "-"
)

JSON.parse(response.body)["description"]