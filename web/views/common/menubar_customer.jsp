<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.cw.coc.member.model.vo.Member" %>
<%
	Member loginUser = (Member)session.getAttribute("loginUser");
%>    
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
.carousel-control{
   width:12% !important;
}
.glyphicon-chevron-left{
   padding-left:90%;
}
.glyphicon-chevron-right{
   padding-right:90%;
}
.planbtn{
   border-radius:30px;
}
.tes{
	position:relative;
}
.fa{
	display:inline !important;
	line-height:100%;
	color:black;
	padding-left:5px;
	margin-top:10px;
}
.submit{
	float:right;
	width:5px;
	left:0;
	top:0;
	font-size: 1.2em;
	text-align: center;
	cursor: pointer;
	background-color: white;
}
.search-box-container{
	display: inline-block;
	box-sizing: content-box;
	height: 50px;
	width: 50px;
	background-color: white;
	border:3px solid black;
	border-radius:40px;
	overflow: hidden;
}
.nav2{
	margin-right:35%;
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
      <div id="header-wrapper">
         <header id="header" class="container">

            <!-- Logo -->
            <div id="logo">
               <h1 id="test"><a href="/coc/index.jsp">콕</a></h1>
               <!-- <img href="#" src="images/coc_main.png" width="100px" height="100px"> -->
               	<h1 id="test">
               		<button type="button" style="background:none; margin:0; padding:0" onclick="location.href='/coc/views/searchPage.jsp'">
               		<i class="fa fa-search"></i>
               		</button>
               	</h1>
          
               
            </div>
            <!-- Nav -->
            <nav id="nav">
               <ul>
                  <li><a href="/coc/views/member/cs.jsp">고객센터</a></li>
                  <%if(loginUser!=null) {%>
                  <li><a href="" onclick="logout()">로그아웃</a></li>
                  <li class="current"><a href="/coc/views/member/myPage.jsp">마이페이지</a></li>
                  <%}else {%>
                  <li><a href="/coc/views/member/login.jsp">로그인</a></li>
                  <li class="current"><a href="/coc/views/member/joinForm.jsp">회원가입</a></li>
                  <%} %>
               </ul>
               
            </nav>
            <nav id="nav" class="nav2">
               <ul>
                  <li><a href="#">계획그리기</a></li>
                  <li><a href="/coc/views/culture.jsp">문화즐기기</a></li>
                  <li><a href="/coc/views/reserve/reservation.jsp">숙소잡기</a></li>
                  <li><a href="/coc/views/seoul.jsp">서울나들이</a></li>
               </ul>
            </nav>
         </header>
			<hr style="border-color:skyblue">
		</div>

	<script src="/coc/assets/js/jquery.min.js"></script>
	<script src="/coc/assets/js/jquery.dropotron.min.js"></script>
	<script src="/coc/assets/js/browser.min.js"></script>
	<script src="/coc/assets/js/breakpoints.min.js"></script>
	<script src="/coc/assets/js/util.js"></script>
	<script src="/coc/assets/js/main.js"></script>
	<script>
		function logout(){
			location.href="<%=request.getContextPath()%>/logout";
		}
	</script>
</body>
</html>