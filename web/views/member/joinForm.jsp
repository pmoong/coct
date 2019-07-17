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

#submit {
	background-color: #f7e1ee;
	color: black;
	left: 15%;
}

#submit1 {
	background-color: #f7e1ee;
	color: #fff;
	left: 45%;
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
<%@ include file="/views/common/menubar_customer.jsp" %>
		<br>
		<div class="container">
			<div class="form-group">
				<label for="inputName">성명</label> <input type="text"
					class="form-control" id="inputName" placeholder="이름을 입력해 주세요">
			</div>
			<div class="form-group">
				<label for="InputEmail">이메일 주소</label> <input type="email"
					class="form-control" id="InputEmail" placeholder="이메일 주소를 입력해주세요">
			</div>
			<div class="form-group">
				<label for="inputPassword">비밀번호</label> <input type="password"
					class="form-control" id="inputPassword" placeholder="비밀번호를 입력해주세요">
			</div>
			<div class="form-group">
				<label for="inputPasswordCheck">비밀번호 확인</label> <input
					type="password" class="form-control" id="inputPasswordCheck"
					placeholder="비밀번호 확인을 위해 다시 한 번 입력 해 주세요">
			</div>
			<div class="form-group">
				<label for="inputMobile">주민번호</label> <input type="text"
					class="form-control" id="inputUno" placeholder="주민번호를 입력해 주세요">
			</div>
			<div class="form-group">
				<label for="inputadd">주소</label> <input type="text"
					class="form-control" id="inputadd" placeholder="주소를 입력해 주세요">
			</div>
			<br>
			<br>
			<div class="form-group">
				<button id="submit" class="btn" style="width: 90px">
					<a href="#"><font color="black"> 다음 </font></a>
				</button>
				<button id="submit1" class="btn" style="width: 90px">
					<a href="../index.jsp"><font color="black"> 취소</font></a>
				</button>
			</div>
		</div>
		<br>
		<br>
		<hr>
		<!-- Footer -->
		<%@include file="/views/common/footerbar_customer.jsp" %>

	</div>



</body>
</html>
