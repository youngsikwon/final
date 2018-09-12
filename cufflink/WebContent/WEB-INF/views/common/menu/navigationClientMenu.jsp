<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
 <script>
 $('#menu').find('a').click(function() {
		$('#menu').find('a').attr('class', 'item');
		$(this).attr('class', 'item active');

		if($(this).attr('id')=='p_Submitted'){//검수중
			$("#p_Submitted").addClass('active');
			$("#p_Recruiting").hide();
			$("#p_ContractInProgress").hide();
			$("#p_ReviewContract" ).hide();
		}
		else if($(this).attr('id')=='p_Recruiting'){//지원자 모집중
			$("#p_Submitted").removeClass('active');
			$("#p_Recruiting").addClass('active');
			$("#p_ContractInProgress").removeClass('active');
			$("#p_ReviewContract" ).removeClass('active');
		}
		else if($(this).attr('id')=='projectContractInProgress'){//진행중인 프로젝트 
			$("#p_Submitted").hide();
			$("#p_Recruiting").hide();
			$("#p_ContractInProgress").show();
			$("#p_ReviewContract" ).hide();
		}
		else if($(this).attr('id')=='projectReviewContract'){//종료된 프로젝트
			$("#p_Submitted").hide();
			$("#p_Recruiting").hide();
			$("#c_gmap").hide();
			$("#p_ReviewContract" ).show();

		}
	})
  </script>
<div class="submenu" style="border-bottom: groove thin;">
	<div class="ui container">
		<div class="ui secondary menu">
			<a href="/projectSubmitted" id="p_Submitted" class="item"> 검수중 </a> 
			<a href="/projectRecruiting" id="p_Recruiting" class="item"> 지원자 모집중 </a> 
			<a href="/projectContractInProgress" id="p_ContractInProgress" class="item"> 진행중인 프로젝트 </a> 
			<a href="/projectReviewContract" id="p_ReviewContract" class="item"> 종료된 프로젝트 </a>
		</div>
	</div>
</div>