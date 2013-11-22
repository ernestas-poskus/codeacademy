$(document).ready(function() {
    $(document).keydown(function(key) {
        switch(parseInt(key.which,10)) {
			case 65:
				$('img').animate({left: "+=10px"}, 'fast');
				break;
			case 83:
				$('img').animate({bottom: "-=10px"}, 'fast');
				break;
			case 87:
				$('img').animate({top: "+=10px"}, 'fast');
				break;
			case 68:
				$('img').animate({right: "-=10px"}, 'fast');
				break;
			default:
				break;
		}
	});
});