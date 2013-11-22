print "Welcome to the English to Pig Latin translator!"
original = raw_input("Your prompt message")

def check():
    if len(original) != 0 and original.isalpha():
        return original
    else:
        return 'empty'
        
print check()