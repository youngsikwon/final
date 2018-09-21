<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<jsp:include page="../common/ui.jsp" />
<style>
#example .main.container {
	padding: 1em 0em 1em;
}

body {
	margin: 0;
	padding: 0;
	overflow-x: hidden;
	min-width: 320px;
	background: #fff;
}
</style>

</head>
<body>
	<div class="main ui container">
		<div class="ui tab active" data-tab="examples">
			<h2 class="ui dividing header">
				채팅버튼 테스트<a class="anchor" id="introduction"></a>
			</h2>
		</div>
		<!-- 채팅이미지ㅣ=====================================================================-->
		<div class="ui segment" id="example2">
			<div class="div">
				채팅테스트문장만들기<br> 채팅테스트문장만들기<br> 채팅테스트문장만들기<br>
				채팅테스트문장만들기<br> 채팅테스트문장만들기<br> 채팅테스트문장만들기<br>
				채팅테스트문장만들기<br> 채팅테스트문장만들기<br> 채팅테스트문장만들기<br>
				채팅테스트문장만들기<br> 채팅테스트문장만들기<br> 채팅테스트문장만들기<br>
				채팅테스트문장만들기<br> 채팅테스트문장만들기<br> 채팅테스트문장만들기<br>
				채팅테스트문장만들기<br> 채팅테스트문장만들기<br> 채팅테스트문장만들기<br>
				채팅테스트문장만들기<br> 채팅테스트문장만들기<br> 채팅테스트문장만들기<br>
				채팅테스트문장만들기<br> 채팅테스트문장만들기<br> 채팅테스트문장만들기<br>
				채팅테스트문장만들기<br> 채팅테스트문장만들기<br> 채팅테스트문장만들기<br>
				채팅테스트문장만들기<br> 채팅테스트문장만들기<br> 채팅테스트문장만들기<br>
				채팅테스트문장만들기<br> 채팅테스트문장만들기<br> 채팅테스트문장만들기<br>
				채팅테스트문장만들기<br> 채팅테스트문장만들기<br> 채팅테스트문장만들기<br>
				채팅테스트문장만들기<br> 채팅테스트문장만들기<br> 채팅테스트문장만들기<br>
				채팅테스트문장만들기<br> 채팅테스트문장만들기<br> 채팅테스트문장만들기<br>
				채팅테스트문장만들기<br> 채팅테스트문장만들기<br> 채팅테스트문장만들기<br>
				채팅테스트문장만들기<br> 채팅테스트문장만들기<br> 채팅테스트문장만들기<br>
				채팅테스트문장만들기<br> 채팅테스트문장만들기<br> 채팅테스트문장만들기<br>
				채팅테스트문장만들기<br> 채팅테스트문장만들기<br> 채팅테스트문장만들기<br>
				채팅테스트문장만들기<br> 채팅테스트문장만들기<br> 채팅테스트문장만들기<br>
				채팅테스트문장만들기<br> 채팅테스트문장만들기<br> 채팅테스트문장만들기<br>
				채팅테스트문장만들기<br> 채팅테스트문장만들기<br> 채팅테스트문장만들기<br>
				채팅테스트문장만들기<br> 채팅테스트문장만들기<br> 채팅테스트문장만들기<br>
				채팅테스트문장만들기<br> 채팅테스트문장만들기<br> 채팅테스트문장만들기<br>
				채팅테스트문장만들기<br> 채팅테스트문장만들기<br> 채팅테스트문장만들기<br>
			</div>
				<div class="ui rail" style="text-align:right">
					<div class="ui rail right" style="width:100%">
						<div class="ui sticky fixed bottom" style="width: 100px">
							<h3 class="ui header">하단메뉴2</h3>
							<img class="ui image" src="/image/livechat.jpg" width=100px height=100px>
						</div>
					</div>
				</div>

		</div>
		<!-- 채팅이미지ㅣ=====================================================================-->
	</div>
	<script type="text/javascript">
		$('.ui.sticky').sticky({
			offset : 50,
			bottomOffset : 50,
			context : '#element-to-follow'
		});
	</script>
</body>
</html>