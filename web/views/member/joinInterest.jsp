<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
   Verti by HTML5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>CoC</title>
<meta charset="utf-8" />
<meta name="viewport"
   content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../assets/css/main.css" />
<style>
body {
   background: white;
}

#test {
   background: white !important;
   color: black !important;
}

h2 {
   font-size: 10px;
}

.checks {
   position: relative;
}

.checks input[type="checkbox"] {
   position: absolute;
   width: 1px;
   height: 1px;
   padding: 0;
   margin: -1px;
   overflow: hidden;
   clip: rect(0, 0, 0, 0);
   border: 0
}

.checks input[type="checkbox"]+label:before { /* 가짜 체크박스 */
   content: ' ';
   display: inline-block;
   width: 21px; /* 체크박스의 너비를 지정 */
   height: 21px; /* 체크박스의 높이를 지정 */
   line-height: 21px; /* 세로정렬을 위해 높이값과 일치 */
   margin: -2px 8px 0 0;
   text-align: center;
   vertical-align: middle;
   background: #fafafa;
   border: 1px solid #cacece;
   border-radius: 3px;
   box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.05), inset 0px -15px 10px -12px
      rgba(0, 0, 0, 0.05);
}

.checks input[type="checkbox"]:checked+label:before { /* 체크박스를 체크했을때 */
   content: '\2714'; /* 체크표시 유니코드 사용 */
   color: #99a1a7;
   text-shadow: 1px 1px #fff;
   background: #e9ecee;
   border-color: #adb8c0;
   box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.05), inset 0px -15px 10px -12px
      rgba(0, 0, 0, 0.05), inset 15px 10px -12px rgba(255, 255, 255, 0.1);
}
</style>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body class="is-preload homepage">
   <div id="page-wrapper">

      <!-- Header -->
