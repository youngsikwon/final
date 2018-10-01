<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="./ui.jsp"/>
<style>
.list .masterdev {float: left;}
.list {}
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
				<input class="masterdev" type="checkbox" id="dev" name="dev"> <div class="dev h11">개발</div>
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
	</form>
<div></div>
 
<script>
	
	$('.list .masterdev.checkbox')
	.checkbox({
	  // check all children
	  onChecked: function() {
	    var
	      $childCheckbox  = $(this).closest('.checkbox').siblings('.list').find('.checkbox')
	    ;
	    $childCheckbox.checkbox('check');
	    
		/* 개발과 디자인 전체 체크여부 */
	     if($('#dev').prop("checked")){  
		  	 alert($('.dev').text()); 
	    	
		} 
		if($('#design').prop("checked")) {
		 	alert($('.design').text());	
		} 
	    
	  },
	  // uncheck all children
	  onUnchecked: function() {
	    var
	      $childCheckbox  = $(this).closest('.checkbox').siblings('.list').find('.checkbox')
	    ;
	    $childCheckbox.checkbox('uncheck');
	    
	  }

	});
	
	$('.list .child.checkbox')
	  .checkbox({
		
	    // Fire on load to set parent value
	    fireOnInit : true,
	    // Change parent state on each child checkbox change
	    onChange   : function() {
	      var
	        $listGroup      = $(this).closest('.list'),
	        $parentCheckbox = $listGroup.closest('.item').children('.checkbox'),
	        $checkbox       = $listGroup.find('.checkbox'),
	        allChecked      = true,
	        allUnchecked    = true
	        ;

	      // check to see if all other siblings are checked or unchecked
	      $checkbox.each(function() {
	    	  
	    	if($(this).checkbox('is checked') ) { 
			  
	    		$('.dev').click(function() {
	    			$("input[class=dev]:checked").each(function() {
	    	  			var dev_sub[]= $(this).val();
	    	  			alert(dev_sub);
	    			});
	    		});	
	    		
	    		
	    		
	          allUnchecked = false;
	        	 
	        }
	        else {
	          allChecked = false;
	          
	        }
	        
	      });
	      // set parent checkbox state, but dont trigger its onChange callback
	      if(allChecked) {
	        $parentCheckbox.checkbox('set checked');

	      }
	      else if(allUnchecked) {
	        $parentCheckbox.checkbox('set unchecked');
	      }
	      else {
	        $parentCheckbox.checkbox('set indeterminate');
	      }
	    }
	  });
		
	
	
	
	
	
/* 	)}; */
</script>
 
</body>
</html>