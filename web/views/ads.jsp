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
		<%@include file="/views/common/footerbar_customer.jsp" %>
	</div>


</body>
</html>