$(document).ready(function() {
    $('input[name="name"]').focus(function(){
        $(this).css('outline-color', '#FF0000');
    });
});