// Next, we'll need to start up our jQuery magic using the $(document).ready(); syntax you've seen. It works like this:

// .ready(); is a function, or basic action, in jQuery. It says "hey, I'm going to do stuff as soon as the HTML document is ready!"
// Whatever goes in .ready()'s parentheses is the jQuery event that occurs as soon as the HTML document is ready.

$(document).ready(function() {
    $('#notready').fadeOut(1000);
});



$(document).ready(function() {
    $('div').slideDown('slow');
});