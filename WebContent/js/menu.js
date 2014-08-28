	$('#navigation a').stop().animate({
		'marginLeft' : '-85px'
	}, 0);

	$('#navigation > li').hover(function() {
		$('a', $(this)).stop().animate({
			'marginLeft' : '-2px'
		}, 200);
	}, function() {
		$('a', $(this)).stop().animate({
			'marginLeft' : '-85px'
		}, 200);
	});

    //当滚动条的位置处于距顶部100像素以下时，跳转链接出现，否则消失

        $(window).scroll(function(){
            if ($(window).scrollTop()>100){
                $("#back-to-top").fadeIn(1500);
            }
            else
            {
                $("#back-to-top").fadeOut(1500);
            }
        });

        //当点击跳转链接后，回到页面顶部位置

        $("#back-to-top").click(function(){
            $('body,html').animate({scrollTop:0},1000);
            return false;
        });
