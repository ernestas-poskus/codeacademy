# Parsing XML
# XML (which stands for E xtensible Markup Language) is very similar to HTML—it uses tags between angle brackets. 
# The difference is that XML allows you to use tags that you make up, rather than tags that the W3C decided on. 
# For instance, you could create an API that returns information about a pet:

# <pet>
  # <name>Jeffrey</name>
  # <species>Giraffe</species>
# </pet>
# As long as you document the structure of your API's response, other people can use your API to get information about <pet>s.


require "rexml/document"

file = File.open("pets.txt")
doc = REXML::Document.new file
file.close

doc.elements.each("pets/pet/name") do |element|
  puts element
end