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
		
		<div class="container">
			<section class="section container container-md">
				<p>광고나 제휴를 원하시거나 궁금하신 점이 있으시면 아래 양식을 이용해주시기 바랍니다. 담당자가 확인하는 대로
					광고소개서 등을 전달드리거나 답변드리겠습니다.</p>
			</section>

			<form class="section container container-md" action="/ads"
				method="post">
				<div class="hr"></div>
				<header class="form-group">
					<h2 class="section-title">광고 및 제휴 문의하기</h2>
				</header>
				<div class="form-group">
					<label class="form-label" for="company">회사명</label> <input
						class="form-control" name="company" id="company">
				</div>
				<div class="form-group">
					<label class="form-label" for="name-position">업종 <sup
						class="fas fa-asterisk fa-xs text-primary" aria-label="필수 입력 항목"></sup>
					</label> <input class="form-control" name="name" id="name-position">
				</div>
				<div class="form-group">
					<label class="form-label" for="email">이메일 <sup
						class="fas fa-asterisk fa-xs text-primary" aria-label="필수 입력 항목"></sup>
					</label> <input class="form-control" name="email" id="email" type="email">

				</div>
				<div class="form-group">
					<label class="form-label" for="contact">연락처</label> <input
						class="form-control" name="contact" id="contact">
				</div>
				<div class="form-group">
					<label class="form-label" for="inquiry">문의 내용 <sup
						class="fas fa-asterisk fa-xs text-primary" aria-label="필수 입력 항목"></sup>
					</label>
					<textarea class="form-control" name="content" id="inquiry"
						style="height: 200px;"></textarea>
				</div>
				<div class="form-group form-check">
					<input class="form-check-input" name="agreement" type="checkbox"
						value="1" id="agreement"> <label
						class="form-check-label ml-1" for="agreement"> </label>
				</div>

				<div class="form-footer">
					<button class="btn btn-primary px-4 btn-submit btn-loading"
						type="submit">보내기</button>
				</div>
			</form>
		</div>



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