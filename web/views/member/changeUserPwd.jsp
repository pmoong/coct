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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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
table{
		border:1px solid black !important;
		text-align:center;
	}
.tableArea{
	width:100%;
	height:20%;
	margin:0 auto;
}
table th{
	text-align:center !important;
}
.pwdChangeArea{
	width:50%;
	border-radius:50px !important;

}
table>tr>td{

	height:30px;
	display: flex !important;
    justify-contents: center !important;
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
		<!-- CONTENTS -->
		<div class="container">
				
		<div align="center">
			<form id="changeUserPasswordForm" action="<%=request.getContextPath() %>/updatePassword" method="post">
				<table align="center" class="pwdChangeArea">
					<tr>
						<input type="hidden" id="testid" name="uno" value="<%= loginUser.getUno()%>">
						<input type="hidden" id="hiddenid" name="id" value="<%= loginUser.getUserId()%>">
						<input type="hidden" id="hiddenid" name="email" value="<%= loginUser.getEmail()%>">
						<input type="hidden" id="hiddenid" name="utype" value="<%= loginUser.getuType()%>">
						<input type="hidden" id="hiddenid" name="gender" value="<%= loginUser.getGender()%>">
						<input type="hidden" id="hiddenid" name="age" value="<%= loginUser.getAge()%>">
						<input type="hidden" id="hiddenid" name="survey" value="<%= loginUser.getSurvey()%>">
						
						<td colspan="2"><input type="password" name="pass1" class="form-control" placeholder="새 비밀번호" id="pass1"></td>
					</tr>
					<tr>
						<td colspan="2"><input type="password" name="pass2" class="form-control" placeholder="새 비밀번호 확인" id="pass2"></td>
					</tr>
					<tr>
						<td><button type="button" style="background:darkgray; width:80%" id="submitBtn">변경하기</button></td>
						<td><button type="reset" style="background:darkgray; width:80%" id="rset">취소하기</button></td>
					</tr>
				</table>
			</form>
		</div>
		<br><br><br>
			</div>


		<%@include file="/views/common/footerbar_customer.jsp" %>
</div>
<script>
	$("#submitBtn").click(function(){
		var pass1 = $("#pass1").val();
		var pass2 = $("#pass2").val();
		

		if(pass1 == pass2){
			$("#changeUserPasswordForm").submit();

		}else {
			alert("다시 입력하세요");
		}
	});
</script>

</body>
</html>