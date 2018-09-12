<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:include page="../common/ui.jsp"/>
<body>
	<form class="ui input" action="./fileInsert" method="post" enctype="multipart/form-data"> 
		<input type="file" name="file" multiple/>
		<input type="submit" />
	</form>
	<form class="ui input" action="./fileRemove" method="post" enctype="multipart/form-data">
		<input type="file" name="file" multiple/>
		<input type="submit" value="제거"/>
	</form>
</body>
</html>