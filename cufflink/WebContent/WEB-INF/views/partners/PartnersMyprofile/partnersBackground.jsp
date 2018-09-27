<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.Map"%>
<%
	Map<String,Map> map = (Map<String,Map>)request.getAttribute("partnersMyprofileMain");
	Map<String,Object> back = map.get("partnersBackground");

%>
<html>
<head>
<jsp:include page="../../common/ui.jsp" />
<meta charset="UTF-8">
<title>파트너스 경력,학력, 자격증</title>
<link rel="stylesheet" href="./css/partners.css" />
<link rel="stylesheet" href="./css/login.css" />
</head>
	<div class="ui container" >
	
	<!-- main 입력 시작-->
	<!-- 경력-------------------------------------------------------------------------------- -->
		<h2 align="left">경력</h2>
			<table class="ui fixed table"style="margin-bottom: 30px;">
			  <thead>
			    <tr><th>회사명</th>
			    <th>근무부서</th>
			    <th>직위</th>
			    <th>근무기간</th>
			  </tr></thead>
			  <tbody>
			    <tr>
			      <td><%=back.get("CA_NAME") %></td>
			      <td><%=back.get("CA_DEPT") %></td>
			      <td><%=back.get("CA_SPOT") %></td>
			      <td><%=back.get("CA_DATE") %></td>
			    </tr>
			  </tbody>
			</table>
		</div>
	<!--학력  ------------------------------------------------------------------------------------->
	<div class="ui container" >
		<h2 align="left">학력</h2>
			<table class="ui fixed table" style="margin-bottom: 30px;">
			  <thead>
			    <tr><th>학교명</th>
			    <th>전공</th>
			    <th>분류</th>
			    <th>상태</th>
			    <th>입학일</th>
			    <th>졸업일</th>
			  </tr></thead>
			  <tbody>
			    <tr>
			      <td><%=back.get("EDU_NAME") %> </td>
			      <td><%=back.get("EDU_MAJOR") %> </td>
			      <td><%=back.get("EDU_PROCESS") %> </td>
			      <td><%=back.get("EDU_CONDITION")%></td>
			      <td><%=back.get("EDU_INDATE") %> </td>
			      <td><%=back.get("EDU_OUTDATE") %></td>
			    </tr>
			  </tbody>
			</table>
	</div>

</body>
</html>