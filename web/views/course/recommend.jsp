<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
 
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

</head>
<body class="is-preload homepage">

	<!-- Header -->
	<%@ include file="/views/common/menubar_customer.jsp" %>

	<div style="margin-left:20%; margin-right:20%;">
		<div>
			<a href="/coc/views/course/course1.jsp">
				<img src="/coc/images/c1.jpg"/>
			</a>
		</div>
		<br>
		<div>
			<a href="/coc/views/course/course2.jsp">
				<img src="/coc/images/c2.jpg"/>
			</a>
		</div>
		<br>
		<div>
			<a href="/coc/views/course/course3.jsp">
				<img src="/coc/images/c3.jpg"/>
			</a>
		</div>
	</div>
   <br><br>



	<!-- Footer -->
	<%@include file="/views/common/footerbar_customer.jsp" %>
	
</body>
</html> 
     