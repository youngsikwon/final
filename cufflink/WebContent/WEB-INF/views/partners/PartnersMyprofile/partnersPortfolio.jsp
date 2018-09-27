<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.Map"%>
<%
	Map<String,Map> map = (Map<String,Map>)request.getAttribute("partnersMyprofileMain");
	Map<String,Object> port = map.get("partenersPortfolio");
%>
<html>
<head>
<jsp:include page="../../common/ui.jsp"/>
<meta charset="UTF-8">
<title>파트너스 포트폴리오</title>
<link rel="stylesheet" href="./css/partners.css" />
<link rel="stylesheet" href="./css/login.css" />
</head>
<body>
<div class="ui container" >
		<h2 align="left" style="margin-left:14px;">포트폴리오</h2>
	<p></p>

	<div class="ui container" style="height: 450px;">
		<div class="ui three column grid" style="margin-bottom: 30px;height: 400px;">
		  <div class="column">
		    <div class="ui segment" >
		      <div class="ui card">
				  <div class="image">
				    <img src="../image/anonymous.png" onclick="location.href='#'">
				  </div>
				  <div class="content">
				    <a class="header"><span class="txt"> <%=port.get("PORT_NAME")%></span>
				    	<span class="ui orange label"style="margin-left: 3px;padding-bottom: 6px;padding-top: 6px;">대표작품</span>
				    </a>
				    <div class="meta">
				      <span class="date">디자인 > 애플리케이션</span>
				    </div>
				    <div class="description">
				     	<%=port.get("PORT_CONTENTS") %>
				    </div>
				  </div>
				  <div class="extra content">
				   <center><a>
				    <div data-tooltip="위시캣에서 진행한 프로젝트입니다." data-position="top center">
					   <img src="../image/logo.png" style="height: 15px;width: 15px;">
					       위시캣 프로젝트 포트폴리오
					</div>
				   </a></center>
				  </div>
				</div>	
		    </div>
		  </div><!-- column -->
		  <div class="column">
		    <div class="ui segment">
		      <div class="ui card">
				  <div class="image">
				    <img src="../image/anonymous.png" onclick="#">
				  </div>
				  <div class="content">
				    <a class="header"><span class="txt"><%=port.get("PORT_NAME")%> </span>
				    	<span class="ui orange label"style="margin-left: 3px;padding-bottom: 6px;padding-top: 6px;">대표작품</span>
				    </a>
				    <div class="meta">
				      <span class="date">디자인 > 애플리케이션</span>
				    </div>
				    <div class="description">
				       <%=port.get("PORT_CONTENTS") %>
				    </div>
				  </div>
				  <div class="extra content">
				    <center><a>
					    <div data-tooltip="위시캣에서 진행한 프로젝트입니다." data-position="top center">
					     	<img src="../image/logo.png" style="height: 15px;width: 15px;">
					       	위시캣 프로젝트 포트폴리오
					    </div>
				    </a></center>
				  </div>
				</div>
		    </div>
		  </div><!-- column -->
		  <div class="column">
		    <div class="ui segment">
		      <div class="ui card">
				  <div class="image">
				   <img src="../image/anonymous.png" onclick="#">
				  </div>
				  <div class="content">
				    <a class="header"><span class="txt"><%=port.get("PORT_NAME")%> </span>
				    	<span class="ui orange label"style="margin-left: 3px;padding-bottom: 6px;padding-top: 6px;">대표작품</span>
				    </a>
				    <script>
				    	var len = $('.txt').text().length;
				    	if(len > 3){
				    		$('.txt').text($('.txt').text().substring(0,8)).append('...')
				    	}
				    </script>       
				    <div class="meta">
				      <span class="date">디자인 > 애플리케이션</span>
				    </div>
				    <div class="description">
				       <%=port.get("PORT_CONTENTS") %>
				    </div>
				  </div>
				  <div class="extra content">
				    <center><a>
					    <div data-tooltip="위시캣에서 진행한 프로젝트입니다." data-position="top center">
					     	<img src="../image/logo.png" style="height: 15px;width: 15px;">
					       	위시캣 프로젝트 포트폴리오
					    </div>
				    </a></center>
				  </div>
				</div>

		    </div>
		  </div><!-- column -->
		</div><!-- three column grid -->
			
	</div><!-- container --> 
	</div>
</body>
</html>