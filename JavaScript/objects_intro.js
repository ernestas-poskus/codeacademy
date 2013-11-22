(((3 * 90) === 270) || !(false && (!false)) || "bex".toUpperCase() === "BEX");


for(var i = 1; i <= 20; i++ ) {
    
    if(i % 3 == 0 && i % 5 == 0) {
        console.log('FizzBuzz');
    } else if (i % 5 == 0) {
        console.log('Buzz');
    } else if (i % 3 == 0){
        console.log('Fizz');
    } else {
        console.log(i);
    }
    
}

var Spencer = {
  age: 22,
  country: "United States"
};
var me = {
    age: 22,
    country: 'Lithuania'
}

// make your own object here called me
console.log(me);



//////////////////////////////////////////////////////////////////////


var bob = {
  name: "Bob Smith",
  age: 30
};
var susan = {
  name: "Susan Jordan",
  age: 25
};
// here we save Bob's information
var name1 = bob.name;
var age1 = bob.age;
// finish this code by saving Susan's information
var name2 = susan.name;
var age2 = susan.age;



// Take a look at our next example object, a dog
var dog = {
  species: "greyhound",
  weight: 60,
  age: 4
};

var species = dog["species"];
// fill in the code to save the weight and age using bracket notation
var weight = dog['weight'];
var age = dog['age'];





// Our bob object again, but made using a constructor this time 
var bob = new Object();
bob.name = "Bob Smith";
bob.age = 30;
// Here is susan1, in literal notation
var susan1 = {
  name: "Susan Jordan",
  age: 24
};
// Make a new susan2 object, using a constructor instead
var susan2 = new Object();
susan2 = susan1;





// help us make snoopy using literal notation
// Remember snoopy is a "beagle" and is 10 years old.
var snoopy = {
    species: 'beagle',
    age: 10
};

// help make buddy using constructor notation
// buddy is a "golden retriever" and is 5 years old
var buddy = {
    species: 'golden retriever',
    age: 5  
};



var BMW = new Object();

BMW.cost = 'too much';
BMW.speed = 220;
BMW.country = 'Germany';




// here is bob again, with his usual properties
var bob = new Object();
bob.name = "Bob Smith";
bob.age = 30;
// this time we have added a method, setAge
bob.setAge = function (newAge){
  bob.age = newAge;
};
// here we set bob's age to 40
bob.setAge(40);
// bob's feeling old.  Use our method to set bob's age to 20
bob.setAge(20);
