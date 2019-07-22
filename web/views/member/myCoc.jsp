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
.infoArea{
	width:100%;
	border-radius:50px !important;

}
.infoArea{
	width:100%;
	border-radius:50px !important;
	border:1px solid black !important;
}
td{
	border:1px solid black !important;
	padding-top:0;
}
.checks {
   position: relative;
}

.checks input[type="checkbox"] {
   position: absolute;
   width: 1px;
   height: 1px;
   padding: 0;
   margin: -1px;
   overflow: hidden;
   clip: rect(0, 0, 0, 0);
   border: 0
}

.checks input[type="checkbox"]+label:before { /* 가짜 체크박스 */
   content: ' ';
   display: inline-block;
   width: 21px; /* 체크박스의 너비를 지정 */
   height: 21px; /* 체크박스의 높이를 지정 */
   line-height: 21px; /* 세로정렬을 위해 높이값과 일치 */
   margin: -2px 8px 0 0;
   text-align: center;
   vertical-align: middle;
   background: #fafafa;
   border: 1px solid #cacece;
   border-radius: 3px;
   box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.05), inset 0px -15px 10px -12px
      rgba(0, 0, 0, 0.05);
}

.checks input[type="checkbox"]:checked+label:before { /* 체크박스를 체크했을때 */
   content: '\2714'; /* 체크표시 유니코드 사용 */
   color: #99a1a7;
   text-shadow: 1px 1px #fff;
   background: #e9ecee;
   border-color: #adb8c0;
   box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.05), inset 0px -15px 10px -12px
      rgba(0, 0, 0, 0.05), inset 15px 10px -12px rgba(255, 255, 255, 0.1);
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
				
		
		
		</div>

			<!-- Wrapper for slides -->

				<div class="container" >
				<div class="row">
				<h3 id="mycoc" class="col-3 col-12-medium" style='text-align:center; margin-top:1%;'>나의콕</h3>
				<h3 id="recentlySearch" class="col-3 col-12-medium" style='text-align:center; margin-top:1%;'>최근조회</h3>
				<h3 class="col-3 col-12-medium"></h3>
				<h4 class="col-3 col-12-medium" style='text-align:center; margin-top:1%;'><button style="background:darkgray">편집</button></h4>
				</div>
				<hr style="border:1px solid darkgray">
				<br>
				<div class="item">
					<div id="features-wrapper">
						<div id="coc" class="container">
							<div class="row">
								<div class="col-4 col-12-medium">
									<!-- Box -->
									<section class="box feature">
										<a href="#" class="image featured"><img
											src="../../images/pic01.jpg" alt="" /></a>
										<div class="inner"></div>
									</section>

								</div>
								<div class="col-4 col-12-medium">

									<!-- Box -->
									<section class="box feature">
										<a href="#" class="image featured"><img
											src="../../images/pic02.jpg" alt="" /></a>
										<div class="inner"></div>
									</section>

								</div>
								<div class="col-4 col-12-medium">

									<!-- Box -->
									<section class="box feature">
										<a href="#" class="image featured"><img
											src="../../images/pic03.jpg" alt="" /></a>
										<div class="inner"></div>
									</section>

								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-4 col-12-medium">
									<!-- Box -->
									<section class="box feature">
										<a href="#" class="image featured"><img
											src="../../images/pic01.jpg" alt="" /></a>
										<div class="inner"></div>
									</section>

								</div>
								<div class="col-4 col-12-medium">

									<!-- Box -->
									<section class="box feature">
										<a href="#" class="image featured"><img
											src="../../images/pic02.jpg" alt="" /></a>
										<div class="inner"></div>
									</section>

								</div>
								<div class="col-4 col-12-medium">

									<!-- Box -->
									<section class="box feature">
										<a href="#" class="image featured"><img
											src="../../images/pic03.jpg" alt="" /></a>
										<div class="inner"></div>
									</section>

								</div>
							</div>
						</div>
					</div>
				</div>


		<!-- Footer -->
		<br><br><br>
	</div>
	
		<%@include file="/views/common/footerbar_customer.jsp" %>
</div>


</body>
</html>