<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%
	ArrayList<HashMap<String, Object>> list = (ArrayList<HashMap<String, Object>>) request.getAttribute("list");
	System.out.println("list.size : " + list.size());
	String locationName = (String) request.getAttribute("locationName");
%>
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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
		<%@ include file="/views/common/menubar_customer.jsp"%>
		<div class="container">

			<div align="center">
				<h2 style="margin-left: 3%;">
					<b><%=request.getParameter("locationName")%> 숙소 검색 결과</b> <small style="margin-left: 50%;"><a
						href="#">인기순</a> <b>/</b> <a href="#"> 추천순</a></small>
				</h2>
				<div class="hotelList" style="display: inline-block;"></div>

				
				<!-- 썸네일 리스트 영역 -->
				<div class="thumbnailArea">
					<% System.out.println("list : " + list);
						for (int i = 0; i < list.size(); i++) {
							
							HashMap<String, Object> hmap = list.get(i);
						
					%>
					
					<div class="hotel" aling="center">
						<a href="reserv_hotelView.jsp" class="image featured"> <input
							type="hidden" value="<%=hmap.get("cCode")%>"> <img
							src="<%=hmap.get("image")%>" style="width: 20%; margin: auto;">
						 
						<hr>
							<p>
								<b><%=hmap.get("pName") %></b>
							</p>
							<p id="price">104,833원/1박</p>
						</a>
					</div>

					<%
						
						}
					%>
				</div>
				
				<!-- 썸네일 리스트 영역 끝 -->
			</div>
		</div>



			<!-- ----------------------------- -->


			<!-- Footer -->
			<%@include file="/views/common/footerbar_customer.jsp"%>

		</div>
</body>
</html>