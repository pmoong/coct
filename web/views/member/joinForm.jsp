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

.form-group {
	width: 70%;
	padding-left: 30%;
}

#test {
	background: white !important;
	color: black !important;
}

#submit {
	background-color: #f7e1ee;
	color: black;
	left: 15%;
}

#submit1 {
	background-color: #f7e1ee;
	color: #fff;
	left: 45%;
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
<%@ include file="../common/menubar_customer.jsp" %>
		<br>
		<div class="container">
			<div class="form-group">
				<label for="inputName">성명</label> <input type="text"
					class="form-control" id="inputName" placeholder="이름을 입력해 주세요">
			</div>
			<div class="form-group">
				<label for="InputEmail">이메일 주소</label> <input type="email"
					class="form-control" id="InputEmail" placeholder="이메일 주소를 입력해주세요">
			</div>
			<div class="form-group">
				<label for="inputPassword">비밀번호</label> <input type="password"
					class="form-control" id="inputPassword" placeholder="비밀번호를 입력해주세요">
			</div>
			<div class="form-group">
				<label for="inputPasswordCheck">비밀번호 확인</label> <input
					type="password" class="form-control" id="inputPasswordCheck"
					placeholder="비밀번호 확인을 위해 다시 한 번 입력 해 주세요">
			</div>
			<div class="form-group">
				<label for="inputMobile">주민번호</label> <input type="text"
					class="form-control" id="inputUno" placeholder="주민번호를 입력해 주세요">
			</div>
			<div class="form-group">
				<label for="inputadd">주소</label> <input type="text"
					class="form-control" id="inputadd" placeholder="주소를 입력해 주세요">
			</div>
			<br>
			<br>
			<div class="form-group">
				<button id="submit" class="btn" style="width: 90px">
					<a href="#"><font color="black"> 다음 </font></a>
				</button>
				<button id="submit1" class="btn" style="width: 90px">
					<a href="../index.jsp"><font color="black"> 취소</font></a>
				</button>
			</div>
		</div>
		<br>
		<br>
		<hr>
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
								<li><a href="#">HYUNSOO-KIM</a></li>
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



</body>
</html>
