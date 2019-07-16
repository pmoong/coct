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
<link rel="stylesheet" href="../assets/css/main.css" />
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

</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(function() {
		$("#accordian h3").click(function() {
			$("#accordian ul ul").slideUp();
			if (!$(this).next().is(":visible")) {
				$(this).next().slideDown();
			}
		})
	});
</script>
<script>
	function click() {

	}
</script>

</head>
<body class="is-preload homepage">
	<div id="page-wrapper">

		<!-- Header -->
		<%@ include file="../common/menubar_customer.jsp" %>
		<div class="container">
			<div class="row">
				<div id="accordian">
					<ul>
						<li><h3 id="faq1"><span class="icon-dashboard">FAQ</span></h3></li>
						<li><h3 id="aaa"><span class="icon-dashboard">1:1문의</span></h3></li>
					</ul>
				</div>
				<!-- 아코디언 옆 -->
				<div style="margin-left:150px">
					<span><span id="faq"><h2>COC 고객센터입니다.</h2><br><h4>궁금하신 점을 클릭하셔서 확인하세요</h4></span></span>
				</div>
			</div>
		</div>
		<!-- 아코디언 관련 -->
		<script>
			//FAQ
			$(function() {
				$("#faq1").click(function() {
					$("#faq").load("faq/faq1.jsp");
				});
			});
			//1:1문의			
			$(function() {
				$("#aaa").click(function() {
					$("#faq").load("help.jsp");
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