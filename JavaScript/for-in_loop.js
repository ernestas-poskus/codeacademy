var nyc = {
    fullName: "New York City",
    mayor: "Michael Bloomberg",
    population: 8000000,
    boroughs: 5
};

for (var prop in nyc) {
    console.log(prop);
}


////////////////////////////////////////////////////////////////////////////////////////////////////

var nyc = {
    fullName: "New York City",
    mayor: "Michael Bloomberg",
    population: 8000000,
    boroughs: 5
};

// write a for-in loop to print the value of nyc's properties
for ( var prop in nyc) {
    console.log(nyc[prop]);
}

////////////////////////////////////////////////////////////////////////////////////////////////////


var languages = {
    english: "Hello!",
    french: "Bonjour!",
    notALanguage: 4,
    spanish: "Hola!"
};

// print hello in the 3 different languages
for(var lang in languages) {
    var value = languages[lang];
    if (typeof value == 'string') {
        console.log(languages[lang]);
    }
    
}