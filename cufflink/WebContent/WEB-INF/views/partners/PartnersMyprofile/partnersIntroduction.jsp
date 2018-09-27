<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.Map"%>
<%
	//System.out.println("이밑으로오류");
	Map<String,Map> map = (Map<String,Map>)request.getAttribute("partnersMyprofileMain");
	Map<String,Object> intro = map.get("partnersIntroduction"); 
%>
<html>
<head>
<jsp:include page="../../common/ui.jsp"/>
<meta charset="UTF-8">
<title>파트너스 자기소개
</title>
<link rel="stylesheet" href="./css/partners.css" />
<link rel="stylesheet" href="./css/login.css" />
</head>
<body>


	<div class="ui container" >
	
	<!-- main 입력 시작-->
		
			<div class="ui column" style="padding-left: 5px; padding-top:10px; padding-bottom: 0px;">
				<div class="ui container" style="padding: 20px; padding-bottom: 20px; left: 5px; border: 1px solid #dedede; height:auto;width:auto;">
					<div style="padding-bottom:20px;">
						<h3 style="text-align: left">자기 소개</h3>
					</div>
					<div class="ui container" style="padding-top: 0px; padding-bottom: 30px; padding-left: 0px; padding-right: 20px;">
						<hr class="dotted" style="" />
					</div>
					<div style="text-align:left;">
					<%=intro.get("P_ABOUTME") %>
					</div>
				</div>
			</div>
	

	<!-- main 입력 끝-->
	</div>
	
</body>
</html>