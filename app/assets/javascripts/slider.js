jQuery(function($){
	var num = -1;
	$("#myslide").append("<div id='button'></div>");
	$("#myslide").append("<div id='direction'><a class='prev'></a><a class='next'></a></div>");
	$("#myslide img").each(function(index){
		var title = $(this).attr('title');
		$(this).wrap("<div id='slide"+index+"' class='slide'></div>");
		$('#slide'+index).append('<div class="caption">'+title+'</div>');
		$('#button').append("<a href='#slide" + index + "'></a>");
		num++;
	});

	function getPrev(pos){
		if(pos == 0) { return num }
		return parseInt(pos) - 1;
	}

	function getNext(pos){
		if (num == pos) { return 0 }
		return parseInt(pos) + 1;
	}

	function changeSlide(e){
		e.preventDefault();
		var active = $(this).attr('href');
		var pos = active.charAt(active.length-1);

		var prev = '#slide' + getPrev(pos);
		var next = '#slide' + getNext(pos);

		$("#direction .prev").attr('href',prev);
		$("#direction .next").attr('href',next);

		$('#button a.active').removeClass('active');
		$("#button a[href='"+ active + "']").addClass('active');
		$("#myslide .slide").removeClass('active');
		$(active).addClass('active');

	}
	$('#button a').click(changeSlide);
	$('#direction .prev').click(changeSlide);
	$('#direction .next').click(changeSlide);
	$('#button a:first').click();
});