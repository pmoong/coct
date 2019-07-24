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

#test {
	background: white !important;
	color: black !important;
}

#userId, #userPwd {
	font-size:13px;
}


</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>
	<div id="page-wrapper">

		<!-- Header -->
		<%@ include file="/views/common/menubar_customer.jsp" %>

		<div class="container" align="center">
			<form class="form-horizontal" action="<%=request.getContextPath()%>/login" method="post">
				<div class="form-group">
					<label for="inputUserId" class="col-sm-5 control-label" id="userId">아이디</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="inputuserId" name="userId">
					</div>
				</div>
				<div class="form-group">
					<label for="inputUserPwd" class="col-sm-5 control-label" id="userPwd">비밀번호</label>
					<div class="col-sm-3">
						<input type="password" class="form-control" id="inputuserPwd" name="userPwd">
					</div>
				</div>
				<br>
				<div class="form-group">
					<div class="col-sm-offset-1 col-sm-10">
						<div><button class="btn btn-default">ID / PW 찾기</button>
						<button type="submit" class="btn btn-default">로그인</button></div>
					</div>
				</div>
			</form>
		</div>

		<!-- Footer -->
		<%@include file="/views/common/footerbar_customer.jsp" %>

	</div>



</body>
</html>