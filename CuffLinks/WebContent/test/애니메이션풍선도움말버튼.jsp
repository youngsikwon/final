<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
/* icon-font */
.icon-font {text-align: center; margin-top: 40px; padding-bottom: 40px;}
.icon-font ul { }
.icon-font li {position: relative; display: inline; }
      /* border-radius: 50%; ==>> 사각의 웹폰트를 원형으로 만들어준다. */
.icon-font li a {display: inline-block; width: 60px; height: 60px; background-color: #3192bf; color: #fff; font-size: 35px; border-radius: 50%; margin: 0 3px;}
      /* translateX(-50%); ==>> icon-font를 기준으로 중앙정렬 left를 이용하여 중앙에 오도록 정렬*/
      /* border-radius: 6px 0; ==>> 사각모양의 왼쪽상단 오른쪽하단 둥글게 만들기 */
.icon-font li a .tool {position: absolute; left: 50%; bottom: -30px; width: 100px;font-size: 12px; background-color: red; padding: 1px 7px; border-radius: 6px 0; opacity: 0; transform: translateX(-50%); transition: all 0.3s ease-in-out; }
.icon-font li a:hover .tool {opacity: 1; bottom: -20px;}
      /* border-top: 5px solid #3192bf; border-left: 5px solid transparent; border-right: 5px solid transparent; ==>> icon-font의 아래삼각형 만들기 */
.icon-font li a .tool:before {position: absolute; left: 50%; margin-left: -5px; content: "";  bottom: 5px; border-top: -5px solid black; border-left: 5px solid transparent; border-right: 5px solid transparent; }
      /* ie7일때 .icon-font 버튼 숨기기 */
.ie7 .icon-font {display: none; }
      /* ie8일때 .icon-font의 상단 글자 숨기기 */
.ie8 .icon-font li a .tool {display: none; }

@media (max-width: 600px) {
      /* .icon-font 모두 숨기기 */
      .title, .icon-font {display: none;}
}
</style>
</head>
<body>
	<div style="height: 200px;">
	</div>
	<div class="icon-font">
		<ul>
			<li><a href="#"> <i class="fab fa-facebook-square"></i> <!-- 버튼 상단 슬로우모션 내용 -->
					<span class="tool">음성검색</span>
			</a></li>
			<li><a href="#"> <i class="fab fa-youtube-square"></i> <!-- 버튼 상단 슬로우모션 내용 -->
					<span class="tool">youtube</span>
			</a></li>
			<li><a href="#"> <i class="fas fa-leaf"></i> <!-- 버튼 상단 슬로우모션 내용 -->
					<span class="tool">spring</span>
			</a></li>
			<li><a href="#"> <i class="fab fa-css3"></i> <!-- 버튼 상단 슬로우모션 내용 -->
					<span class="tool">css3</span>
			</a></li>
		</ul>
	</div>
	<!-- //icon-font -->
</body>
</html>