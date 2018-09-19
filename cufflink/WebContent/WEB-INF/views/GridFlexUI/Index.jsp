<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	String url = "http://192.168.0.30:9000/MainIndex";
%>
<html lang="ko" class="sh_overflow"><head>
<jsp:include page="./ui.jsp" />
<link rel="stylesheet" href="/css/reaction.css">
<title>커프링크</title>
</head>
<body>
<div id="mode_view">
    <div class="chkMode">
        <a id="mode_pc" class="mode_pc ckmod" title="PC" style="opacity: 1;"></a>
        <a id="mode_laptop" class="mode_laptop" title="laptop" style="opacity: 1;"></a>
        <a id="mode_tablet" class="mode_tablet" title="tablet" style="opacity: 1;"></a>
        <a id="mode_mobile" class="mode_mobile last" title="mobile" style="opacity: 1;"></a>
    </div>
    <div id="frame_wrap" style="width: 100%; height: 874px; margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow: hidden;">
        <div class="mode_bg mode_laptop" style="opacity: 0;"><img src="/reactionImage/mode_laptop.png"></div>
        <div class="mode_bg mode_tablet" style="opacity: 0;"><img src="/reactionImage/mode_tablet.png"></div>
        <div class="mode_bg mode_mobile" style="opacity: 0;"><img src="/reactionImage/mode_mobile.png"></div>
        <iframe width="100%" height="100%" id="sh_iframe" src="<%= url %>" frameborder="0" border="0" marginwidth="0" marginheight="0" scrolling="yes"></iframe>
    </div>
</div>
<script>

$('.chkMode a').click(function(event){
	var modeid = $(this).attr('id');
	
	$('a').removeClass('ckmod');
	$('a.'+modeid).addClass('ckmod');

	$('html').removeClass('sh_overflow');
	
	if(modeid == 'mode_pc'){
		var winsize = $('html').height();
		var topbar = $('#mode_view .chkMode').outerHeight();
		var winheight = winsize-topbar;
		$('#frame_wrap').stop().animate({
			'width':'100%','height': winheight+'px',
			marginTop:'0',marginBottom:'0',
			paddingLeft:'0',paddingRight:'0',
			paddingTop:'0',paddingBottom:'0'
		});
		$('html').addClass('sh_overflow');
	}
	
	if(modeid == 'mode_laptop'){
		$('#frame_wrap').stop().animate({
			'width':'1042px','height':'770px',
			marginTop:'20px',marginBottom:'60px',
			paddingLeft:'8px',paddingRight:'8px',
			paddingTop:'56px',paddingBottom:'74px'
		},700);
	}
	
	if(modeid == 'mode_tablet'){
		$('#frame_wrap').stop().animate({
			'width':'800px','height':'1135px',
			marginTop:'20px',marginBottom:'60px',
			paddingLeft:'8px',paddingRight:'8px',
			paddingTop:'56px',paddingBottom:'74px'
		},700);
	}
	
	if(modeid == 'mode_mobile'){
		$('#frame_wrap').stop().animate({
			'width':'435px','height':'780px',
			marginTop:'20px',marginBottom:'60px',
			paddingLeft:'8px',paddingRight:'8px',
			paddingTop:'56px',paddingBottom:'63px'
		},700);
	}
	
	$('.mode_bg').stop().animate({opacity:'0'},300);
	$('.'+modeid).stop().animate({opacity:'1'},300);
	
	return false;
})

$('.chkMode a#mode_pc').trigger('click');
</script>

</body>
</html>