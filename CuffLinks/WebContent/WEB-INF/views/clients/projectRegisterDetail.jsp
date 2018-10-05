<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>projectRegister-(프로젝트 등록)</title>
</head>
<body>
   <!----------------------------------------------------------------------- top 시작 -->
   <header class="header">
      <div class="ui">
         <!-- header 시작 -->
         <div class="ui">
            <jsp:include page="../common/menu/headerMenu.jsp" />
         </div>
         <!-- header 종료 -->
      </div>
   </header>
   <script type="text/javascript">

     $(document).ready(function(){
   
        $("#ProjectRegisterDetailButton").click(function() {
           alert("프로젝트등록완료") 
           /* location.href = "/ProcedureTest"; */
        });
        


     });

</script>
   <!----------------------------------------------------------------------- top 끝 -->

   <!----------------------------------------------------------------------- main content 시작 -->
   <!----------------------------------------------------------------------- main content 시작 -->
   <div class="ui container raised segment content">

      <!-- title 시작-->
      <div class="ui container">
         <div class="content-header">
            <div class="ui two column grid container">
               <div class="column" style="text-align: left; width: 80%;">
                  <h3 class="content-text">프로젝트 상세내용 등록</h3>
                  <small class="small-text">상세하게 작성해주실수록 더 적합한 파트너스를 만날 수 있습니다.</small>
               </div>
               <div class="column" style="text-align: right; margin: 10px 0px; width: 20%;">
                  <!-- 우측에 입력할 수 있는 공간 확보 -->
               </div>
            </div>
         </div>
      </div>
      <!-- title 끝-->

      <div class="ui basicspace">
         <!-- login title와 main content 여백 -->
      </div>

      <!-- main 입력 시작-->
      <div class="ui container">
         <div class="content-middle-join">
         <form>
            <div class="ui two column grid container" style="padding: 0px;">
               <div class="column grid" style="border-right: 0px solid #dedede; vertical-align: middle; padding: 20px; width: 100%;">
                  <div class="ui two column grid container">
                     <div class="center column container" style="padding: 17px; width: 25%;">
                        <span>*</span>카테고리
                     </div>
                     <div class="column container" style="padding: 10px; padding-bottom: 5px; width: 75%; ">
                        <div style="width: 25%; float: left;">
                           <select name="skills" class="ui fluid search dropdown">
                              <option value="category">카테고리</option>
                              <option value="dev">개발</option>
                              <option value="design">디자인</option>
                           </select>
                        </div>
                        <div style="width: 50%; float: left; margin-left: 20px;">
                           <select name="skills" class="ui fluid search dropdown">
                              <option value="detailcategory">세부카테고리</option>
                              <option value="angular">팀</option>
                              <option value="css">개인 사업자</option>
                              <option value="design">법인 사업자</option>
                           </select>
                        </div>
                     </div>
                     <div class="column container" style="padding-left: 10px; padding-top: 0px; padding-bottom: 0px; width: 25%;"></div>
                     <div class="column container" style="padding-left: 10px; padding-top: 0px; padding-bottom: 5px; width: 75%; text-align:left;">
                        <p>프로젝트 카테고리를 선택해 주세요.</p>
                     </div>
                     <div class="center column container" style="padding: 17px; width: 25%;">
                        <span>*</span>프로젝트 제목
                     </div>
                     <div class="column container" style="padding: 10px; padding-bottom: 5px; width: 75%; text-align:left;">
                        <div class="ui input">
                           <input type="text" placeholder="프로젝트 제목을 입력하세요." size="60px">
                        </div>
                     </div>
                     <div class="column container" style="padding-left: 10px; padding-top: 0px; padding-bottom: 0px; width: 25%;"></div>
                     <div class="column container" style="padding-left: 10px; padding-top: 0px; padding-bottom: 5px; width: 75%; text-align:left;">
                        <p>프로젝트 제목을 입력해 주세요. (30자 이내)</p>
                     </div>
                     <div class="center column container" style="padding: 17px; width: 25%;">
                        <span>*</span>예상 기간
                     </div>
                     <div class="column container" style="padding: 10px; padding-bottom: 0px; width: 75%; text-align:left; ">
                        <div class="ui input" style="float: left;">
                           <input type="text" size="20px">
                        </div>
                        <div style="width: 40px; height:38px; border:1px solid #dedede; float: left; padding:9px; background-color: #dedede;">일
                        </div>
                     </div>
                     <div class="column container" style="padding-left: 10px; padding-top: 0px; padding-bottom: 0px; width: 25%;"></div>
                     <div class="column container" style="padding-left: 10px; padding-top: 0px; padding-bottom: 5px; width: 75%; text-align:left;">
                        <p>프로젝트를 진행할 기간을 일 단위로 입력해 주세요. (최대 3자리)</p>
                     </div>
                     <div class="center column container" style="padding: 17px; width: 25%;">
                        <span>*</span>지출 가능 예산
                     </div>
                     <div class="column container" style="padding: 10px; padding-bottom: 0px; width: 75%; text-align:left; ">
                        <div class="ui input" style="float: left;">
                           <input type="text" size="20px">
                        </div>
                        <div style="width: 40px; height:38px; border:1px solid #dedede; float: left; padding:9px; background-color: #dedede;">원
                        </div>
                     </div>
                     <div class="column container" style="padding-left: 10px; padding-top: 0px; padding-bottom: 0px; width: 25%;"></div>
                     <div class="column container" style="padding-left: 10px; padding-top: 0px; padding-bottom: 5px; width: 75%; text-align:left;">
                        <p>지출 가능한 예산을 입력해 주세요.<br>
                        (부가세 별도, 예 : 100,000,000)</p>
                     </div>
                     
                     <div class="center column container" style="padding: 17px; width: 25%;">
                        <span>*</span>기획 상태
                     </div>
                     <div class="column container" style="padding-left: 2px; padding-top: 10px; padding-bottom: 5px; width: 75%; text-align:center; ">
                        <div class="column container" style="padding: 10px; ">
                           <div class="ui two column grid container" style="padding: 10px; padding-left: 0;text-align:center; ">
                              <div class="column container" style=" margin-right: 5px; padding: 10px; width: 32%; margin-left: 0px;text-align: center; vertical-align: middle; outline: dotted gray 0.5px;">
                                 <div class="ui image">
                                    <img src="/image/p1.png" width=75px height=75px style="padding: 10px">
                                 </div>
                                 <div>
                                    <input type="radio" name="radio" checked="checked" value="1">
                                 </div>
                                 <div>
                                    <p>아이디어만 있습니다.</p>
                                 </div>
                              </div>
                              <div class="column container" style="margin-right: 5px; padding: 10px; width: 32%; text-align: center; vertical-align: middle; outline: dotted gray 0.5px;">
                                 
                                 <div class="ui image">
                                    <img src="/image/p2.png" width=75px height=75px style="padding: 10px">
                                 </div>
                                 <div>
                                    <input type="radio" name="radio" checked="checked" value="2">
                                 </div>
                                 <div>
                                    <p>필요한 내용들을 간단히 정리해두었습니다.</p>
                                 </div>
                              </div>
                              <div class="column container" style="padding: 10px; width: 32%; text-align: center; vertical-align: middle; outline: dotted gray 0.5px;">
                                 
                                 <div class="ui image">
                                    <img src="/image/p3.png" width=75px height=75px style="padding: 10px">
                                 </div>
                                 <div>
                                    <input type="radio" name="radio" checked="checked" value="2">
                                 </div>
                                 <div>
                                    <p>상세한 기획 문서가 <br>존재합니다.</p>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>

                     <div class="center column container" style="padding: 17px; width: 25%;">
                        <span>*</span>프로젝트 내용<br> <br> <br> <br> <br> <br>
                     </div>
                     <div class="column container" style="padding-top: 0px; width: 75%; padding-left: 10px;">
                        <div class="ui comments">
                              <div class="field">
                                 <textarea style="margin-top: 0px; margin-bottom: 0px; width: 100%;height: 170px;"></textarea>
                              </div>
                        </div>
                     </div>
                     
                     <div class="center column container" style="padding: 17px; width: 25%;">
                        <span>*</span>관련 기술
                     </div>
                     <div class="column container" style="padding: 10px; padding-bottom: 5px; width: 75%; text-align:left;">
                        <div class="ui input">
                           <input type="text" placeholder="프로젝트 제목을 입력하세요." size="60px">
                        </div>
                     </div>
                     <div class="column container" style="padding-left: 10px; padding-top: 0px; padding-bottom: 0px; width: 25%;"></div>
                     <div class="column container" style="padding-left: 10px; padding-top: 0px; padding-bottom: 5px; width: 75%; text-align:left;">
                        <p>프로젝트와 관련된 기술을 입력해주세요. <br> 
                        예) Photoshop, Android, HTML5, Python, Django</p>
                     </div>
                     
                     <div class="center column container" style="padding: 17px; width: 25%;">
                        <span>*</span>기획 관련 파일
                     </div>
                     <div class="column container" style="padding: 10px; padding-bottom: 5px; width: 75%; text-align:left;">
                        <div class="ui input">
                           <input type="text" size="60px">
                        </div>
                        <button class="ui button" style="margin-right: 10px; margin-top: 0px; " onclick="location.href='#'" >첨부파일</button>
                     </div>
                     <div class="column container" style="padding-left: 10px; padding-top: 0px; padding-bottom: 0px; width: 25%;"></div>
                     <div class="column container" style="padding-left: 10px; padding-top: 0px; padding-bottom: 5px; width: 75%; text-align:left;">
                        <p>첨부 파일은 파트너들에게 공개되지 않습니다.<br>
                           첨부 파일은 프로젝트 금액 및 기간 산정을 위한 검수 자료로만 사용됩니다.</p>
                     </div>
                     
                     <div class="center column container" style="padding: 17px; width: 25%;">
                        <span>*</span>모집 마감일자
                     </div>
                     <div class="column container" style="padding: 10px; padding-bottom: 5px; width: 75%; text-align:left;">
                        <div class="ui input">
                           <select name="skills" class="ui fluid search dropdown">
                              <option value="0">마감일선택</option>
                              <option value="5">2018-10-05</option>
                              <option value="6">2018-10-06</option>
                           </select>
                        </div>
                     </div>
                     <div class="column container" style="padding-left: 10px; padding-top: 0px; padding-bottom: 0px; width: 25%;"></div>
                     <div class="column container" style="padding-left: 10px; padding-top: 0px; padding-bottom: 5px; width: 75%; text-align:left;">
                        <p>지원자를 모집하는 기간입니다. 최소 1일에서 최대 14일까지 가능합니다.</p>
                     </div>
                     
                     <div class="center column container" style="padding: 17px; width: 25%;">
                        <span>*</span>클라이언트 위치
                     </div>
                     <div class="column container" style="padding: 5px; padding-bottom: 5px; width: 75%; text-align:left;">
                        <div class="column container" style="padding: 5px; padding-bottom: 5px; width: 75%; ">
                        <div style="width: 40%; float: left;">
                           <select name="skills" class="ui fluid search dropdown">
                              <option value="0">지역선택</option>
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
                              <option value="14">전라남도</option>
                              <option value="15">경상북도</option>
                              <option value="16">경상남도</option>
                              <option value="17">제주특별자치도</option>
                           </select>
                        </div>
                        <div style="width: 40%; float: left; margin-left: 20px;">
                           <select name="skills" class="ui fluid search dropdown">
                              <option value="detailcategory">구,군,구</option>
                              <option value="angular">팀</option>
                              <option value="css">개인 사업자</option>
                              <option value="design">법인 사업자</option>
                           </select>
                        </div>
                     </div>
                     </div>
                     <div class="column container" style="padding-left: 10px; padding-top: 0px; padding-bottom: 0px; width: 25%;"></div>
                     <div class="column container" style="padding-left: 10px; padding-top: 0px; padding-bottom: 5px; width: 75%; text-align:left;">
                        <p>클라이언트님이 계신 지역을 선택해 주세요..</p>
                     </div>
                     
                     <div class="center column container" style="padding: 17px; width: 25%;">
                        <span>*</span>예상 시작일
                     </div>
                     <div class="column container" style="padding: 10px; padding-bottom: 5px; width: 75%; text-align:left;">
                        <div class="ui input">
                           <select name="skills" class="ui fluid search dropdown">
                              <option value="0">시작일선택</option>
                              <option value="5">2018-10-05</option>
                              <option value="6">2018-10-06</option>
                           </select>
                        </div>
                     </div>
                     <div class="column container" style="padding-left: 10px; padding-top: 0px; padding-bottom: 0px; width: 25%;"></div>
                     <div class="column container" style="padding-left: 10px; padding-top: 0px; padding-bottom: 5px; width: 75%; text-align:left;">
                        <p>프로젝트 시작예정일을 입력해주세요.</p>
                     </div>
                     <div class="column container" style="padding-left: 10px; padding-top: 0px; padding-bottom: 0px; width: 25%;"></div>
                     <div class="column container" style="padding-left: 10px; padding-top: 0px; padding-bottom: 5px; width: 75%; text-align:left;">
                        <hr class="garo"/>
                     </div>
                     
                     <div class="center column container" style="padding: 17px; width: 25%;">
                        <span>*</span>프로젝트 매니징 경험
                     </div>
                     <div class="column container" style="padding: 10px; padding-bottom: 5px; padding-top: 20px; width: 75%; text-align:left;">
                        <input type="radio" class="r1"/>&nbsp;&nbsp;예, 매니징 경험이 있습니다.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" class="r2" />&nbsp;&nbsp; 아니오, 없습니다.
                     </div>
                     
                     <div class="center column container" style="padding: 17px; width: 25%;">
                        <span>*</span>선호하는 파트너 형태
                     </div>
                     <div class="column container" style="padding: 10px; padding-bottom: 5px; padding-top: 20px; width: 75%; text-align:left;">
                        <input type="radio" class="r3"/>&nbsp;&nbsp;상관 없음.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        <input type="radio" class="r4" />&nbsp;&nbsp;법인 사업자&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                        <input type="radio" class="r4" />&nbsp;&nbsp;개인 사업자.&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                        <input type="radio" class="r4" />&nbsp;&nbsp;팀&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                        <input type="radio" class="r4" />&nbsp;&nbsp;개인   
                     </div>
                     
                     <div class="column container" style="padding-left: 10px; padding-top: 0px; padding-bottom: 0px; width: 25%;"></div>
                     <div class="column container" style="padding-left: 10px; padding-top:  20px; padding-bottom: 5px; width: 75%; text-align:right;">
                        <div id="ProjectRegisterDetailButton" class="ui blue labeled submit icon button ">
                                 <i class="icon edit"></i> 프로젝트 정보 등록완료
                        </div>
                     </div>
                  </div>
               </div>
               <div class="column grid" style="padding: 10px; width: 00%;">
                  <!-- 우측 내용입력할수 있는 공간 -->
               </div>
            </div>
         </form>
         </div>
      </div>
      <!-- main 입력 끝-->

   </div>
   <!----------------------------------------------------------------------- main content 끝 -->
   <!----------------------------------------------------------------------- main content 끝 -->

   <!----------------------------------------------------------------------- footer content 시작 -->
   <!-- footer 시작-->
   <footer class="footer">
      <div class="ui inverted segment" style="height: 200px; padding: 25px; vertical-align: middle;">
         <jsp:include page="../common/menu/footerMenu.jsp" />
      </div>
   </footer>
   <!-- footer 끝-->
   <!----------------------------------------------------------------------- footer content 끝 -->
   <script>
      $('.tag.example .ui.dropdown')
         .dropdown({
            allowAdditions : true
         });
   </script>
</body>
</html>