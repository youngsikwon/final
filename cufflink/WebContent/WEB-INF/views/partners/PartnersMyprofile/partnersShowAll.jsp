<%@page import="java.util.Map"%>
<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	// DB에서 가져온 값 -> java servlet(정보) 값 여기에다가 받아 
	// 글고 변수를 for문을 돌려서 여려개를 처리햐ㅐ도 되겅 
	//전체 큰맵 불러오는 키 (partnersMyprofileMain) - Map<String,Map<String,Object>>
	Map<String,Map> map= (Map<String,Map>)request.getAttribute("partnersMyprofileMain");
	//큰맵안에 들어있는 작은맵의 키값들
		Map<String,Object> eval_avg   = map.get("partnersEvaluation_avg");   //클라이언트 평가 - 세부항목평가
		Map<String,Object> eval_cate  = map.get("partnersEvaluation_cate");  //클라이언트 평가 - 진행한카테고리
		Map<String,Object> eval_grade = map.get("partnersEvaluation_grade"); //클라이언트 평가 - 활동요약정보 - 평균평점
		Map<String,Object> eval_pro = map.get("partnersEvaluation_pro");   //클라이언트 평가 - 활동요약정보 - 진행한 프로젝트 건수
		Map<String,Object> eval_port  = map.get("partnersEvaluation_port");  //클라이언트 평가 - 활동요약정보 - 포트폴리오 갯수
		Map<String,Object> back       = map.get("partnersBackground");       //경력, 학력, 자격증
		Map<String,Object> intro      = map.get("partnersIntroduction");     //자기소개
		Map<String,Object> skill      = map.get("partnersSkill");            //보유기술
		Map<String,Object> port       = map.get("partnersPortfolio");        //포트폴리오
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>파트너스 목록 전체보기</title>

