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
<body class="is-preload homepage">
	<div id="page-wrapper">

		<!-- Header -->
<%@ include file="/views/common/menubar_customer.jsp" %>

		<div class="container" align="center">
			<form class="form-horizontal" action="<%=request.getContextPath() %>/sendMail" method="post">
				<div class="form-group">
					<label for="inputUserEmail" class="col-sm-5 control-label" id="userEmail">이메일</label>
					<div class="col-sm-3">
						<input type="email" class="form-control" id="inputuserEmail">
					</div>
				</div>
				<br>
			</form>
			<div class="form-group">
				<div class="col-sm-offset-1 col-sm-10">
					<button type="submit" class="btn btn-default">아이디 발송</button>
					<button class="btn btn-default" onclick="gologin();">취소</button>
				</div>
			</div>
		</div>

		<script>
			function gologin(){
				location.href="/coc/views/member/login.jsp";
			}
		</script>


		<!-- Footer -->
		<%@include file="/views/common/footerbar_customer.jsp" %>

	</div>



</body>
</html>