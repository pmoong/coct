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

#accordian {
	width: 250px;
	color: black;
	display: inline-block;
}

ul {
	list-style: none;
}
/* 아이콘폰트 스타일 */
#accordian h3 span {
	font-size: 40px;
	margin-right: 10px;
}

#accordian li {
	list-style-type: none;
} /* 서브메뉴 스타일 */
#accordian ul ul li a {
	color: black;
	text-decoration: none;
	font-size: 20px;
	line-height: 27px;
	display: block;
	padding: 0 15px;
	-webkit-transition: all 0.15s;
	-moz-transition: all 0.15s;
	-o-transition: all 0.15s;
	-ms-transition: all 0.15s;
	transition: all 0.15s;
}

#accordian ul ul li a:hover {
	border-left: 5px solid #09c;
} /* active 클래스 외에 것은 보이지 않게 하기 */
#accordian ul ul {
	display: none;
}

#accordian li.active ul {
	display: block;
}

#a1 {
	color: red;
}
#btn1 {
	background: #09c;
}

button {
	background:white;
}

.selected{

    background: #3ad195;
    color: #fff;
    font-weight: 800;
}


.tab_menu1{
	cursor: pointer;
	width:50%;
	float:left;
	padding-top:12px;
	padding-bottom:12px;
	text-align:center;
	font-size:17pt;
	border:1px solid black;

}
.tab_menu2{
	cursor: pointer;
	width:50%;
	float:left;
	padding-top:12px;
	padding-bottom:12px;
	text-align:center;
	font-size:17pt;
	border-right:1px solid black;
	border-top:1px solid black;
	border-bottom:1px solid black;

}

.q_container
{
	margin-top:10px;
	border-bottom:1px solid #c0c0c0;
}

</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>


</head>
<body class="is-preload homepage">
	<div id="page-wrapper">

		<!-- Header -->
		<%@ include file="/views/common/menubar_customer.jsp" %>
		<div class="container">

	<div align="center"><h2>COC 고객센터입니다.</h2><br><h4>궁금하신 점을 클릭하셔서 확인하세요</h4></div>

	<div class="tab_menu1" id="faq">FAQ</div>
	<div class="tab_menu2" id="qa">1:1문의</div>
	<br><br><br>
	<div id="tab_content">
	</div>
		</div>

		<script>
			//FAQ
			$(function() {
				$("#faq").click(function() {
					$("#qa").css("background","");
					$("#faq").css("background","darkgray");
					$("#tab_content").load("faq/faq1.jsp");
				});
			});
			//1:1문의			
			$(function() {
				$("#qa").click(function() {
					$("#faq").css("background","");
					$("#qa").css("background","darkgray");
					$("#tab_content").load("help.jsp");
				});
			});
			/*$(function() {
				$("#ads").click(function() {
					$("#faq").load("ads.jsp");
				});
			});*/
		</script>



		<!-- Footer -->
		<%@include file="/views/common/footerbar_customer.jsp" %>

	</div>


</body>
</html>