<%@ include file="../common/menubar_customer.jsp" %>


      <div class="container" align="center">
         <h6>
            당신의 취향을 테스트합니다.<br> <br> 선택 후 가입하기버튼을 누르세요.<br> <br>
            선택한 취향을 분석하여 여행가이드를 제공해드립니다 <br> <br>
         </h6>
		<br><br>	
			
         <form action="" method="get">
            <label class="checkbox-inline"><b>분위기 </b> </label><br>
            <br>


            <div class="checks">
               <input type="checkbox" id="ex_chk1" value="option1">
               <label for="ex_chk1" class="checkbox-inline">회식</label> 
               <input type="checkbox" id="ex_chk2" value="option2">
               <label for="ex_chk2" class="checkbox-inline">데이트 </label> 
               <input type="checkbox" id="ex_chk3" value="option3">
               <label for="ex_chk3" class="checkbox-inline">연말모임 </label> 
               <input type="checkbox" id="ex_chk4" value="option4">
               <label for="ex_chk4" class="checkbox-inline">분위기 좋은 맛집 </label> 
               <input type="checkbox" id="ex_chk5" value="option5">
               <label for="ex_chk5" class="checkbox-inline">비오는날 맛집 </label> 
               <input type="checkbox" id="ex_chk6" value="option6">
               <label for="ex_chk6" class="checkbox-inline">고급스러운 맛집</label>
               <br><br>
               <input type="checkbox" id="ex_chk7" value="option7">
               <label for="ex_chk7" class="checkbox-inline">세련된 맛집</label>
               <input type="checkbox" id="ex_chk8" value="option8">
               <label for="ex_chk8" class="checkbox-inline">송년회</label>
               <input type="checkbox" id="ex_chk9" value="option9">
               <label for="ex_chk9" class="checkbox-inline">몸보신</label>
               <input type="checkbox" id="ex_chk10" value="option10">
               <label for="ex_chk10" class="checkbox-inline">소개팅</label>
               <input type="checkbox" id="ex_chk11" value="option11">
               <label for="ex_chk11" class="checkbox-inline">기념일</label>
               <input type="checkbox" id="ex_chk12" value="option12">
               <label for="ex_chk12" class="checkbox-inline">가족모임</label>
               <br><br>
               <input type="checkbox" id="ex_chk13" value="option13">
               <label for="ex_chk13" class="checkbox-inline">조용한 분위기</label>
               <input type="checkbox" id="ex_chk14" value="option14">
               <label for="ex_chk14" class="checkbox-inline">젊고 캐쥬얼한</label>
               <input type="checkbox" id="ex_chk15" value="option15">
               <label for="ex_chk15" class="checkbox-inline">아이와 함께</label>
               <input type="checkbox" id="ex_chk16" value="option16">
               <label for="ex_chk16" class="checkbox-inline">모임하기 좋은</label>
               <input type="checkbox" id="ex_chk17" value="option17">
               <label for="ex_chk17" class="checkbox-inline">특별한 날</label>
            </div>
            <!-- </div>
  -->
            <br>
            <br> <label class="checkbox-inline"><b>연령</b> </label><br>
            <br>
            <div class="checks">
               <input type="checkbox" id="inlineCheckbox1" value="option1">
               <label for="inlineCheckbox1" class="checkbox-inline">10대 </label> 
               <input type="checkbox" id="inlineCheckbox2" value="option2">
               <label for="inlineCheckbox2" class="checkbox-inline">20대 </label> 
               <input type="checkbox" id="inlineCheckbox3" value="option3">
               <label for="inlineCheckbox3" class="checkbox-inline">30대 </label> 
               <input type="checkbox" id="inlineCheckbox4" value="option4">
               <label for="inlineCheckbox4" class="checkbox-inline">40대</label> 
               <input type="checkbox" id="inlineCheckbox5" value="option5">
               <label for="inlineCheckbox5" class="checkbox-inline">50대</label> 
               <input type="checkbox" id="inlineCheckbox6" value="option6">
               <label for="inlineCheckbox6" class="checkbox-inline">60대~</label> 
                  
            </div>
            
            <br>
            <br> <label class="checkbox-inline"><b>위치</b> </label><br>
            <br>
            <div class="checks">
               <input type="checkbox" id="seoulCheckbox1" value="option1">
               <label for="seoulCheckbox1" class="checkbox-inline">도봉구</label> 
               <input type="checkbox" id="seoulCheckbox2" value="option2">
               <label for="seoulCheckbox2" class="checkbox-inline">노원구 </label> 
               <input type="checkbox" id="seoulCheckbox3" value="option3">
               <label for="seoulCheckbox3" class="checkbox-inline">강북구 </label> 
               <input type="checkbox" id="seoulCheckbox4" value="option4">
               <label for="seoulCheckbox4" class="checkbox-inline">성북구 </label> 
               <input type="checkbox" id="seoulCheckbox5" value="option5">
               <label for="seoulCheckbox5" class="checkbox-inline">중랑구</label> 
               <input type="checkbox" id="seoulCheckbox6" value="option6">
               <label for="seoulCheckbox6" class="checkbox-inline">서대문구</label>
               <br><br>
               <input type="checkbox" id="seoulCheckbox7" value="option7">
               <label for="seoulCheckbox7" class="checkbox-inline">종로구</label>
               <input type="checkbox" id="seoulCheckbox8" value="option8">
               <label for="seoulCheckbox8" class="checkbox-inline">온평구</label>
               <input type="checkbox" id="seoulCheckbox9" value="option9">
               <input type="checkbox" id="seoulCheckbox10" value="option10">
               <label for="seoulCheckbox10" class="checkbox-inline">동대문구</label>
               <input type="checkbox" id="seoulCheckbox11" value="option11">
               <label for="seoulCheckbox11" class="checkbox-inline">중구</label>
               <input type="checkbox" id="seoulCheckbox12" value="option12">
               <label for="seoulCheckbox12" class="checkbox-inline">성동구</label>
               <br><br>
               <input type="checkbox" id="seoulCheckbox13" value="option13">
               <label for="seoulCheckbox13" class="checkbox-inline">광진구</label>
               <input type="checkbox" id="seoulCheckbox14" value="option14">
               <label for="seoulCheckbox14" class="checkbox-inline">마포구</label>
               <input type="checkbox" id="seoulCheckbox15" value="option15">
               <label for="seoulCheckbox15" class="checkbox-inline">용산구</label>
               <input type="checkbox" id="seoulCheckbox16" value="option16">
               <label for="seoulCheckbox16" class="checkbox-inline">강동구</label>
               <input type="checkbox" id="seoulCheckbox17" value="option17">
               <label for="seoulCheckbox17" class="checkbox-inline">송파구</label>
               <br><br>
               <input type="checkbox" id="seoulCheckbox18" value="option18">
               <label for="seoulCheckbox18" class="checkbox-inline">강남구</label>
               <input type="checkbox" id="seoulCheckbox19" value="option19">
               <label for="seoulCheckbox19" class="checkbox-inline">서초구</label>
               <input type="checkbox" id="seoulCheckbox20" value="option20">
               <label for="seoulCheckbox20" class="checkbox-inline">동작구</label>
               <input type="checkbox" id="seoulCheckbox21" value="option21">
               <label for="seoulCheckbox21" class="checkbox-inline">관악구</label>
               <input type="checkbox" id="seoulCheckbox22" value="option22">
               <label for="seoulCheckbox22" class="checkbox-inline">영등포구</label>
               <br><br>
               <input type="checkbox" id="seoulCheckbox23" value="option23">
               <label for="seoulCheckbox23" class="checkbox-inline">금천구</label>
               <input type="checkbox" id="seoulCheckbox24" value="option24">
               <label for="seoulCheckbox24" class="checkbox-inline">구로구</label>
               <input type="checkbox" id="seoulCheckbox25" value="option25">
               <label for="seoulCheckbox25" class="checkbox-inline">양천구</label>
               <input type="checkbox" id="seoulCheckbox26" value="option26">
               <label for="seoulCheckbox26" class="checkbox-inline">강서구</label>
               
            </div>
            <br>
            <br>
            <br>
            <br>

            <div class="form-group">
               <div class="col-sm-offset-1 col-sm-10">
                  <div>
                     <button type="reset" class="btn btn-default">취소하기</button>
                     <button type="submit" class="btn btn-default">가입하기</button>
                  </div>
               </div>
         </form>
      </div>


      <!-- Footer -->
      <%@include file="/views/common/footerbar_customer.jsp" %>

   </div>


</body>
</html>