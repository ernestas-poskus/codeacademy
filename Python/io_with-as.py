# The 'with' and 'as' Keywords
# Programming is all about getting the computer to do the work. Is there a way to get Python to automatically close our files for us?

# Of course there is. This is Python.

# You may not know this, but file objects contain a special pair of built-in methods: __enter__() and __exit__(). 
# The details aren't important, but what is important is that when a file object's __exit__() method is invoked, it automatically closes the file. 
# How do we invoke this method? With with and as.

with open("text.txt", "w") as textfile:
	textfile.write("Success!")

	
	
	
with open("text.txt", "w") as textfile:
	textfile.write("Success!")
	
	
if not textfile.closed:
    textfile.close()
    
print textfile.closed