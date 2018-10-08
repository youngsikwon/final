<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>

button, button::after {
	-webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
	-o-transition: all 0.3s;
	transition: all 0.3s;
}

button {
	width: 150px;
	height: 30px;
	background: none;
	border: 1px solid #000;
	border-radius: 5px;
	color: #fff;
	display: block;
	/* font-size: 1.6em; */
	font-weight: bold;
	/* margin: 1em auto; */
	/* padding: 2em 6em; */
	position: relative;
	text-transform: uppercase;
}

button::before, button::after {
	background: #fff;
	content: '';
	position: absolute;
	z-index: -1;
}

button:hover {
	color: #2ecc71;
}

/* BUTTON 4 */
.cbtn::before {
	height: 100%;
	left: 0;
	top: 0;
	width: 100%;
}

.cbtn::after {
	background: #2ecc71;
	height: 100%;
	left: 0;
	top: 0;
	width: 100%;
}

.cbtn:hover:after {
	height: 0;
	left: 50%;
	top: 50%;
	width: 0;
}

</style>
</head>
<body>
	<button type="button" class="cbtn">닫기</button>
</body>
</html>