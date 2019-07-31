<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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

ul {
  list-style-type: none !important;
  margin: 0 !important;
  padding: 0 !important;
  overflow: hidden !important;
  background-color: white !important;
}

li {
  float: left !important;
}

li a {
  display: block !important;
  text-align: center !important;
  padding: 14px 16px !important;
  text-decoration: none !important;
}

li a:hover:not(.active) {
  background-color: orange !important;
}

li a.active {
  color: white;
  background-color: orange !important;
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
	<%-- <% if(loginUser == null || !loginUser.getUserId().equals("admin")){ 
		request.setAttribute("msg", "잘못된 경로로 접근하셨습니다!");
		request.getRequestDispatcher("/views/common/errorPage.jsp").forward(request,response);
		
	} else { 
	%> --%>
	<div id="page-wrapper">

		<!-- Header -->
		<div id="header-wrapper">
			<header id="header" class="container">

				<!-- Logo -->
				<div id="logo">
					<h1 id="test">콕</h1>
					<!-- <img href="#" src="images/coc_main.png" width="100px" height="100px"> -->
				</div>
					<ul id="logo">
						<li style='color:orange' >제휴사</li>
					</ul>

				<!-- Nav -->
				<nav id="nav" style='left: 20%'>
					<ul>
 
					<!-- 	<li><a href="/coc/views/partner/partnerIndex.jsp">홈</a></li>
						<li><a href="/coc/views/partner/rm.jsp">예약현황</a></li>
						<li><a href="/coc/views/partner/store.jsp">매장운영</a></li>
						<li><a href="/coc/views/partner/reviewManager.jsp">리뷰관리</a></li>
						<li><a href="/coc/views/partner/calculate.jsp">정산/결제</a></li> -->
						
						
			<li><a href="/coc/views/partner/partnerIndex.jsp">홈</a></li>
						<li><a href="/coc/views/partner/rm.jsp">예약현황</a></li>
						<!-- <li><a href="/partner.store">매장운영</a></li> -->
						<li><a href="/coc/partner.store">매장운영</a> </li>
						<li><a href="/coc/views/partner/reviewManager.jsp">리뷰관리</a></li>
						<li><a href="/coc/views/partner/calculate.jsp">정산/결제</a></li>
						
									
						<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<li>
						<li><a href="../../index.jsp" style='color:gray;'>로그아웃</a></li>
					</ul>
				</nav>
			</header>
			<hr style="border-color:orange">
		</div>
<script>
function goStore(){
	location.href="/coc/partner.store";
}



</script>
	<script src="/coc/assets/js/jquery.min.js"></script>
	<script src="/coc/assets/js/jquery.dropotron.min.js"></script>
	<script src="/coc/assets/js/browser.min.js"></script>
	<script src="/coc/assets/js/breakpoints.min.js"></script>
	<script src="/coc/assets/js/util.js"></script>
	<script src="/coc/assets/js/main.js"></script>
</body>
</html>