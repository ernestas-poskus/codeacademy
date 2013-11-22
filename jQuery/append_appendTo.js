$h1 = $('<h1>Hello</h1>');
 
 
$(document).ready(function () {
    $("body").append("<p>I'm a paragraph!</p>");
	
	$("<p>I'm a paragraph!</p>").appendTo('body');
});


