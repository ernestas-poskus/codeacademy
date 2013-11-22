// You are now declaring an array.
// Arrays are an awesome data structure!
var junk = ['star', 'moon', 2, 4];

console.log(junk);


// Practice array!

var junkData = ["Eddie Murphy", 49, "peanuts", 31];

console.log(junkData[3]);


// Let's print out every element of an array using a for loop

var cities = ["Melbourne", 3, 5, 65, 7, "Amman", "Helsinki", "NYC"];

for (var i = 0; i < cities.length; i++) {
    console.log("I would like to visit " + cities[i]);
}


// Ask a question on the Q&A Forum if you get stuck!
names = ['af', 'htth', 'segsegg', 'yhyyh', 'rsgsr'];

for(var i = 0; i < names.length; i++) {
    console.log("I know someone called " + names[i]);
}



var array = [3, 6, 2, 56, 32, 5, 89, 32];
var largest = 0;
// Write your code below!
for (var i = 0; i < array.length; i++) {
    if(largest < array[i]) {
        largest = array[i];
    }
}

console.log(largest);