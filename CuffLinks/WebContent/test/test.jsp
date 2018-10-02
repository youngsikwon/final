<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="./ui.jsp"/>
<style>

.list .master {float: left; }
.list {width: 120px; background: rgba(255,255.255,0.5);}
.list .item {}
.list .child {padding-left: 10px; font-size: 13px;}
.list .child .dev {float: left;}
.checkbox .h11 {margin-left: 15px;}
</style>

</head>
<body>
	<form>
		<div class="list">
			<div class="checkbox">
				<input id="masterdev" class="master" type="checkbox" id="dev" name="dev" value="개발" checked="checked"> <div class="dev h11">개발</div>
			</div>
			<div id="list" class="list">
				<div class="item">
					<div class="child checkbox">
						<input class="dev" type="checkbox" id="dev_web" name="dev" value="웹"> <div class="dev_web h11">웹</div>
					</div>
				</div>
				<div class="item">
					<div class="child checkbox">
						<input class="dev" type="checkbox" id="dev_application" name="dev" value="애플리케이션"> <div class="dev_application h11">애플리케이션</div>
					</div>
				</div>
				<div class="item">
					<div class="child checkbox">
						<input class="dev" type="checkbox" id="dev_wordPress" name="dev" value="워드프레스" > <div class="dev_wordPress h11">워드프레스</div>
					</div>
				</div>
				<div class="item">
					<div class="child checkbox">
						<input class="dev" type="checkbox" id="dev_publishing" name="dev" value="퍼블리싱"> <div class="dev_publishing h11">퍼블리싱</div>
					</div>
				</div>
				<div class="item">
					<div class="child checkbox">
						<input class="dev" type="checkbox" id="dev_software" name="dev" value="일반 소프트웨어"> <div class="dev_software h11">일반 소프트웨어</div>
					</div>
				</div>
				<div class="item">
					<div class="child checkbox">
						<input class="dev" type="checkbox" id="dev_commerce" name="dev" value="커머스,쇼핑몰"> <div class="dev_commerce h11">커머스,쇼핑몰</div>
					</div>
				</div>
				<div class="item">
					<div class="child checkbox">
						<input class="dev" type="checkbox" id="dev_game" name="dev" value="게임"> <div class="dev_game h11">게임</div>
					</div>
				</div>
				<div class="item">
					<div class="child checkbox">
						<input class="dev" type="checkbox" id="dev_embeded" name="dev" value="임베디드"> <div class="dev_embeded h11">임베디드</div>
					</div>
				</div>
				<div class="item">
					<div class="child checkbox">
						<input class="dev" type="checkbox" id="dev_outside" name="dev" value="기타"> <div class="dev_outside h11">기타</div>
					</div>
				</div>
			</div>
		</div>
		<div class="list">
			<div class="checkbox">
				<input id="masterdesign" class="master" type="checkbox" name="design" value="디자인" checked="checked"> <div class="design h11">디자인</div>
			</div>
			<div id="list" class="list">
				<div class="item">
					<div class="child checkbox">
						<input class="dev" type="checkbox" id="dev_web" name="dev" value="웹"> <div class="dev_web h11">웹</div>
					</div>
				</div>
				<div class="item">
					<div class="child checkbox">
						<input class="dev" type="checkbox" id="dev_application" name="dev" value="애플리케이션"> <div class="dev_application h11">애플리케이션</div>
					</div>
				</div>
				<div class="item">
					<div class="child checkbox">
						<input class="dev" type="checkbox" id="dev_wordPress" name="dev" value="워드프레스" > <div class="dev_wordPress h11">제품</div>
					</div>
				</div>
				<div class="item">
					<div class="child checkbox">
						<input class="dev" type="checkbox" id="dev_publishing" name="dev" value="퍼블리싱"> <div class="dev_publishing h11">프레젠테이션</div>
					</div>
				</div>
				<div class="item">
					<div class="child checkbox">
						<input class="dev" type="checkbox" id="dev_software" name="dev" value="일반 소프트웨어"> <div class="dev_software h11">인쇄물</div>
					</div>
				</div>
				<div class="item">
					<div class="child checkbox">
						<input class="dev" type="checkbox" id="dev_commerce" name="dev" value="커머스,쇼핑몰"> <div class="dev_commerce h11">커머스,쇼핑몰</div>
					</div>
				</div>
				<div class="item">
					<div class="child checkbox">
						<input class="dev" type="checkbox" id="dev_game" name="dev" value="게임"> <div class="dev_game h11">로고</div>
					</div>
				</div>
				<div class="item">
					<div class="child checkbox">
						<input class="dev" type="checkbox" id="dev_embeded" name="dev" value="임베디드"> <div class="dev_embeded h11">그래픽</div>
					</div>
				</div>
				<div class="item">
					<div class="child checkbox">
						<input class="dev" type="checkbox" id="dev_embeded" name="dev" value="임베디드"> <div class="dev_embeded h11">영상</div>
					</div>
				</div>
				<div class="item">
					<div class="child checkbox">
						<input class="dev" type="checkbox" id="dev_embeded" name="dev" value="임베디드"> <div class="dev_embeded h11">게임</div>
					</div>
				</div>
				<div class="item">
					<div class="child checkbox">
						<input class="dev" type="checkbox" id="dev_outside" name="dev" value="기타"> <div class="dev_outside h11">기타</div>
					</div>
				</div>
			</div>
		</div>
	</form>
<div></div>
 
<script>
 $(document).ready(function() {
	
	if($('#masterdev').prop("checked")){
		$('.dev').attr("checked","true");
		alert($('#masterdev').val()); 
	} 
	
	if($('#masterdesign').prop("checked")){
		$('.design').attr("checked","true");
		alert($('#masterdesign').val()); 
	} 
	
	$('#masterdev').click(function() {
		if($('#masterdev').prop("checked")){  
			$('.dev').attr("checked","true");
			alert("개발체크"); 
		} else if(!$('#masterdev').prop("checked")){
			$('.dev').attr("checked","false");
			alert("개발해제"); 
		}
		
	});	
	
	
	
	/* $(this).prop("checked").(function() {
		if($('#masterdev').prop("checked")){  
			alert("개발체크"); 
		} else if(!$('#masterdev').prop("checked")){
			alert("개발체크해제"); 
		}
	
	
		if($('#masterdesign').prop("checked")){
			alert("디자인체크");
		} else if(!$('#masterdesign').prop("checked")){
			alert("디자인체크해제");
		}

	}); */
});



/* 				$('.masterdev').click(function() {
					$("input[class=masterdev]:checked").each(function() {
							var dev_sub= $(this).val();
							alert(dev_sub);
					});
				});	
			  
			  
	    		$('.dev').click(function() {
	    			$("input[class=dev]:checked").each(function() {
	    	  			var dev_sub= $(this).val();
	    	  			alert(dev_sub);
	    			});
	    		});	 */
	
</script>
 
</body>
</html>