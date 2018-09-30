<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form name="form1">
		<input type="checkbox" name="chkList" value="1" /> 
		<input type="checkbox" name="chkList" value="2" /> 
		<input type="checkbox" name="chkList" value="3" />
	</form>
	
	<script>
	$("input[name=chkList]:checked").each(function() { 
		var test = $(this).val();
		alert(test);
	}
	</script>
</body>
</html>