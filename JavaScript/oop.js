var james = {
    // add properties to this object!
    job: 'programmer',
    married: false
    
};

function Person(job, married) {
    this.job = job;
    this.married = married;
}

// create a "gabby" object using the Person constructor!
var gabby = new Person('student', true);




function Person(job, married) {
    this.job = job;
    this.married = married;
    // add a "speak" method to Person!
    this.speak = function() {
        console.log('Hello!');
    }
}


var user = new Person("Codecademy Student",false);
user.speak();





var james = {
    job: "programmer",
    married: false,
    speak: function(str) {
        console.log("Hello, I am feeling " + str);
    }
};

james.speak("great");
james.speak("just okay"); 








var james = {
    job: "programmer",
    married: false,
    sayJob: function() {
        // complete this method
        console.log("Hi, I work as a " + this.job);
    }
};

// james' first job
james.sayJob();

// change james' job to "super programmer" here
james.job = 'super programmer';

// james' second job
james.sayJob();





var james = {
    job: "programmer",
    married: false
};

// set to the first property name of "james"
var aProperty = 'job';

// print the value of the first property of "james" 
// using the variable "aProperty"
console.log(james[aProperty]);

