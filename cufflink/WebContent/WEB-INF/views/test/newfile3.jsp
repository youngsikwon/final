<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<div class="ui segment" id="example1">
  <div class="left ui rail" style="">
    <p></p>
    <p></p>
    <p></p>
    <div class="ui sticky" style="left: 274.5px;">
      <h3 class="ui header">Stuck Content</h3>
      <img>
    </div>
  </div>
  <div class="right ui rail" style="">
    <div class="ui sticky" style="left: 1356.5px;">
      <h3 class="ui header">Stuck Content</h3>
      <img>
    </div>
  </div>
  <p></p>
  <p></p>
  <p></p>
  <p></p>
  <p></p>
  <p></p>
  <p></p>
  <p></p>
  <p></p>
</div>

<script type="text/javascript">
$('.ui.sticky')
  .sticky({
    context: '#example1'
  });
</script>
</body>
</html>