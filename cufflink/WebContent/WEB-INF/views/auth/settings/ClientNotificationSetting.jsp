<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../../common/ui.jsp"/>
<meta charset="UTF-8">
<title>알림설정
</title>
<link rel="stylesheet" href="./css/cuffLink.css" />
<link rel="stylesheet" href="./css/login.css" />
</head>
<body>
<!----------------------------------------------------------------------- top 시작 -->
	<header class="header">
		<div class="ui">
	<!-- header 시작 -->
			<div class="ui">
				<jsp:include page="../../common/menu/headerMenu.jsp"/>
			</div>
	<!-- header 종료 -->
	
			<div class="ui"><!-- header와 navigation 여백 --></div>
	
	<!-- navigation menu 시작 -->
			<div class="ui navigation">
				<jsp:include page="../../common/menu/navigationClientMenu.jsp"/>
			</div>
	<!-- navigation menu 종료-->
		</div>
	</header>
<!----------------------------------------------------------------------- top 끝 -->

	<div class="ui basicspace"><!-- navigation menu와 여백 --></div>
	
<!--======================================================================================-->
<!----------------------------------------------------------------------- main content 시작 -->

	<div class="ui container" >
	
	<!-- main 입력 시작-->

		<div class="ui two column grid container" style="height: 620px">
			<div class="ui column" style="width: 20%;padding-top: 0px;padding-left: 0px;padding-right: 0px">

				<div class="ui segment">
					<div class="ui two column grid"	style="padding-right: 0px; padding-bottom: 10px; padding-top: 10px; padding-left: 5px;">
						<div class="column"	style="padding-top: 5px; padding-left: 0px; padding-right: 0px; padding-bottom: 0px;">
							<h5>클라이언트</h5>
						</div>
						<div class="column" style="padding-top: 5px;padding-right: 0px;padding-bottom: 0px;padding-left: 5px;">
							<a class="h11" href="#">기본 정보 수정></a>
						</div>
						<div class="ui dividing header container"
							style="margin-top: 10px;"></div>
					</div>

					<div class="ui two column grid container">
						<div class="column"	style="padding-left: 5px; padding-top: 10px; padding-right: 5px; padding-bottom: 5px; width: 20%;">
							<img class="ui medium circular image" style="width:40px;" src="../../image/client.jpg">
						</div>
						<div class="column" style="padding-left: 0px; padding-right: 0px; padding-top: 5px; padding-bottom:15px; font-size: 12px;width:80%;">
							twins0313<br>
							twins0313@naver.com
						</div>
					</div>
				</div>
				<div class="ui fluid vertical menu" style="padding-right: 0px">
					<a href="/ClientProfile" class="teal item active"> 
						<font style="vertical-align: inherit;"> 기본 정보 수정 </font>
					</a> 
					<a href="/ClientBankAccount" class="item"> 
						<font style="vertical-align: inherit;"> 계좌관리 </font>
					</a>
					<a href="/ClientAddcoin" class="teal item"> 
						<font style="vertical-align: inherit;"> 코인충전 </font>
					</a> 
					<a href="/ClientRelogin" class="item"> 
						<font style="vertical-align: inherit;"> 비밀번호 변경 </font>
					</a>
					<a href="/ClientNotificationSetting" class="teal item"> 
						<font style="vertical-align: inherit;"> 알림설정 </font>
					</a> 
					<a href="/ClientWithdrawal" class="item"> 
						<font style="vertical-align: inherit;"> 회원탈퇴 </font>
					</a>
				</div>
			</div>
			<div class="ui column" style="padding-left: 5px; padding-top: 0px; padding-bottom: 0px; padding-right: 10px; width: 80%;">
				<div class="ui container" style="padding-left: 20px; padding-top: 20px; padding-bottom: 10px; left: 5px; border: 1px solid #dedede;">
					<div>
						<h3 style="text-align: left">알림 설정</h3>
					</div>
					<div class="ui two column grid container" style="padding-left: 0px; padding-top: 10px;">
						<div class="column" style="padding-left: 0px; width:60%;">
							<h5 style="text-align: left">새로운 소식들에 대한 알림을 설정할 수 있습니다.</h5>
						</div>
						<div class="column" style="text-align:right; padding-bottom:0px; width:40%;">
							<!-- 우측 빈공간 -->
						</div>
					</div>
				</div>
				<div style="height: 10px;"></div>
				<div class="ui container" style="padding-left: 20px; padding-right:20px; padding-top: 30px; padding-bottom: 0px; left: 5px; border: 1px solid #dedede; height:550px;">
					<div style="padding-top:0px;">
							<div class="ui two column grid container">
								<div class="center column container" style="padding: 17px; width: 30%; text-align: left;">
									<h5>알림설정</h5>
								</div>
								<div class="column container" style="padding-left: 20px; padding-top: 10px; padding-bottom: 0px; width: 60%;">
									<!-- 빈공간 -->
								</div>
								<div class="center column container" style="padding: 17px; width: 30%;">
									<span>*</span>이메일
								</div>
								<div class="column container" style="padding: 17px; width: 60%;">
									twins0313@naver.com
								</div>
								<div class="center column container" style="padding: 17px; width: 30%;">
									<span>*</span>비밀번호
								</div>
								<div class="column container" style="padding: 10px; width: 60%;">
									<div class="ui input">
										<input type="text" placeholder="비밀번호를 입력하세요." size="45px">
									</div>
								</div>
								<div class="center column container" style="padding: 17px; width: 30%;">
									
								</div>
								<div class="column container" style="padding: 10px; width: 60%; text-align:right">
									<div class="ui container" style="padding-right:30px; ">
										<button class="ui blue button" >로그인</button>
									</div>
								</div>
							</div>
						</div>
				</div>
			</div>
		</div>


	<!-- main 입력 끝-->

	</div>

<!----------------------------------------------------------------------- main content 끝 --->
<!--======================================================================================-->
	
	<div class="ui basicspace"><!-- login title와 main content 여백 -->	</div>
	
<!----------------------------------------------------------------------- footer content 시작 -->
	<!-- footer 시작-->
		<footer class="footer">
			<div class="ui inverted segment">
					<jsp:include page="../../common/menu/footerMenu.jsp"/>
			</div>
		</footer>
	<!-- footer 끝-->
<!----------------------------------------------------------------------- footer content 끝 -->
</body>
</html>