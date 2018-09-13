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

<script>
 $('#menu').find('a').click(function() {
		
		$('#menu').find('a').attr('class', 'item');
		$(this).attr('class', 'item active');
		
		if($(this).attr('id')=='p_Submitted'){//검수중
			$(this).attr('id').parent().addClass('active item');
			$("#p_Recruiting").removeClass('item');
			$("#p_ContractInProgress").removeClass('item');
			$("#p_ReviewContract").removeClass('item');
		}
		else if($(this).attr('id')=='p_Recruiting'){//지원자 모집중
			$("#p_Submitted").removeClass('item');
			$("#p_Recruiting").addClass('active');
			$("#p_ContractInProgress").removeClass('item');
			$("#p_ReviewContract" ).removeClass('item');
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

</body>
</html>