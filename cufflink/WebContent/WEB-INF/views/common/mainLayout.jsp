<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="./ui.jsp" />
<title>basic Layout ver.2</title>
</head>
<body>
	<div class="main_container">
		<div class="space"></div>
		<div class="container">
			<div class="header">
				<div class="center">
					<jsp:include page="./menu/headerMenu.jsp"/>
				</div>
			</div>
			<div class="side">
			<div class="center">
					Side
				</div>
			</div>
			<div class="main">
			<div class="center">
					Main
				</div>
			</div>
			<div class="foot">
				<div class="center">
					<jsp:include page="./menu/footerMenu.jsp"/>
				</div>
			</div>
		</div>
		<div class="space"></div>
	</div>
</body>
</html>