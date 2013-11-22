# Parsing JSON
# JSON (which stands for JavaScript Object Notation) is an alternative to XML. 
# It gets its name from the fact that its data format resembles JavaScript objects, 
# and it is often more succinct than the equivalent XML. For instance, our same <pet> Jeffrey would look like this in JSON:

# {
  # "pets": {
    # "name": "Jeffrey",
    # "species": "Giraffe"
  # }
# }


require 'json'

pets = File.open("pets.txt", "r")

doc = ""
pets.each do |line|
  doc << line
end
pets.close

puts JSON.parse(doc)