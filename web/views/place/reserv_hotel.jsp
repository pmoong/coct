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
<link rel="stylesheet" href="/coc/assets/css/main.css" />

<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
body {
   background: white;
}

#test {
   background: white !important;
   color: black !important;
}

#userId, #userPwd {
   font-size: 13px;
}

#cocInfo {
   width: 800px;
   height: 300px;
}

.left-box {
   background: white;
   float: left;
   width: 50%;
}

.right-box {
   float: right;
   width: 50%;
   background: white;
   color: black;
   border: none;
   position: relative;
   height: 60px;
   font-size: 1 em;
   padding: 0 2em;
   transition: 800ms ease all;
   outline: none;
   font-weight: bold;
}

#bbtn {
   background: #fcfcfc;
   font-size: 1.5em;
   font-weight: bold;
}

#btn {
   background: #fcfcfc;
   color: #1AAB8A;
   border: none;
   position: relative;
   height: 60px;
   font-size: 1 em;
   padding: 0 2em;
   cursor: pointer;
   transition: 800ms ease all;
   outline: none;
   font-weight: bold;
   /* padding: 0px 10px 0px 10px;
  margin: 5px 0px 5px 0px; */
}

#btn:hover {
   background: #fff !important;
   color: #1AAB8A !important;
}

#btn:before, button:after {
   content: '' !important;
   position: absolute !important;
   top: 0 !important;
   right: 0 !important;
   height: 2px !important;
   width: 0 !important;
   color: #1AAB8A !important;
   background: #1AAB8A !important;
   transition: 400ms ease all !important;
}

#btn:after {
   color: #1AAB8A !important;
   right: inherit !important;
   top: inherit !important;
   left: 0 !important;
   bottom: 0 !important;
}

#btn:hover:before, #btn:hover:after {
   color: #1AAB8A !important;
   width: 100% !important;
   transition: 800ms ease all !important;
}

.btn-group {
   padding-left: 150px !important;
}

#image {
   float: left;
}
#el a{
/* top: 350px; */
 font-weight:bold;
 font-size:23px;
 color:black;
 margin-left:30px;
}
</style>
</head>
<body class="is-preload homepage">
	<div id="page-wrapper">
		
		<!-- Header -->
	<%@ include file="/views/common/menubar_customer.jsp" %>
		<div>
			<div style="margin-left:23%; float:left">
				<h1><b>Standard Room</b></h1>
				<b>서울 신라스테이호텔</b><br><br><br>
			</div>
			<div style="margin-right:25%; float:right; margin-top:2%;">
				<button class="btn btn-default" style="padding:40%;">예약하기</button>
			</div>
		</div>
		<div class="container" align="center">
         <div class="cocInfo" id="cocInfo" align="center">
            <div class="left-box" style="width:100%; height:90%;">
               <img src="/coc/images/seoul1.PNG" width="100%" height="100%" />
            </div>
         </div>
		<br><br>
		<div style="margin-left:25%;">
			<table>
				<tr>
					<th><p>체크인</p></th>
					<th><p>체크아웃</p></th>
				</tr>
				<tr>
					<td><input type="date"></td>
					<td><input type="date"></td>
				</tr>
			</table>
		</div>
		<div style="border:1px solid gray; width:70%; height:100%;">
			<br>
			<div style="margin-left:10%; text-align:left;">
			<label><b>숙박</b></label><br>
			</div>
			<div style="margin-right:10%; text-align:right;">
			<small>판매가</small>
			<label>330,000</label><br>
			</div>
			<br>
		</div>
		<br><br>
		
 		<!--  -->
		<div class="container" style="margin-left:15%;">
			<div class="row">
				<label id="intro" class="col-8 col-12-medium"
					style='text-align: left; margin-top: 1%;'>기본정보</label>
			</div>
			<div border="1px solid black" style="width:100%; text-align:left; margin-left:10%; margin-top:1%;">
				8.3평, 더블침대 1개<br><br>
				에어컨, TV, 냉장고, 커피포트, 전자식 금고<br>
			</div>
		</div>
 		<!--  -->
		<div class="container" style="margin-left:15%;">
			<div class="row">
				<label id="intro" class="col-8 col-12-medium"
					style='text-align: left; margin-top: 1%;'>예약공지</label>
			</div>
			<div border="1px solid black" style="width:100%; text-align:left; margin-left:10%; margin-top:1%;">
				8.3평, 더블침대 1개<br><br>
				에어컨, TV, 냉장고, 커피포트, 전자식 금고<br>
			</div>
		</div>
 		<!--  -->
		<div class="container" style="margin-left:15%;">
			<div class="row">
				<label id="intro" class="col-8 col-12-medium"
					style='text-align: left; margin-top: 1%;'>취소규정</label>
			</div>
			<div border="1px solid black" style="width:100%; text-align:left; margin-left:10%; margin-top:1%;">
				8.3평, 더블침대 1개<br><br>
				에어컨, TV, 냉장고, 커피포트, 전자식 금고<br>
			</div>
		</div>
	
	<br><br><br><br>
		<!-- Footer -->
		<%@include file="/views/common/footerbar_customer.jsp" %>

	</div>

</body>
</html>