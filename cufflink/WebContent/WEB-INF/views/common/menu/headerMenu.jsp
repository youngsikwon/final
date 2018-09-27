<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<jsp:include page="../ui.jsp"/>
<!-- https://fontawesome.com 웹폰트사용에 필요 채팅문의에 들어간 아이콘이미지-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<!-- //chatting -->
<div class="ui inverted segment" style="margin-top: 0px; padding-top: 3px; padding-bottom: 3px; margin-bottom: 0px;">
	<div class="ui container">
		<a href="../common/"><img src="../image/logo.jpg" class="ui image tiny" alt="" style="float: left; margin-right: 10px" /></a>
		<div class="ui inverted secondary pointing menu" style="margin-top: 0px;">
			<a href="../clients/projectRegister" id="projectRegister" class="projectRegister item">프로젝트 등록 </a> 
			<a href="../clients/projectFind" id="projectFind" class="projectFind item">프로젝트 찾기 </a> 
			<a href="../partners/partnersList" id="partnersList" class="partnersList item">파트너스 목록 </a>
			<div class="right menu">
				<button class="ui button" style="margin-right: 10px;" onclick="window.location.href='../auth/login'" >
					로그인
				</button>
				<button class="ui primary button" style="margin-right: 10px;" onclick="window.location.href='../auth/join'" >
					회원가입
				</button>
			</div>
			<div class="ui dropdown button">
				twins0313 <i class="dropdown icon"></i>
				<div class="menu">
					<div class="item" onclick="location.href='../clients/ClientMyCufflink'"><i class="home icon"></i>마이 커프링크</div>
					<div class="item" onclick="location.href='../clients/ClientInfo'"><i class="user icon"></i>클라이언트 정보관리></div>
					<div class="item" onclick="location.href='../auth/ClientProfile'"><i class="cog icon"></i>계정설정</div>
					<div class="item" onclick="location.href='../common/'"><i class="power off icon"></i>로그아웃</div>
				</div>
			</div>
		</div>
	</div>
</div>

