# Being Pushy

# Speaking of pushing to arrays, Ruby has some nice shortcuts for common method names. As luck would have it, one is for .push!

# Instead of typing out the .push method name, you can simply use <<,
# the concatenation operator (also known as "the shovel") to add an element to the end of an array:
 
 alphabet = ["a", "b", "c"]
alphabet << "d" # Update me!

caption = "A giraffe surrounded by "
caption << "weezards!" # Me, too!