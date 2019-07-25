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
			<table align="center" class="pwdChangeArea">
				<tr>
					<input type="hidden" id="testid" name="uno" value="<%= loginUser.getUno()%>">
					<td colspan="2"><input type="password" name="pass1" class="form-control" placeholder="새 비밀번호" id="pass1"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="password" name="pass2" class="form-control" placeholder="새 비밀번호 확인" id="pass2"></td>
				</tr>
				<tr>
					<td><button type="submit" style="background:darkgray; width:80%" id="submit">변경하기</button></td>
					<td><button type="reset" style="background:darkgray; width:80%" id="rset">취소하기</button></td>
				</tr>
			</table>
		</div>
		<br><br><br>
			</div>


		<%@include file="/views/common/footerbar_customer.jsp" %>
</div>
<script>
	$("#submit").click(function(){
		var pass1 = $("#pass1").val();
		var pass2 = $("#pass2").val();
		var id = $("#testid").val();
		console.log(id);
		console.log('<%=loginUser.getUno()%>');
		if(pass1 == pass2){
			//location.href="/coc/updatePassword";
		}else {
			alert("다시 입력하세요");
		}
	});
</script>

</body>
</html>