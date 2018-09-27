<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.Map" %>
<%
	Map<String,Map> map = (Map<String,Map>)request.getAttribute("partnerMyprofileMain");
	Map<String,Object> skill = map.get("partnersSkill");
%>
<html>
<head>
<jsp:include page="../../common/ui.jsp" />
<meta charset="UTF-8">
<title>파트너스 보유기술</title>
<link rel="stylesheet" href="./css/partners.css" />
<link rel="stylesheet" href="./css/login.css" />
</head>
<body>
<div class="ui container" >
	
	<!-- main 입력 시작-->
	<h2 align="left">보유기술</h2>
		<table class="ui selectable celled table" style="margin-bottom: 30px;">
	  <thead>
	    <tr>
	      <th>종류 </th>
	      <th>숙련도</th>
	      <th>경험</th>
	    </tr>
	  </thead>
	  <tbody>
	    <tr>
	      <td><%=skill.get("SKILL_TEC") %> <div class="ui orange label" style="padding-top: 10px pa;margin-left: 10px;padding-top: 5px;padding-bottom: 5px;">대표보유기술</div></td>
	      <td><%=skill.get("SKILL_PRO") %> </td>
	      <td><%=skill.get("SKILL_EDU") %> </td>
	    </tr>
	    <tr>
	      <td><%=skill.get("SKILL_TEC")%><div class="ui orange label" style="padding-top: 10px pa;margin-left: 10px;padding-top: 5px;padding-bottom: 5px;"">대표보유기술</div></td>
	      <td><%=skill.get("SKILL_PRO")%></td>
	      <td><%=skill.get("SKILL_EDU")%> </td>  
	    </tr>                                             
	    <tr>
	      <td><%=skill.get("SKILL_TEC") %></td>
	      <td><%=skill.get("SKILL_PRO") %></td>
	      <td><%=skill.get("SKILL_EDU") %></td>
	    </tr>
	    <tr>
	      <td><%=skill.get("SKILL_TEC") %></td>
	      <td><%=skill.get("SKILL_PRO") %></td>
	      <td><%=skill.get("SKILL_EDU") %></td>
	    </tr>
	  </tbody>
	</table>
		
	<!-- main 입력 끝-->

	</div>
	
	
</body>
</html>