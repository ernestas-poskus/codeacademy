var lunch = prompt("What do you want for lunch?","Type your lunch choice here");

switch(lunch){
  case 'sandwich':
    console.log("Sure thing! One sandwich, coming up.");
    break;
  case 'soup':
    console.log("Got it! Tomato's my favorite.");
    break;
  case 'salad':
    console.log("Sounds good! How about a caesar salad?");
    break;
  case 'pie':
    console.log("Pie's not a meal!");
    break;
  default:
    console.log("Huh! I'm not sure what " + lunch + " is. How does a sandwich sound?");
}





var color = prompt("What's your favorite primary color?","Type your favorite color here");

switch(color) {
  case 'red':
    console.log("Red's a good color!");
    break;
  case 'blue':
    console.log("That's my favorite color, too!");
    break;
  case 'black':
    console.log('Black...');
    break;
    case 'yellow':
    console.log("Your string here!");
    break;
  default:
    console.log("I don't think that's a primary color!");
}




var candy = prompt("What's your favorite candy?","Type your favorite candy here.");

switch(candy) {
  case 'licorice':
    console.log("Gross!");
    break;
  case 'gum':
    console.log("I like gum!");
    break;
  case 'beets':
    console.log("...is that even a candy?");
    break;
  // Add your code here!
  default:
    console.log('awf');
}






var getReview = function (movie) {
    switch(movie) {
        case 'Matrix':
            return 'good trip out';
            break;
        case 'Princess Bride':
            return 'awesome date night movie';  
            break;
        case 'Welcome to America':
            return 'Amjad\'s favorite';
            break;
        case 'Remember the Titans':
            return 'love the sports';            
            break;
        case 'Why do I look like I\'m 12?':
            return 'The Ryan and Zach story';
            break;
        case 'Fighting Kangaroos in the wild':
            return 'Token Australian movie for Leng'; 
            break;
        default:
            return "I don't know!";
    }
};


