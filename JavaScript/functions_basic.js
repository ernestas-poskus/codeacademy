var balance = 20.97;

// Complete the condition in the ()s on line 4
if (balance < 10 ) {
	console.log(balance - 5) //the balance minus 5 dollars
	
} else {
	// Just console.log() the balance
	console.log(balance);
}



// This is what a function looks like:

var divideByThree = function (number) {
    var val = number / 3;
    console.log(val);
};

// On line 11, we call the function by name
// Here, it is called 'dividebythree'
// We tell the computer what the number input is (i.e. 6)
// The computer then uses the code inside the function!
divideByThree(6);




// Below is the greeting function!
// See line 7
// We can join strings together using the plus sign (+)
// See the hint for more details about how this works.

var greeting = function (name) {
    console.log("Great to see you," + " " + name);
};

// On line 11, call the greeting function!
greeting('Bat');




// Write your foodDemand function below.
// Last hint: In your reusable block of code, end each line
// with a semicolon (;)
var foodDemand = function(food) {
  console.log("I want to eat" + " " + food);
};

foodDemand('apple');





// Nicely written function:
var calculate = function (number) {
    var val = number * 10;
    console.log(val);
};

// Badly written function with syntax errors!

var greeting = function(name) {console.log(name)}; 

greeting('Jack');






var orangeCost = function($cost, $count) {
    console.log($cost * $count);
};

orangeCost(5, 5);





// Parameter is a number, and we do math with that parameter
var timesTwo = function(number) {
    return number * 2;
};

// Call timesTwo here!
var newNumber = timesTwo(44);
console.log(newNumber);





// Define quarter here.
var quarter = function($number) {
  return $number / 4;  
};




if (quarter(12) % 3 === 0 ) {
  console.log("The statement is true");
} else {
  console.log("The statement is false");
}


// Write your function starting on line 3
var perimeterBox = function(h, w) {
    return 2(h+w);
}



// Write your function below. 
// Don't forget to call your function!
var creditCheck = function(income) {
    if (income >= 100) {
        return "You earn a lot of money! You qualify for a credit card.";
    } else if (income < 100) {
        return "Alas you do not qualify for a credit card. Capitalism is cruel like that.";
    }
}

creditCheck(75);
creditCheck(125);
creditCheck(100);



var isEven = function(number) {
  // Your code goes here!
  if(number % 2 == 0) {
      return true;
  } else if(isNaN(number) == true) {
      return 'Not a number !';
  } else {
      return false;
  }
};

isEven(4);
isEven(3);