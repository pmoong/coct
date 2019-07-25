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
			
         <form action="<%=request.getContextPath() %>/insertInterest.me" method="post">
            <label class="checkbox-inline"><b>분위기 </b> </label><br>
            <br>


            <div class="checks">
               <input type="checkbox" id="M1" value="option1" name="survey">
               <label for="M1" class="checkbox-inline">회식</label> 
               <input type="checkbox" id="M2" value="option2" name="survey">
               <label for="M2" class="checkbox-inline">데이트 </label> 
               <input type="checkbox" id="M3" value="option3" name="survey">
               <label for="M3" class="checkbox-inline">연말모임 </label> 
               <input type="checkbox" id="M4" value="option4" name="survey">
               <label for="M4" class="checkbox-inline">분위기 좋은 맛집 </label> 
               <input type="checkbox" id="M5" value="option5" name="survey">
               <label for="M5" class="checkbox-inline">비오는날 맛집 </label> 
               <input type="checkbox" id="M6" value="option6" name="survey">
               <label for="M6" class="checkbox-inline">고급스러운 맛집</label>
               <br><br>
               <input type="checkbox" id="M7" value="option7" name="survey">
               <label for="M7" class="checkbox-inline">세련된 맛집</label>
               <input type="checkbox" id="M8" value="option8" name="survey">
               <label for="M8" class="checkbox-inline">송년회</label>
               <input type="checkbox" id="M9" value="option9" name="survey">
               <label for="M9" class="checkbox-inline">몸보신</label>
               <input type="checkbox" id="M10" value="option10" name="survey">
               <label for="M10" class="checkbox-inline">소개팅</label>
               <input type="checkbox" id="M11" value="option11" name="survey">
               <label for="M11" class="checkbox-inline">기념일</label>
               <input type="checkbox" id="M12" value="option12" name="survey">
               <label for="M12" class="checkbox-inline">가족모임</label>
               <br><br>
               <input type="checkbox" id="M13" value="option13" name="survey">
               <label for="M13" class="checkbox-inline">조용한 분위기</label>
               <input type="checkbox" id="M14" value="option14" name="survey">
               <label for="M14" class="checkbox-inline">젊고 캐쥬얼한</label>
               <input type="checkbox" id="M15" value="option15" name="survey">
               <label for="M15" class="checkbox-inline">아이와 함께</label>
               <input type="checkbox" id="M16" value="option16" name="survey">
               <label for="M16" class="checkbox-inline">모임하기 좋은</label>
               <input type="checkbox" id="M17" value="option17" name="survey">
               <label for="M17" class="checkbox-inline">특별한 날</label>
            </div>
            <!-- </div>
  -->
            <br>
            <br> <label class="checkbox-inline"><b>연령</b> </label><br>
            <br>
            <div class="checks">
               <input type="checkbox" id="A1" value="option1" name="survey">
               <label for="A1" class="checkbox-inline">10대 </label> 
               <input type="checkbox" id="A2" value="option2" name="survey">
               <label for="A2" class="checkbox-inline">20대 </label> 
               <input type="checkbox" id="A3" value="option3" name="survey">
               <label for="A3" class="checkbox-inline">30대 </label> 
               <input type="checkbox" id="A4" value="option4" name="survey">
               <label for="A4" class="checkbox-inline">40대</label> 
               <input type="checkbox" id="A5" value="option5" name="survey">
               <label for="A5" class="checkbox-inline">50대</label> 
               <input type="checkbox" id="A6" value="option6" name="survey">
               <label for="A6" class="checkbox-inline">60대~</label> 
                  
            </div>
            
            <br>
            <br> <label class="checkbox-inline"><b>위치</b> </label><br>
            <br>
            <div class="checks">
               <input type="checkbox" id="L1" value="option1" name="survey">
               <label for="L1" class="checkbox-inline">도봉구</label> 
               <input type="checkbox" id="L2" value="option2" name="survey">
               <label for="L2" class="checkbox-inline">노원구 </label> 
               <input type="checkbox" id="L3" value="option3" name="survey">
               <label for="L3" class="checkbox-inline">강북구 </label> 
               <input type="checkbox" id="L4" value="option4" name="survey">
               <label for="L4" class="checkbox-inline">성북구 </label> 
               <input type="checkbox" id="L5" value="option5" name="survey">
               <label for="L5" class="checkbox-inline">중랑구</label> 
               <input type="checkbox" id="L6" value="option6" name="survey">
               <label for="L6" class="checkbox-inline">서대문구</label>
               <br><br>
               <input type="checkbox" id="L7" value="option7" name="survey">
               <label for="L7" class="checkbox-inline">종로구</label>
               <input type="checkbox" id="L8" value="option8" name="survey">
               <label for="L8" class="checkbox-inline">온평구</label>
               <input type="checkbox" id="L9" value="option9" name="survey">
               <label for="L9" class="checkbox-inline">동대문구</label>
               <input type="checkbox" id="L10" value="option10" name="survey">
               <label for="L10" class="checkbox-inline">중구</label>
               <input type="checkbox" id="L11" value="option11" name="survey">
               <label for="L11" class="checkbox-inline">성동구</label>
               <br><br>
               <input type="checkbox" id="L12" value="option12" name="survey">
               <label for="L12" class="checkbox-inline">광진구</label>
               <input type="checkbox" id="L13" value="option13" name="survey">
               <label for="L13" class="checkbox-inline">마포구</label>
               <input type="checkbox" id="L14" value="option14" name="survey">
               <label for="L14" class="checkbox-inline">용산구</label>
               <input type="checkbox" id="L15" value="option15" name="survey">
               <label for="L15" class="checkbox-inline">강동구</label>
               <input type="checkbox" id="L16" value="option16" name="survey">
               <label for="L16" class="checkbox-inline">송파구</label>
               <br><br>
               <input type="checkbox" id="L17" value="option17" name="survey">
               <label for="L17" class="checkbox-inline">강남구</label>
               <input type="checkbox" id="L18" value="option18" name="survey">
               <label for="L18" class="checkbox-inline">서초구</label>
               <input type="checkbox" id="L19" value="option19" name="survey">
               <label for="L19" class="checkbox-inline">동작구</label>
               <input type="checkbox" id="L20" value="option20" name="survey">
               <label for="L20" class="checkbox-inline">관악구</label>
               <input type="checkbox" id="L21" value="option21" name="survey">
               <label for="L21" class="checkbox-inline">영등포구</label>
               <br><br>
               <input type="checkbox" id="L22" value="option22" name="survey">
               <label for="L22" class="checkbox-inline">금천구</label>
               <input type="checkbox" id="L23" value="option23" name="survey">
               <label for="L23" class="checkbox-inline">구로구</label>
               <input type="checkbox" id="L24" value="option24" name="survey">
               <label for="L24" class="checkbox-inline">양천구</label>
               <input type="checkbox" id="L25" value="option25" name="survey">
               <label for="L25" class="checkbox-inline">강서구</label>
               
            </div>
            <br>
            <br>
            <br>
            <br>

               <div class="col-sm-offset-1 col-sm-10">
                  <div>
                     <button type="reset" class="btn btn-default" onclick="location.href='/coc/index.jsp'">취소하기</button>
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