<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<div class="submenu" style="border-bottom: groove thin;">
	<div class="ui container">
		<div class="ui secondary menu" id="menu">
			<a href="/projectSubmitted" id="p_Submitted" class="item"> 검수중 </a> 
			<a href="/projectRecruiting" id="p_Recruiting" class="item"> 지원자 모집중 </a> 
			<a href="/projectContractInProgress" id="p_ContractInProgress" class="item"> 진행중인 프로젝트 </a> 
			<a href="/projectReviewContract" id="p_ReviewContract" class="item"> 종료된 프로젝트 </a>
		</div>
	</div>
</div>

<script>

	$('#menu').find('a').click(function(e) {
	
		$('#menu').find('a').attr('class', 'item');
		$(this).attr('class', 'item active');
		
		classid = $(this).attr('id');
		classid1 = classid;
		
		alert("first : "+classid);
		
	});

	$(function(){
		
		var thisfilefullname = document.URL.substring(document.URL.lastIndexOf("/") , document.URL.length);

		$('#menu').find('a').attr('class', 'item');
		$(this).attr('class', 'item active');
		
		alert("현재파일이름 :"+ thisfilefullname);

		var click_id = $(this).attr('id');
		
		alert("현재파일이1 :"+ click_id);

		var click_val = $("#click_id").val();

		alert("현재파일이2 :"+ click_val);
				
				
					$(this).attr('id').parent().addClass('active item');

	})

 </script> 

