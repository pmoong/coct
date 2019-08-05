<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.*, com.cw.coc.place.model.vo.*, com.cw.coc.member.model.vo.*"%>
<%
	ArrayList<Place> pl = (ArrayList<Place>) request.getAttribute("pl");
	ArrayList<CultureVoYM> ct = (ArrayList<CultureVoYM>) request.getAttribute("ct");
	ArrayList<LogmentVoYM> lm = (ArrayList<LogmentVoYM>) request.getAttribute("lm");
	ArrayList<RestaurantVo> rt = (ArrayList<RestaurantVo>) request.getAttribute("rt");
	ArrayList<SeoulVoYM> sl = (ArrayList<SeoulVoYM>) request.getAttribute("sl");
	
%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
ul.tabs {
	margin: center;
	padding: 0;
	list-style: none;
	/* height: 30%; */
	border-bottom: 1px solid #eee;
	border-left: 1px solid #eee;
	width: 100%;
}

ul.tabs li {
	float: left;
	text-align: center;
	cursor: pointer;
	width: 22.5%;
	/* height: 100%; */
	line-height: 31px;
	border: 1px solid #eee;
	border-left: none;
	font-weight: bold;
	overflow: hidden;
	position: relative;
}

ul.tabs li.active {
	background: white;
	border-bottom: 1px solid white;
}

.tab_container {
	border: 1px solid #eee;
	border-top: none;
	clear: both;
	float: left;
	width: 90%;
	background: white;
}

.tab_content {
	padding: 5%;
	display: none;
}

.tab_container .tab_content ul {
	width: 100%;
	margin: 0px;
	padding: 0px;
}

.tab_container .tab_content ul li {
	padding: 5px;
	list-style: none;
}

#container {
	width: 90%;
	margin: 0 auto;
}
.tabs {
	width: 90%;
}
</style>
<script>
	$(function() {
		$(".tab_content").hide();
		$(".tab_content:first").show();

		$("ul.tabs li").click(function() {
			$("ul.tabs li").removeClass("active").css("color", "black");
			//$(this).addClass("active").css({"color": "darkred","font-weight": "bolder"});
			$(this).addClass("active").css("color", "gray");
			$(".tab_content").hide()
			var activeTab = $(this).attr("rel");
			$("#" + activeTab).fadeIn()
		});
	});
</script>
</head>
<body>
	<!-- Header -->
	<%@ include file="/views/common/menubar_customer.jsp"%>

	<div></div>

	<div id="container">
		<ul class="tabs">
			<li class="active" rel="tab1">문화</li>
			<li rel="tab2">숙박</li>
			<li rel="tab3">식당</li>
			<li rel="tab4">관광</li>
		</ul>
		<div class="tab_container">
			<div id="tab1" class="tab_content">
				<div class="row">
					<%-- <% 
						for (Place p : pl) {

						%>
				<div class="col-4 col-12-medium">
					<!-- Box -->
					<section class="box feature">
						<a href="#" class="image featured"><img
							src="<%= p.getImage() %>" alt="" />
							<%= p.getpName() %>
							</a>
					</section>
				</div>
					<%
							}
					%> --%>
					<%
								for (CultureVoYM c : ct) {
							%>
					<div class="col-4 col-12-medium">
						<!-- Box -->
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="<%=c.getFirstimage()%>" alt="" /> <%=c.getCtitle()%> </a>
						</section>
					</div>
					<%
								}
							%>
				</div>
			</div>
			<!-- #tab1 -->
			<div id="tab2" class="tab_content">
				<div class="tableArea">
					<div class="row">
						<%
									for (LogmentVoYM l : lm) {
								%>
						<div class="col-4 col-12-medium">
							<!-- Box -->
							<section class="box feature">
								<a href="#" class="image featured"><img
									src="<%=l.getLfirstimage()%>" alt="" /> <%=l.getLtitle()%> </a>
							</section>
						</div>
						<%
									}
								%>
					</div>
				</div>
			</div>
			<!-- #tab2 -->
			<div id="tab3" class="tab_content">
				<div class="tableArea">
					<div class="row">
						<%
									for (RestaurantVo r : rt) {
								%>
						<div class="col-4 col-12-medium">
							<!-- Box -->
							<section class="box feature">
								<a href="#" class="image featured"><img
									src="<%=r.getRfirstimage()%>" alt="" /> <%=r.getRtitle()%> </a>
							</section>
						</div>
						<%
									}
								%>

						</div>
					</div>
				</div>
				<div id="tab4" class="tab_content">
				<div class="tableArea">
					<div class="row">
						<%
									for (SeoulVoYM s : sl) {
								%>
						<div class="col-4 col-12-medium">
							<!-- Box -->
							<section class="box feature">
								<a href="#" class="image featured"><img
									src="<%=s.getFirstimage()%>" alt="" /> <%=s.getTitle()%> </a>
							</section>
						</div>
						<%
									}
								%>
					</div>
				</div>
			</div>
			</div>
			<!-- #tab3 -->
		</div>
	</div>
	<!-- #container -->



	<div style="padding: 20%"></div>

	<br>
	<br><br><br><br>
	<%@include file="/views/common/footerbar_customer.jsp"%>
</body>
</html>