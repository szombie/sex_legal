jQuery(function($){
	$("#myslide").append("<div id='button'></div>");
	
	$("#myslide img").each(function(index){
		$(this).attr('id','slide' + index);
		$('#button').append("<a href='#slide" + index + "'></a>");
	});

	function changeNav(e){
		e.preventDefault();
		$('#button a.active').removeClass('active');
		$(this).addClass('active');

		$('#myslide img').removeClass('active');
		var activeImg = $(this).attr('href');
		$(activeImg).addClass('active');
	}
	$('#button a').click(changeNav);
	$('#button a:first').click();
});