$(function(){
	$(".box1").slideDown();
	$(".box2").slideUp();
	$(".box3").show();
	$(".box3").css({
		"background-color": "#0000ff"
	});
	$(".box4").hide();
	$(".box5").slideDown();
	$(".box5").css({
		"height": "100px";
		"background-color": "#0000ff";
	})
	$(".box5").show(1000);
	$(".box5").slideUp();
});