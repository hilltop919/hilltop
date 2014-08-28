        //hide the select tag of IE
	function hideselectIE6(){
		if ($.browser.msie) {
			$("select").each(function(i){
	   		this.style.visibility= 'hidden';
	   		});
			}
	}
	//show the select tag of IE
	function showselectIE6(){
		if ($.browser.msie) {
			$("select").each(function(i){
				this.style.visibility = 'visible';
	   		});
			}
	}


if (typeof(Reuters) == 'undefined' || Reuters == null) {
	Reuters = new Object();
}

if (typeof(Reuters.nav) == 'undefined' || Reuters.nav == null) {
	Reuters.nav = new Object();
}

if (typeof(Reuters.info) == 'undefined' || Reuters.info == null) {
	Reuters.info = new Object();
}

if (typeof Reuters.info.edition == "undefined") {
	Reuters.info.edition = "BETAUS";
}

if (typeof(Reuters.nav.baseUrlPrefix) == 'undefined') {
	Reuters.nav.baseUrlPrefix = '';
}

if (typeof(Reuters.nav.PRIMARY_SITE_URL) == 'undefined') {
	Reuters.nav.PRIMARY_SITE_URL = 'http://www.reuters.com';
}
if(Reuters.info.edition == 'BETAUS' || Reuters.info.edition == 'US') {
	Reuters.nav.PRIMARY_SITE_URL = 'http://www.reuters.com';
} else {
	Reuters.nav.PRIMARY_SITE_URL = 'http://'+(Reuters.info.edition).toLowerCase()+'.reuters.com';
}

/* Nav Dropdown */

	$("li.nav-item").hover(
        function () {
			$(this).addClass("hover");
			hideselectIE6();
			$(this).children(".subnav").stop(true,true).delay(50).slideDown(50, function(){
				if($.fn.bgiframe && ($("select").length > 0)){
					$(this).bgiframe({opacity: false});
				}
			});
        },function(){
			$(this).removeClass("hover");
			showselectIE6();
			$(this).children(".subnav").stop(true,true).delay(50).slideUp(50);
	});

	$('#nav-strip a').click(function() {
		var theParent = $(this).closest('.nav-item');
		var theParentText= $('a .primary-link', theParent).text();
		var linkText = $(this).text();
		linkText = (linkText == theParentText)? linkText : theParentText + " - " + linkText;
		var destLink = $(this).attr('href');
		if (typeof(dcsMultiTrack) == "function") {
			dcsMultiTrack('DCSext.DartZone','','DCSext.ModID','','DCSext.ModImp','0','DCSext.VirtualEvent', '1','DCSext.rNavChannel',theParentText,'DCSext.NavSection',linkText,'DCSext.NavURL',destLink,'WT.z_navtest', '1');
		}
	});

	$('#masthead a').click(function() {
		var destLink = $(this).attr('href');
		if (typeof(dcsMultiTrack) == "function") {
			DcsMultiTrack('DCSext.DartZone','','DCSext.ModID','','DCSext.ModImp','0','DCSext.VirtualEvent','1','DCSext.rNavChannel','Other','DCSext.NavURL',destLink,'WT.z_navtest','1');
		}
	});


/*Edition Dropdown*/

	// for header
	$('#editionSwitchTop li').hover(function() {
		$(this)
		.find('ul')
		.stop(true,true);
	},function () {
		$(this)
		.find('ul')
		.stop(true, true)
		.delay(500)
		.slideUp(50);
	});
	$("#editionSwitchTop li").click(function(event) {
	  if($(this).find('ul').css('display') == 'none'){
		$(this)
			.find('ul')
			.stop(true, true)
			.slideDown(75);
		} else if($(this).find('ul').css('display') == 'block'){
			$(this)
			.find('ul')
			.stop(true, true)
			.slideUp(50);
		}
	});

	// for footer
$(document).ready(function() {
	$('#editionSwitchFooter li').hover(function() {
		$(this)
		.find('ul')
		.stop(true,true);
	},function () {
		$(this)
		.find('ul')
		.stop(true, true)
		.delay(500)
		.slideUp(50);
	});
	$(function() {
		$("#editionSwitchFooter li").click(function(event) {
		  if($(this).find('ul').css('display') == 'none'){
			$(this)
				.find('ul')
				.stop(true, true)
				.slideDown(75);
			} else if($(this).find('ul').css('display') == 'block'){
				$(this)
				.find('ul')
				.stop(true, true)
				.slideUp(50);
			}
		});
	});
});

/*Search Cleanup*/
if($("#searchForm").attr("action") == '/search') {
	$("#searchForm").attr("action", Reuters.nav.PRIMARY_SITE_URL +'/search');
}

/* Hack in opening in new window */

$('#nav-strip a').each(function(ind) {
	if (this.href.search(/\.reuters.com/i) == -1) {
		this.target = "_self";
	}
});



