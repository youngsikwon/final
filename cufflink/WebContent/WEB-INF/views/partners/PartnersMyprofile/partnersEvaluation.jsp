<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.Map"%>
<%
	Map<String,Map> map = (Map<String,Map>)request.getAttribute("partnersMyprofileMain");
	Map<String,Object> eval_avg   = map.get("partnersEvaluation_avg");   //클라이언트 평가 - 세부항목평가
	Map<String,Object> eval_cate  = map.get("partnersEvaluation_cate");  //클라이언트 평가 - 진행한카테고리
	Map<String,Object> eval_grade = map.get("partnersEvaluation_grade"); //클라이언트 평가 - 활동요약정보 - 평균평점
	Map<String,Object> eval_pro = map.get("partnersEvaluation_pro");   //클라이언트 평가 - 활동요약정보 - 진행한 프로젝트 건수
	Map<String,Object> eval_port  = map.get("partnersEvaluation_port");  //클라이언트 평가 - 활동요약정보 - 포트폴리오 갯수
    
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>클라이언트 평가</title>
</head>
<body>


	<div class="ui container" >
	
	<!-- main 입력 시작-->
		
		<div class="ui column" style="padding-left: 5px; padding-top:10px; padding-bottom: 0px;">
			<div class="ui container" style="padding: 20px; padding-bottom: 20px; left: 5px; border: 1px solid #dedede; height:auto;width:auto;">
				<div style="padding-bottom:20px;">
					<h3 style="text-align: left">클라이언트 평가</h3>
				</div>
				<div class="ui container" style="padding-top: 0px; padding-bottom: 30px; padding-left: 0px; padding-right: 20px;">
					<hr class="dotted" style="" />
				</div>
				<div style="text-align:left;">
					클라이언트 평가
				</div>
			</div>
		</div>
	
		<!-----클라이언트 코멘트---------------------------------->
	<div class="ui container" >
		<div class="sixteen wide column">
		 <div class="ui unstackable items">
			  <div class="item" style="margin-left: 30px;">
			    <div class="ui small circular rotate reveal image">
			      <img class="ui hidden content" src="../image/anonymous.png">
			      <img class="ui visible content" src="../image/wishket.png">
			    </div>
			    <div class="content" style="padding-left: 30px;">
			      <a class="header" style="margin-top: 5px;"><span class="ui gray label">클라이언트</span></a>
			      <div class="meta">
			        <span>emit2004(아이디)</span>
			      </div>
			        <p></p>
			      <div class="description">
			      		내용 - 클라이언트의 평가/ 코멘트....  <a href="#">자세히 보기</a>
			      </div>
		   		 </div>
		  	 </div>
		  </div>
		</div>
	</div>	
	
	
	</div>
	<!-- main 입력 끝-->

</body>
</html>