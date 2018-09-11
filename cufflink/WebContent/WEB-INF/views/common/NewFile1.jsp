<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="./ui.jsp" />
<meta charset="UTF-8">
<title>test</title>
<link rel="stylesheet" href="./css/cuffLink.css" />
<link rel="stylesheet" href="./css/login.css" />
</head>
<body>

<div class="ui styled fluid accordion">
  <div class="ui two column grid title">
  	<div class="column">
		<i class="envelope outline icon"></i>
    		이메일
    </div>
    <div class="column" style="text-align:right;">
  		<i class="dropdown icon"></i>
  	</div>
  </div>
  <div class="content">
   	<div class="ui column grid container" style="padding-top: 0px; border: 1px solid #dedede; text-align:center;">
		 <div class="column" style="padding-left: 20px;padding-right:0px;padding-top: 20px;padding-bottom: 20px;">
			<img class="ui mini" src="../../image/setting_email.png">&nbsp;&nbsp; twins0313@naver.com 으로 알림을 받습니다.
		</div>
	</div>
  </div>
  <div></div>
  
  
  <div class="ui two column grid title">
  	<div class="column">
		<i class="mobile alternate icon"></i>
    		문자메시지
    </div>
    <div class="column" style="text-align:right;">
  		<i class="dropdown icon"></i>
  	</div>
  </div>
  <div class="content">
    	내용 넣기
  </div>
</div>
<script type="text/javascript">
$('.ui.accordion')
  .accordion({
    selector: {
      trigger: '.title .icon'
    }
  });
</script>
</body>
</html>