/**
 * 
 */

$(function() {
	$("#myimg").attr("src", "../img/비글.JPG");

	$("#myimg").hover(function() {
		$(this).attr("src", "../img/고양이두마리.JPG");
	}, function() {
		$(this).attr("src", "../img/비글.JPG");
	})

})