$(document).ready(function() {
    $('div').click(function(){
        $(this).fadeOut('fast');
    }).hover(function(){
        $(this).addClass('red');
    });
});



$(document).ready(function() {
    $('div').mouseenter(function(){
        $(this).fadeTo('fast', 1);
    }).mouseleave(function(){
        $(this).fadeTo('fast', 0.25);
    });
});


