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
		<div id="header-wrapper">
			<header id="header" class="container">

				<!-- Logo -->
				<div id="logo">
					<h1 id="test">콕</h1>
					<!-- <img href="#" src="images/coc_main.png" width="100px" height="100px"> -->
					<input type="search" id="search" placeholder="검색어를 입력하세요">
				</div>

				<!-- Nav -->
				<nav id="nav">
					<ul>
						<li><a href="#">고객센터</a></li>
						<li><a href="#">로그인</a></li>
						<li class="current"><a href="#">회원가입</a></li>
					</ul>
				</nav>
				<nav id="nav" style='left: 30%'>
					<ul>
						<li><a href="#">계획그리기</a></li>
						<li><a href="#">문화즐기기</a></li>
						<li><a href="#">숙소잡기</a></li>
						<li><a href="#">서울나들이</a></li>
					</ul>
				</nav>
			</header>
			<hr>
		</div>
		<div class="container">
			<div class="row">
				<div id="accordian">
					<ul>
						<li><h3>
								<span class="icon-dashboard"></span>FAQ
							</h3>
							<ul>
								<li><a href="#" id="a1"><button id="faq1">ㅁㅁㅁ</button></a></li>
								<li><a href="#" id="a2"><button id="faq2">ㅁㅁㅁ</button></a></li>
								<li><a href="#"><button id="faq3">ㅁㅁㅁ</button></a></li>
								<li><a href="#"><button id="faq4">ㅁㅁㅁ</button></a></li>
							</ul></li>
						<li class="active"><h3 id="ads">
								<span class="icon-tasks" ></span>광고/제휴문의
							</h3>
							<ul style="display: none">
							</ul></li>
						<li><h3>
								<span class="icon-calendar"></span>여행자가이드
							</h3>
							<ul>
								<li><a href="#">ㅁㅁㅁ</a></li>
								<li><a href="#">ㅁㅁㅁ</a></li>
								<li><a href="#">ㅁㅁㅁ</a></li>
							</ul></li>
						<li>
							<h3>
								<span class="icon-heart"></span>가이드약관
							</h3>
							<ul>
								<li><a href="#">ㅁㅁㅁ</a></li>
								<li><a href="#">ㅁㅁㅁ</a></li>
								<li><a href="#">ㅁㅁㅁ</a></li>
								<li><a href="#">ㅁㅁㅁ</a></li>

							</ul>
						</li>
						<h3 id="aaa">
							<li><a href="#">1:1문의</a></li>
						</h3>
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
			$(function() {
				$("#faq2").click(function() {
					$("#faq").load("faq/faq2.jsp");
				});
			});
			$(function() {
				$("#faq3").click(function() {
					$("#faq").load("faq/faq3.jsp");
				});
			});
			$(function() {
				$("#faq4").click(function() {
					$("#faq").load("faq/faq4.jsp");
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
		<div id="footer-wrapper">
			<footer id="footer" class="container">
				<div class="row">
					<div class="col-3 col-6-medium col-12-small">

						<!-- Links -->
						<section class="widget links">
							<h3>콕 / COC</h3>
							<ul class="style2">
								<li><a href="#">Create Or Choice</a></li>
								<li><a href="#">대표 : 김채원</a></li>
								<li><a href="#">사업자 등록번호 : none</a></li>
								<li><a href="#">고객센터 : 010-8692-0000</a></li>
								<li><a href="#">이메일 : coc@kh.com</a></li>
							</ul>
						</section>

					</div>
					<div class="col-3 col-6-medium col-12-small">

						<!-- Links -->
						<section class="widget links">
							<h3>Random Stuff</h3>
							<ul class="style2">
								<li><a href="#">광고/제휴문의</a></li>
								<li><a href="#">서비스문의</a></li>
								<li><a href="#">개인정보 취급방침</a></li>
								<li><a href="#">이용약관</a></li>
								<li><a href="#">여행자약관</a></li>
								<li><a href="#">가이드약관</a></li>
							</ul>
						</section>

					</div>
					<div class="col-3 col-6-medium col-12-small">

						<!-- Links -->
						<section class="widget links">
							<h3>MADE BY</h3>
							<ul class="style2">
								<li><a href="#">YUJIN-TAK</a></li>
								<li><a href="#">YEONGMIN-PARK</a></li>
								<li><a href="#">MINHA-HWANG</a></li>
								<li><a href="#">HEEJUNG-JEE</a></li>
								<li><a href="#">HYUNSU-KIM</a></li>
								<li><a href="#">CHAEWON-KIM</a></li>
							</ul>
						</section>

					</div>
					<div class="col-3 col-6-medium col-12-small">

						<!-- Contact -->
						<section class="widget contact last">
							<h3>Contact Us</h3>
							<ul>
								<li><a href="#" class="icon brands fa-twitter"><span
										class="label">Twitter</span></a></li>
								<li><a href="#" class="icon brands fa-facebook-f"><span
										class="label">Facebook</span></a></li>
								<li><a href="#" class="icon brands fa-instagram"><span
										class="label">Instagram</span></a></li>
								<li><a href="#" class="icon brands fa-dribbble"><span
										class="label">Dribbble</span></a></li>
								<li><a href="#" class="icon brands fa-pinterest"><span
										class="label">Pinterest</span></a></li>
							</ul>
							<p>
								서울특별시 강남구 테헤란로<br /> 000빌딩, KH정보교육원<br /> 010-1234-4321
							</p>
						</section>

					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<div id="copyright">
							<ul class="menu">
								<li>&copy; Untitled. All rights reserved</li>
								<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
							</ul>
						</div>
					</div>
				</div>
			</footer>
		</div>

	</div>

	<!-- Scripts -->

	<script src="../assets/js/jquery.min.js"></script>
	<script src="../assets/js/jquery.dropotron.min.js"></script>
	<script src="../assets/js/browser.min.js"></script>
	<script src="../assets/js/breakpoints.min.js"></script>
	<script src="../assets/js/util.js"></script>
	<script src="../assets/js/main.js"></script>
</body>
</html>