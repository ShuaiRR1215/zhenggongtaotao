$(document).ready(function(){
	var temp = $('.hover');
	temp.hover(function() {
		$(this).addClass("hovercolor");
	}, function() {
		$(this).removeClass("hovercolor");
	});
});