</head>
<body style="margin-left:14px;margin-right:14px;" >
	<!--=== title =========================================-->
	<div class="ui internally celled grid">
		<div class="row">
			<div class="fifteen wide column">
				<h1 style="float: left; margin-bottom: 0px"><%=intro.get("P_NAME") %></h1>
				<div class="ui green label"
					style="border-top-width: 0px; margin-top: 5px; margin-left: 7px;">활동가능</div>
				<p></p> 
				<div class="floated right">
					<i class="laptop icon"></i>
					디자이너 &nbsp;&nbsp;
					<i class="building outline icon"></i>
					개인사업자 &nbsp;&nbsp;
					<i class="credit card outline icon"></i>
					신원인증&nbsp;&nbsp;
					<i class="phone icon"></i> 
					연락처 등록
				</div>
			</div>
		</div>
	<!----- 활동요약 정보 ----->
	<div class="row">
		<div class="five wide column">
			<h3>활동 요약 정보</h3>
			<div class="ui massive star rating" style="margin-bottom: 10px;"></div><br>
		
				 <div class="left floated right aligned">평균 평점 <%=eval_grade.get("AVG_PRO") %>/평가 48개 </div>
				 <div class="left floated right aligned">계약한 프로젝트<%=eval_port.get("COUNT_PRO") %> 건</div>
				 <div class="left floated right aligned">포트폴리오  <%=eval_port.get("COUNT_PORT") %>개</div>
				 
				 
			<!-- 	 <div class="left aligned ">평균평점 4.8 </div><div class="right aligned">/평가 48개 </div><br>
				 <div class="left aligned">계약한 프로젝트</div><div class="right aligned">100건 </div><br>
				 <div class="left aligned">포트폴리오 </div><div class="right aligned"> 37개 </div> -->
						
		</div>
		<!----- 세부 항목 평가 ----->
		<div class="five wide column">
			<h3>세부 항목 평가</h3><br>
		</div>
		
		<!----- 진행한  카테고리 ----->
		<div class="five wide column">
			<h3>진행한 카테고리</h3><br>
			  <div data-tooltip="위시캣에서 진행한 프로젝트입니다." data-position="top center">
				<div class="profile-main-category">
					<h5>
						<a href="#" style="text-decoration: none; color:#333"></a>
					</h5>
					<div class="chart-box">
						<canvas id="myChart" style="display:block;margin-bottom: 50px;margin-left: 30px;">
							<div id="doughnut_tooltip" class="above" style="opacity: 0; left: 26px; top: 80px; 
							  font-family:" "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 10px; font-style: normal; font-weight: bold;">"디자인 > 웹: 32"</div>
							<ul class="doughnut-legend" style="margin-top: 4px;">
								<li><span style="background-color: #05835E;"></span>"디자인 > 애플리케이션"</li>
								<li><span style="background-color:#19906D;"></span>"디자인 > 웹"</li>
								<li><span style="background-color:#2E9D7D;"></span>"디자인 > 인쇄물"</li>
								<li><span style="background-color:#42AB8C;"></span>"디자인 > 커머스,쇼핑몰"</li>
								<li><span style="background-color:#57B89C;"></span>"디자인 > 로고"</li>
								<li><span style="background-color:#6BC6AB;"></span>"디자인 > 그래픽"</li>
								<li><span style="background-color:#80D3BB;"></span>"디자인 > 기타"</li>
							</ul>
						</canvas>
					</div>
					<script>
					new Chart(document.getElementById("myChart"),{"type":"doughnut","data":{"labels":["Red","Blue","Yellow"],"datasets":[{"label":"My First Dataset","data":[300,50,100],"backgroundColor":["rgb(255, 99, 132)","rgb(54, 162, 235)","rgb(255, 205, 86)"]}]}});
					</script>
				</div><!------  -->
			</div>
		</div><!--five wide column 끝 -->
	</div><!--활동요약정보 row끝 -->
	<!--=== 자기소개  ===========================================-->
		<div class="row" style="margin-bottom: 30px">
			<div class="fifteen wide column">
				<h2 style="float: left; margin-bottom: 0px">자기소개</h2><br>
				<p style="margin-top: 30px;"></p>
				<div><%=intro.get("P_ABOUTME") %></div>
			</div>
			<a href="#"class="ui right aligned">자기소개 더 보기 ></a>	
		</div>
		<div class="ui inverted divider"></div>
	</div>
	
	<!--=== 포트폴리오  ===========================================-->
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
				    <a class="header"><span class="txt"><%=port.get("PORT_NAME") %></span>
				    	<span class="ui orange label"style="margin-left: 3px;padding-bottom: 6px;padding-top: 6px;">대표작품</span>
				    </a>
				    <div class="meta">
				      <span class="date"><%=eval_cate.get("CATE_MAIN")%> > <%=eval_cate.get("CATE_SUB") %></span>
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
				    <a class="header"><span class="txt"><%=port.get("PORT_NAME") %></span>
				    	<span class="ui orange label"style="margin-left: 3px;padding-bottom: 6px;padding-top: 6px;">대표작품</span>
				    </a>
				    <div class="meta">
				      <span class="date"><%=eval_cate.get("CATE_MAIN") %> > <%=eval_cate.get("CATE_SUB") %></span>
				    </div>
				    <div class="description">
				      	포트폴리오 설명
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
				    <a class="header"><span class="txt"><%=port.get("PORT_NAME") %></span>
				    	<span class="ui orange label"style="margin-left: 3px;padding-bottom: 6px;padding-top: 6px;">대표작품</span>
				    </a>
				    <script>
				    	var len = $('.txt').text().length;
				    	if(len > 3){
				    		$('.txt').text($('.txt').text().substring(0,8)).append('...')
				    	}
				    </script>       
				    <div class="meta">
				      <span class="date"><%=eval_cate.get("CATE_MAIN") %> > <%=eval_cate.get("CATE_SUB") %></span>
				    </div>
				    <div class="description">
				      	포트폴리오 설명
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

		<p></p>
	<a href="#"class="ui right aligned">포트폴리오 더 보기 ></a>	
	<div class="ui inverted divider"></div>
	
	<!-- === 보유기술  ===========================================-->
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
	      <td><%=skill.get("SKILL_TEC") %><div class="ui orange label" style="padding-top: 10px pa;margin-left: 10px;padding-top: 5px;padding-bottom: 5px;">대표보유기술</div></td>
	      <td><%=skill.get("SKILL_PRO") %></td>
	      <td><%=skill.get("SKILL_EDU") %></td>
	    </tr>
	    <tr>
	      <td><%=skill.get("SKILL_TEC") %><div class="ui orange label" style="padding-top: 10px pa;margin-left: 10px;padding-top: 5px;padding-bottom: 5px;"">대표보유기술</div></td>
	      <td><%=skill.get("SKILL_PRO") %></td>
	      <td><%=skill.get("SKILL_EDU") %></td>
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
	<p></p>
	<a href="#"class="ui right aligned">보유 기술 더 보기 ></a>
	<div class="ui inverted divider"></div>
	<!-- === 경력  ===========================================-->
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
	<p></p>
	<div class="ui inverted divider"></div>
	<!-- === 학력  ===========================================================================-->
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
	      <td><%=back.get("EDU_NAME") %></td>
	      <td><%=back.get("EDU_MAJOR") %></td>
	      <td><%=back.get("EDU_PROCESS") %></td>
	      <td><%=back.get("EDU_CONDITION") %></td>
	      <td><%=back.get("EDU_INDATE") %></td>
	      <td><%=back.get("EDU_OUTDATE") %></td>
	    </tr>
	  </tbody>
	</table>
		<a href="#"class="ui right aligned">경력, 학력, 자격증 더 보기 ></a>
	<p></p>
	<div class="ui inverted divider"></div>
	
	
	<!-- === 평가  ============================================================================-->
	<h2 align="left">평가</h2>
	 <div class="ui segment" style="height: 500px;">
		<h3 class="card-title"><a href="#"> 모바일 어플리케이션 GUI 디자인 및 아이콘 디자인 작업</a></h3>
		<div class="ui grid">
		  <div class="fifteen wide column">디자인 > 어플리케이션   | 클라이언트  TeamEveryWhere</div>
		<!-----계약금액 | 계약기간 | 계약일자------------------------->
		  <div class="sixteen wide column">
		  	<table class="ui selectable celled table">
			  <thead style="align-content: center;">
			    <tr>
			      <th>계약금액</th><td>5,000,000원</td>
			      <th>계약기간</th><td>32일</td>
			      <th>계약일자</th><td>2018년 07월23일</td>
			    </tr>
			  </thead>
			</table>
		  </div>
		<!-----평점---------------------------------------------->
		  <div class="sixteen wide column " style="padding-bottom: 21px;" >
		  	 <div class="ui center aligned header">
		  	 	<div class="ui massive star rating" style="">5.0</div>
		  	 </div>
		  </div>
		<!----전문성|결과물만족도|의사소통|일정 준수|적극성-  -->
		  <div class="sixteen wide column" style="padding-bottom:7px;padding-top: 7px;">
		   <div class="ui center aligned ">
			<div class="ui center five column doubling grid" style="padding-bottom: 10px;padding-left: 30px;">
			  <div class="three wide column"  style="border-right: solid thin;padding-bottom: 2px;padding-top: 2px;">
			  	<center style="padding-bottom: 5px;">전문성</center>
			  	<center><div class="ui star rating">5.0</div></center>
			  </div>
			  <div class="three wide column"  style="border-right: solid thin;padding-bottom: 2px;padding-top: 2px;">
			  	<center style="padding-bottom: 5px;">결과물 만족도</center>
			  	<center><div class="ui star rating">5.0</div></center>
			  </div>
			  <div class="three wide column"  style="border-right: solid thin;padding-bottom: 2px;padding-top: 2px;">
			  	<center style="padding-bottom: 5px;">의사소통</center>
			  	<center><div class="ui star rating">5.0</div></center>
			  </div>
			  <div class="three wide column"  style="border-right: solid thin;padding-bottom: 2px;padding-top: 2px;">
			  	<center style="padding-bottom: 5px;">일정 준수</center>
			  	<center><div class="ui star rating" >5.0</div></center>
			  </div>
			  <div class="three wide column"  style="padding-bottom: 2px;padding-top: 2px;">
			  	<center style="padding-bottom: 5px;">적극성</center>
			  	<center><div class="ui star rating">5.0</div></center>
			  </div>
			 </div>
		  </div>
		</div>
		<p></p>
		<!-----클라이언트 코멘트---------------------------------->
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
	<p></p>
	<a href="#"class="ui right aligned">평가 더 보기 ></a>
	
<!--==========================================================================================-->
<!--==========================================================================================-->
	
	<script type="text/javascript">
		$('.ui.rating')
			.rating({
				initialRating : 4,
				maxRating : 5
			});
		$('.toggle.example .rating')
			.rating('enable')
		;
		
	</script>
</body>
</html>