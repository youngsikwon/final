<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	margin : 0;
	padding : 0;
	background : url (img.jpg) center center fixed no-repeat;
}
video {
	position : fixed;
	top : 0; 
	left : 0;
	min-width : 100 %;
	min-height : 100 %;
	width : auto;
	height : auto;
	z-index : -1;
}
</style>
</head>
<body>
	<!-- <video autoplay loop poster = "/image/배너.jpg">
		<source src = "/image/video/testvideo.mp4"type = "video/mp4">
	</video> -->
	<div class="ui two column grid videoroom container" style="position: absolute; top: 48px; left: 150px; border:1px solid #000;">
			<div class="column video1" style="padding-left: 0;" align="left">
				<video>
					<source src = "/image/video/testvideo.mp4" type = "video/mp4">
				</video>
			</div>
			<div class="column video2" style="padding-right: 0;" align="right">
				<video autoplay="autoplay">
					<source src = "/image/video/Apple.mp4" type = "video/mp4">
				</video>
			</div>
		</div>
	
</body>
</html>