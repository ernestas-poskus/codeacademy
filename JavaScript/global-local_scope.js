// Global vs Local Variables

// We need to be introduced to a super important concept: scope. Scope can be global or local.

// Variables defined outside a function are accessible anywhere once they have been declared. They are called global variables and their scope is global.

// Variables defined within a function are local variables. They cannot be accessed outside of the function.

// Check out the code in the editor. Until now you've been using the var keyword without really understanding why. The var keyword creates a new variable in the current scope.

// On line 4 we have not used the var keyword, so when we log my_number to the console outside of the function, it will be 14.


var my_number = 7; //this has global scope

var timesTwo = function(number) {
    var my_number = number * 2;
    console.log("Inside the function my_number is: ");
    console.log(my_number);
}; 

timesTwo(7);

console.log("Outside the function my_number is: ")
console.log(my_number);