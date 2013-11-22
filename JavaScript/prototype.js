// Prototype to the Rescue

// Here we have very similar code as last time, but there is an important difference. 
// Instead of using buddy.bark to add the bark method to just the buddy object, we use Dog.prototype.bark.

// Click run this time, and both buddy and snoopy can bark just fine! Snoopy can bark too even though we haven't 
// added a bark method to that object. How is this so? Because we have now changed the prototype for the class Dog. This immediately teaches all Dogs the new method.

// In general, if you want to add a method to a class such that all members of the class can use it, 
// we use the following syntax to extend the prototype:
className.prototype.newMethod =

function() {
statements;
};




function Dog (breed) {
  this.breed = breed;
};

// here we make buddy and teach him how to bark
var buddy = new Dog("golden Retriever");
Dog.prototype.bark = function() {
  console.log("Woof");
};
buddy.bark();

// here we make snoopy
var snoopy = new Dog("Beagle");
/// this time it works!
snoopy.bark();







function Cat(name, breed) {
    this.name = name;
    this.breed = breed;
}

// let's make some cats!
var cheshire = new Cat("Cheshire Cat", "British Shorthair");
var gary = new Cat("Gary", "Domestic Shorthair");

// add a method "meow" to the Cat class that will allow
// all cats to print "Meow!" to the console
Cat.prototype.meow = function() {
    console.log('Meow!');
}

// add code here to make the cats meow!
cheshire.meow();
gary.meow();









// create your Animal class here
function Animal(name, numLegs) {
    this.name = name;
    this.numLegs = numLegs
}

// create the sayName method for Animal
Animal.prototype.sayName = function() {
    console.log('Hi my name is ' + this.name);
}

// provided code to test above constructor and method
var penguin = new Animal("Captain Cook", 2);
penguin.sayName();







// create your Animal class here
function Animal(name, numLegs) {
    this.name = name;
    this.numLegs = numLegs
}

// create the sayName method for Animal
Animal.prototype.sayName = function() {
    console.log('Hi my name is ' + this.name);
}

// create your Animal class here
function Penguin(name, numLegs) {
    this.name = name;
    this.numLegs = numLegs
}

// create the sayName method for Animal
Penguin.prototype.sayName = function() {
    console.log('Hi my name is ' + this.name);
}


// provided code to test above constructor and method
var penguin = new Penguin("Captain Cook", 2);
penguin.sayName();













function Dog (breed) {
    this.breed = breed;
};

// add the sayHello method to the Dog class 
// so all dogs now can say hello
Dog.prototype.sayHello = function() {
    console.log("Hello this is a "+this.breed+" dog");
}

var yourDog = new Dog("golden retriever");
yourDog.sayHello();

var myDog = new Dog("dachshund");
myDog.sayHello();

