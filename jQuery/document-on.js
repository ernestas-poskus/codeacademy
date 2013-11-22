$(document).on({
    $('$button').click(function() {
        var toAdd = $('input[name=checkListItem]').val();
        $('.list').append('<div class="item">aw</div>');
    });
});