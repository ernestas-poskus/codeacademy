$(document).ready(function() {
    $('div').mouseenter(function() {
        $('div').fadeTo('fast', 1);
    }).mouseleave(function() {
        $('div').fadeTo('fast', 0.5);
    });
});