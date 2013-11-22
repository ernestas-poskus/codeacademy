# Lambda Syntax
# Lambda functions are defined using the following syntax:

# lambda variable: expression
# Lambdas are useful when you need a quick function to do some work for you. 
# If you plan on creating a function you'll use over and over, you're better off using def and giving that function a name.

my_list = range(16)
print filter(lambda x: x % 3 == 0, my_list)


languages = ["HTML", "JavaScript", "Python", "Ruby"]
print filter(lambda x: x == "Python", languages)


squares = [i ** 2 for i in range(1,11)]

print filter(lambda x: x >= 30 and x <= 70 , squares)