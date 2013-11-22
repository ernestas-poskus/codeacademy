# String Interpolation

# You can always use plain old + or << to add a variable value into a string:

drink = "espresso"
puts "I love " + drink # ==> I love espresso
puts "I love " << drink # ==> I love espresso

# But if you want to do it for non-string values, you have to use .to_s to make it a string:

age = 26
puts "I am " + age.to_s + " years old." # ==> "I am 26 years old."
puts "I am " << age.to_s << " years old." # ==> "I am 26 years old."

# This is complicated, and complicated is not the Ruby way. 
#A better way to do this is with string interpolation. The syntax looks like this:


favorite_things = ["Ruby", "espresso", "candy"]

puts "A few of my favorite things:"

favorite_things.each do |thing|
  puts "I love #{thing}" << "!"
end