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
		<div style="margin:10%; margin-top:0;">
			<h3>로그인</h3><hr><br>
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
				</form>
				<form>	
					<div class="form-group">
						<div class="col-sm-offset-1 col-sm-10">
							<button type="submit" class="btn btn-default">
							&emsp;&emsp;&emsp;&emsp;&emsp;로그인&emsp;&emsp;&emsp;&emsp;&emsp;</button>
							<!-- <button type="submit">로그인</button> -->
						</div>
					</div>
					<div class="col-sm-offset-1 col-sm-10">
						<div>
							<br><a href="/coc/views/member/findId.jsp"><b>아이디 찾기</b></a>&emsp;|&emsp;
							<a href="/coc/views/member/findPwd.jsp"><b>패스워드 찾기</b></a>
						</div>
					</div>
				</form>
			</div> 
		</div>
	<script>
		function findid(){
			location.href="/coc/views/member/findId.jsp";
		}
		function findpwd(){
			location.href="/coc/views/member/findPwd.jsp";
		}
	</script>

		<!-- Footer -->
		<%@include file="/views/common/footerbar_customer.jsp" %>

	</div>



</body>
</html>