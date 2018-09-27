<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="../common/ui.jsp"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>파트너스 메뉴</title>
<script type="text/javascript">
	function p_showAll(){
		location.href="./getPartnersShowAll.jsp"
	}	
	function p_introduce(){
		location.href="./getPartnersIntroduce.jsp"
	}	
	function p_portfolio(){
		location.href="./getPartnersPortfolio.jsp"
	}	
	function p_skill(){
		location.href="./getPartnersSKill.jsp"
	}	
	function p_evaluation(){
		location.href="./getPartnersEvaluation.jsp"
	}	
	function p_project_ing(){
		location.href="./getPartnersProject_ing.jsp"
	}	
	
</script>
</head>
<body>
<!--=====파트너스 메뉴===================================================================================================-->
	
	<div id="p_menu" class="ui vertical pointing menu">
	  <a id="p_showAll"class="active item">
	        전체보기
	  </a>
	  <a id="p_introduce"class="item" onclick="javascript:location.href'./getPartnersShowAll.jsp'">
	        자기 소개
	  </a>
	  <a id="p_portfolio"class="item">
	       포트폴리오
	  </a>
	  <a id="p_skill" class="item">
	       보유 기술
	  </a>
	  <a id="p_edu"class="item">
	       경력, 학력, 자격증
	  </a>
	  <a id="p_evaluation "class="item">
	      클라이언트의 평가
	  </a>
	  <a id="p_project_ing"class="item">
	     위시켓에서 진행한 프로젝트
	  </a>
	</div>
<!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->	
<script type="text/javascript">
	$(document).ready(function(){
		$("#p_showAll").show();
		$("#p_introduce").hide();
		$("#p_portfolio").hide();
		$("#p_skill").hide();
		$("#p_edu").hide();
		$("#p_evaluation").hide();
		$("#p_project-ing").hide();
	});//ready	
	
		$("p_menu").find('a').click(function(){
			$(this).attr('class','item active');
				if($(this).attr('id')=="p_showAll"){
					$("#p_showAll").show();
					$("#p_introduce").hide();
					$("#p_portfolio").hide();
					$("#p_skill").hide();
					$("#p_edu").hide();
					$("#p_evaluation").hide();
					$("#p_project-ing").hide();	
				}
				else if($(this).attr('id')=="p_introduce"){
					$("#p_showAll").hide();
					$("#p_introduce").show();
					$("#p_portfolio").hide();
					$("#p_skill").hide();
					$("#p_edu").hide();
					$("#p_evaluation").hide();
					$("#p_project-ing").hide();	
				}
				else if($(this).attr('id')=="p_portfolio"){
					$("#p_showAll").hide();
					$("#p_introduce").hide();
					$("#p_portfolio").show();
					$("#p_skill").hide();
					$("#p_edu").hide();
					$("#p_evaluation").hide();
					$("#p_project-ing").hide();	
				}
				else if($(this).attr('id')=="p_skill"){
					$("#p_showAll").hide();
					$("#p_introduce").hide();
					$("#p_portfolio").hide();
					$("#p_skill").show();
					$("#p_edu").hide();
					$("#p_evaluation").hide();
					$("#p_project-ing").hide();	
				}
				else if($(this).attr('id')=="p_edu"){
					$("#p_showAll").hide();
					$("#p_introduce").hide();
					$("#p_portfolio").hide();
					$("#p_skill").hide();
					$("#p_edu").show();
					$("#p_evaluation").hide();
					$("#p_project-ing").hide();	
				}
				else if($(this).attr('id')=="p_evaluation"){
					$("#p_showAll").hide();
					$("#p_introduce").hide();
					$("#p_portfolio").hide();
					$("#p_skill").hide();
					$("#p_edu").hide();
					$("#p_evaluation").show();
					$("#p_project-ing").hide();	
				}
				else if($(this).attr('id')=="p_project_ing"){
					$("#p_showAll").hide();
					$("#p_introduce").hide();
					$("#p_portfolio").hide();
					$("#p_skill").hide();
					$("#p_edu").hide();
					$("#p_evaluation").hide();
					$("#p_project-ing").show();	
				}
		});//p_menu function
		
		
</script>
</body>
</html>