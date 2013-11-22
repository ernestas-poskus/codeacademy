// Example of a for loop:

for (var counter = 1; counter <= 10; counter++) {
	console.log(counter);
}



// Change where the for loop starts.

for (var i = 5; i <= 10; i = i + 1){
	console.log(i);
}



// Edit this for loop

for (var i = 4; i <= 23; i = i + 1) {
	console.log(i);
}

// Edit this for loop!

for (var i = 5; i < 100; i += 5) {
	console.log(i);
	if(i == 50 ) {
	    break;
	}
}


// Example for loop

for (var i = 8 ; i < 120; i += 12) {
	console.log(i);
}



// Example of infinite loop. THIS WILL CRASH YOUR
// BROWSER. Don't run the code without changing it!

for (var i = 10; i >= 0; i -= 1) {
	console.log(i);
}