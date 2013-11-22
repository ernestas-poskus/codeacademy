$(document).ready(function() {
    $('div').dblclick(function(){
        $(this).fadeOut('fast');
    }).hover(function(){
        $(this).addClass('red');
    });
});