var coin = Math.floor(Math.random() * 2);

while(coin){
	console.log("Heads! Flipping again...");
	var coin = Math.floor(Math.random() * 2);
}
console.log("Tails! Done flipping.");


var understand = true;

while(understand){
	console.log("I'm learning while loops!");
	understand = false;
}




//Remember to set your condition outside the loop!


var loop = function(){
	var i = 3;
	while(i > 0){
		//Your code goes here!
		console.log("I'm looping!");
		i--;
	}
};

loop();



//Remember to make your condition true outside the loop!

var soloLoop = function(){
  //Your code goes here!
  var cond = true;
  while(cond) {
      console.log('Looped once!');
      cond = false;
  }
};

soloLoop();