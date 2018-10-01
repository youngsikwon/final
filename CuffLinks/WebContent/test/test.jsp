<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="./ui.jsp"/>
</head>



<body>
<form>
  <p>
    <input type="checkbox" name="newsletter" value="Hourly" >
 
    <input type="checkbox" name="newsletter" value="Daily">
    <input type="checkbox" name="newsletter" value="Weekly">
 
    <input type="checkbox" name="newsletter" value="Monthly" >
    <input type="checkbox" name="newsletter" value="Yearly">
  </p>
</form>
<div></div>
 
<script>
var countChecked = function() {
  var n = $( "input:checked" ).val();
  alert(n);
};
countChecked();
 
$( "input[type=checkbox]" ).on( "click", countChecked );
</script>
 
</body>
</html>