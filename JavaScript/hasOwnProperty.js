var myObj = {
    // finish myObj
    name: 'aw'
    
};

console.log( myObj.hasOwnProperty('name') ); // should print true
console.log( myObj.hasOwnProperty('nickname') ); // should print false




var suitcase = {
    shirt: "Hawaiian"
};

if (suitcase.hasOwnProperty('shorts')) {
    console.log(suitcase.shorts)
} else {
    suitcase.shorts = 'red';
}


////////////////////////////////////////////////////////////




// what is this "Object.prototype" anyway...?
var prototypeType = typeof Object.prototype;
console.log(prototypeType);

// now let's examine it!
var hasOwn = Object.prototype.hasOwnProperty('hasOwnProperty');
console.log(hasOwn);
