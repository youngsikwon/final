<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="./ui.jsp" />
<meta charset="UTF-8">
<title>test</title>
<link rel="stylesheet" type="text/css" href="../dist/semantic.css">
<link rel="stylesheet" href="./css/cuffLink.css" />
<link rel="stylesheet" href="./css/login.css" />
</head>
<body>
	<div class="ui secondary pointing menu">
		<a class="item"> Home </a> <a class="item active"> Messages </a> <a
			class="item"> Friends </a>
		<div class="right menu">
			<a class="ui item"> Logout </a>
		</div>
	</div>
	<div class="ui segment">
		<p></p>
	</div>
	<div class="ui form">
		<div class="inline fields">
			<div class="field">
				<div class="ui radio checkbox">
					<input type="radio" name="frequency" checked="checked"> <label>클라이언트</label>
				</div>
			</div>
			<div class="field">
				<div class="ui radio checkbox">
					<input type="radio" name="frequency"> <label>파트너스</label>
				</div>
			</div>
		</div>
	</div>

	<script src="/javascript/dropdown.js"></script>
	<div class="ui four item stackable tabs menu">
		<a class="item active" data-tab="definition">Definition</a> <a
			class="item" data-tab="examples">Examples</a> <a class="item"
			data-tab="usage">Usage</a> <a class="item" data-tab="settings">Settings</a>
	</div>






	<div class="ui comments">
		<h3 class="ui dividing header">Comments</h3>
		<div class="comment">
			<a class="avatar"> <img src="/images/avatar/small/matt.jpg">
			</a>
			<div class="content">
				<a class="author">Matt</a>
				<div class="metadata">
					<span class="date">Today at 5:42PM</span>
				</div>
				<div class="text">How artistic!</div>
				<div class="actions">
					<a class="reply">Reply</a>
				</div>
			</div>
		</div>
		<div class="comment">
			<a class="avatar"> <img src="/images/avatar/small/elliot.jpg">
			</a>
			<div class="content">
				<a class="author">Elliot Fu</a>
				<div class="metadata">
					<span class="date">Yesterday at 12:30AM</span>
				</div>
				<div class="text">
					<p>This has been very useful for my research. Thanks as well!</p>
				</div>
				<div class="actions">
					<a class="reply">Reply</a>
				</div>
			</div>
			<div class="comments">
				<div class="comment">
					<a class="avatar"> <img src="/images/avatar/small/jenny.jpg">
					</a>
					<div class="content">
						<a class="author">Jenny Hess</a>
						<div class="metadata">
							<span class="date">Just now</span>
						</div>
						<div class="text">Elliot you are always so right :)</div>
						<div class="actions">
							<a class="reply">Reply</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="comment">
			<a class="avatar"> <img src="/images/avatar/small/joe.jpg">
			</a>
			<div class="content">
				<a class="author">Joe Henderson</a>
				<div class="metadata">
					<span class="date">5 days ago</span>
				</div>
				<div class="text">Dude, this is awesome. Thanks so much</div>
				<div class="actions">
					<a class="reply">Reply</a>
				</div>
			</div>
		</div>


		<div class="ui comments">
			<form class="ui reply form">
				<div class="field">
					<textarea
						style="margin-top: 0px; margin-bottom: 0px; height: 167px;"></textarea>
				</div>
				<div class="ui blue labeled submit icon button">
					<i class="icon edit"></i> 프로젝트 정보 등록하러 가기
				</div>
			</form>
		</div>


		<div class="ui very relaxed celled list">
			<div class="item">
				<img>
				<div class="content">
					<div class="header">
						New York Dog Fair
						<div class="ui heart rating" data-rating="2"></div>
					</div>
					A fun day at the fair
				</div>
			</div>
			<div class="item">
				<img>
				<div class="content">
					<div class="header">
						Dog Appreciation Day
						<div class="ui heart rating" data-rating="2"></div>
					</div>
					I'd like to tell your dog he's great
				</div>
			</div>
		</div>
		<script>
			$('.ui.rating')
				.rating({
					initialRating : 3,
					maxRating : 5
				})
			;
		</script>
		<div class="ui rating"></div>

		<div class="ui celled relaxed list">
			<div class="item">
				<div class="ui master checkbox">
					<input type="checkbox" name="dev"> <label>개발</label>
				</div>
				<div class="list">
					<div class="item">
						<div class="ui child checkbox">
							<input type="checkbox" name="dev_web"> <label>웹</label>
						</div>
					</div>
					<div class="item">
						<div class="ui child checkbox">
							<input type="checkbox" name="dev_application"> <label>애플리케이션</label>
						</div>
					</div>
					<div class="item">
						<div class="ui child checkbox">
							<input type="checkbox" name="dev_wordPress"> <label>워드프레스</label>
						</div>
					</div>
					<div class="item">
						<div class="ui child checkbox">
							<input type="checkbox" name="dev_publishing"> <label>퍼블리싱</label>
						</div>
					</div>
					<div class="item">
						<div class="ui child checkbox">
							<input type="checkbox" name="dev_software"> <label>일반
								소프트웨어</label>
						</div>
					</div>
					<div class="item">
						<div class="ui child checkbox">
							<input type="checkbox" name="dev_commerce"> <label>커머스,쇼핑몰</label>
						</div>
					</div>
					<div class="item">
						<div class="ui child checkbox">
							<input type="checkbox" name="dev_game"> <label>게임</label>
						</div>
					</div>
					<div class="item">
						<div class="ui child checkbox">
							<input type="checkbox" name="dev_embeded"> <label>임베디드</label>
						</div>
					</div>
					<div class="item">
						<div class="ui child checkbox">
							<input type="checkbox" name="dev_outside"> <label>기타</label>
						</div>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="ui master checkbox">
					<input type="checkbox" name="design"> <label>디자인</label>
				</div>
				<div class="list">
					<div class="item">
						<div class="ui child checkbox">
							<input type="checkbox" name="design_web"> <label>웹</label>
						</div>
					</div>
					<div class="item">
						<div class="ui child checkbox">
							<input type="checkbox" name="design_application"> <label>애플리케이션</label>
						</div>
					</div>
					<div class="item">
						<div class="ui child checkbox">
							<input type="checkbox" name="design_product"> <label>제품</label>
						</div>
					</div>
					<div class="item">
						<div class="ui child checkbox">
							<input type="checkbox" name="design_presentation"> <label>프레젠테이션</label>
						</div>
					</div>
					<div class="item">
						<div class="ui child checkbox">
							<input type="checkbox" name="design_print"> <label>인쇄물</label>
						</div>
					</div>
					<div class="item">
						<div class="ui child checkbox">
							<input type="checkbox" name="design_commerce"> <label>커머스,쇼핑몰</label>
						</div>
					</div>
					<div class="item">
						<div class="ui child checkbox">
							<input type="checkbox" name="design_logo"> <label>로고</label>
						</div>
					</div>
					<div class="item">
						<div class="ui child checkbox">
							<input type="checkbox" name="design_graphics"> <label>그래픽</label>
						</div>
					</div>
					<div class="item">
						<div class="ui child checkbox">
							<input type="checkbox" name="design_vision"> <label>영상</label>
						</div>
					</div>
					<div class="item">
						<div class="ui child checkbox">
							<input type="checkbox" name="design_game"> <label>게임</label>
						</div>
					</div>
					<div class="item">
						<div class="ui child checkbox">
							<input type="checkbox" name="design_outside"> <label>기타</label>
						</div>
					</div>
				</div>
			</div>
		</div>

		<script>
			/************************************************************ 프로젝트 찾기 - 프로젝트  카테고리  */
			$('.list .master.checkbox')
				.checkbox({
					// check all children
					onChecked : function() {
						var $childCheckbox = $(this).closest('.checkbox').siblings('.list').find('.checkbox');
						$childCheckbox.checkbox('check');
					},
					// uncheck all children
					onUnchecked : function() {
						var $childCheckbox = $(this).closest('.checkbox').siblings('.list').find('.checkbox');
						$childCheckbox.checkbox('uncheck');
					}
				});
			$('.list .child.checkbox')
				.checkbox({
					// Fire on load to set parent value
					fireOnInit : true,
					// Change parent state on each child checkbox change
					onChange : function() {
						var $listGroup = $(this).closest('.list'),
							$parentCheckbox = $listGroup.closest('.item').children('.checkbox'),
							$checkbox = $listGroup.find('.checkbox'),
							allChecked = true,
							allUnchecked = true;
						// check to see if all other siblings are checked or unchecked
						$checkbox.each(function() {
							if ($(this).checkbox('is checked')) {
								allUnchecked = false;
							} else {
								allChecked = false;
							}
						});
						// set parent checkbox state, but dont trigger its onChange callback
						if (allChecked) {
							$parentCheckbox.checkbox('set checked');
						} else if (allUnchecked) {
							$parentCheckbox.checkbox('set unchecked');
						} else {
							$parentCheckbox.checkbox('set indeterminate');
						}
					}
				});
				/************************************************************ 프로젝트 찾기 - 프로젝트  카테고리  */
		</script>

		<div class="ui hidden divider"></div>
		<div class="ui floating dropdown button">
			<div class="text">Go to</div>
			<i class="dropdown icon"></i>
			<div class="menu">
				<a class="item" href="http://www.naver.com"><i class="home icon"></i>
					Home</a> <a class="item" href="#link2"><i class="users icon"></i>
					Browse</a> <a class="item" href="#link3"><i class="search icon"></i>
					Search</a>
			</div>
		</div>
		<script type="text/javascript">
			$('.dropdown')
				.dropdown({
					action : 'hide'
				});
		</script>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br> 
			
		<select class="ui search selection dropdown" id="search-select">
			<option value="">지역선택</option>
			<option value="1">서울특별시</option>
			<option value="2">경기도</option>
			<option value="3">인천광역시</option>
			<option value="4">부산광역시</option>
			<option value="5">대구광역시</option>
			<option value="6">광주광역시</option>
			<option value="7">대전광역시</option>
			<option value="8">울산광역시</option>
			<option value="9">세종특별자치시</option>
			<option value="10">강원도</option>
			<option value="11">충청북도</option>
			<option value="12">충청남도</option>
			<option value="13">전라북도</option>
			<option value="14">전라남도 </option>
			<option value="15">경상북도</option>
			<option value="16">경상남도</option>
			<option value="17">제주특별자치도</option>
		</select>
		<script type="text/javascript">
			$('#search-select')
				.dropdown();
		</script>





		






		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
</body>
</html>