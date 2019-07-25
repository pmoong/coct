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

.form-group {
   width: 70%;
   padding-left: 30%;
}

#test {
   background: white !important;
   color: black !important;
}
#radio {
   position: relative;
  
}

#radio input[type="radio"] {
   position: absolute;
   width: 1px;
   height: 1px;
   padding: 0;
   margin: -1px;
   overflow: hidden;
   clip: rect(0, 0, 0, 0);
   border: 0
}

#radio input[type="radio"]+label:before { /* 가짜 체크박스 */
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

#radio input[type="radio"]:checked+label:before { /* 체크박스를 체크했을때 */
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
      <%@ include file="../common/menubar_customer.jsp"%>
      <br>
      <form action="<%=request.getContextPath() %>/insertMember.me" method="post">
      <div class="container">
         <div class="form-group">
            <label for="inputId">아이디</label> <input type="text"
               class="form-control" id="inputId" placeholder="아이디를 입력해 주세요" name="userId">
         </div>
         <div class="form-group">
            <label for="InputEmail">이메일 주소</label> <input type="email"
               class="form-control" id="InputEmail" placeholder="이메일 주소를 입력해주세요" name="email">
         </div>
         <div class="form-group">
            <label for="inputPassword">비밀번호</label> <input type="password"
               class="form-control" id="inputPassword" placeholder="비밀번호를 입력해주세요" name="userPwd">
         </div>
         <div class="form-group">
            <label for="inputPasswordCheck">비밀번호 확인</label> <input
               type="password" class="form-control" id="inputPasswordCheck"
               placeholder="비밀번호 확인을 위해 다시 한 번 입력 해 주세요" name="userPwd2">
         </div>
         <div class="form-group">
            <label for="inputage">나이</label> <input type="number"
               class="form-control" id="inputage" placeholder="나이를 입력해 주세요" name="age">
         </div><br>
         <div class="form-group" id="radio">
            <label for="inputgender">성별</label> 
            <input type="radio" name="gender" value="M" id="male"> 
            <label for="male">남</label>
            <input type="radio" name="gender" value="F" id="female"> 
            <label for="female">여</label>
         </div>
         <br>
         </form>
         <div class="form-group">
            <button class="btn btn-default" type="submit">
               <a href="joinInterest.jsp" onclick="insertMember();">&emsp;&emsp;&emsp;다음&emsp;&emsp;&emsp; </a>
            </button>
            <button type="reset" class="btn btn-default" onclick="location.href='/coc/index.jsp'">&emsp;&emsp;취소하기&emsp;&emsp;</button>
         </div>
      </div>
      <br> <br>
      <hr>
      
      <script>
     	function goMain(){
			location.href="<%=request.getContextPath()%>/index.jsp";
		}   	 
		function insertMember(){
			$("form").submit();
		}
     	 
     	 
      </script>
      
      
      <!-- Footer -->
      <%@include file="/views/common/footerbar_customer.jsp"%>

   </div>



</body>
</html>