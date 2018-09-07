<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>partnersList-(개발자 목록)</title>
</head>
<body>
<!----------------------------------------------------------------------- top 시작 -->
	<header class="header">
		<div class="ui">
	<!-- header 시작 -->
			<div class="ui">
				<jsp:include page="../common/menu/headerMenu.jsp"/>   
			</div>
	<!-- header 종료 -->
	
			<div class="ui"><!-- header와 navigation 여백 --></div>
	
	<!-- navigation menu 시작 -->
			<div class="ui navigation">
				<jsp:include page="../common/menu/navigationMenu.jsp"/>
			</div>
	<!-- navigation menu 종료-->
		</div>
	</header>
<!----------------------------------------------------------------------- top 끝 -->

	<div class="ui basicspace"><!-- navigation menu와 여백 --></div>
	
<!----------------------------------------------------------------------- main content 시작 -->
<!----------------------------------------------------------------------- main content 시작 -->
	<div class="ui container contentMain">
		
	<!-- title 시작-->
		<div class="ui container">
			<div class="content-header">
				<div class="ui two column grid container">
					<div class="column">
						<h3 class="content-text">파트너스 목록</h3>
						<small class="small-text">000,000명의 파트너스가 있습니다.</small>
					</div>
					<div class="column" style="text-align:right;margin:10px 0px;">
						<!-- 우측에 입력할 수 있는 공간 확보 -->
					</div>
				</div>
			</div>
		</div>			
	<!-- title 끝-->

	<div class="ui basicspace"><!-- login title와 main content 여백 -->	</div>

	<!-- main 입력 시작 -->
		<div class="ui container">
			<div class="content-middle">
				<div class="ui two column grid container" style="padding:20px;height:400px;">
					<div class="column grid" style="border-right: 1px solid #dedede; vertical-align: middle;padding: 20px; width: 60%;">
					좌측내용
					</div>
					<div class="column grid" style="padding: 10px; width: 40%;">
					우측내용
					</div>
				</div>
			</div>
		</div>
	<!-- main 입력 끝-->
	</div>
<!----------------------------------------------------------------------- main content 끝 -->
<!----------------------------------------------------------------------- main content 끝 -->
	
	<div class="ui basicspace"><!-- login title와 main content 여백 -->	</div>
	
<!----------------------------------------------------------------------- footer content 시작 -->
	<!-- footer 시작-->
		<footer class="footer">
			<div class="ui inverted segment" style="height:200px; padding:25px; vertical-align:middle;">
				<jsp:include page="../common/menu/footerMenu.jsp"/>
			</div>
		</footer>
	<!-- footer 끝-->
<!----------------------------------------------------------------------- footer content 끝 -->
</body>
</html>