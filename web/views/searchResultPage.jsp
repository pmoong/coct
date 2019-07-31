<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.cw.coc.place.controller.SearchKeyword" %>
<%
	String keyWord = (String) request.getAttribute("keyWord");

	String[] title = (String[]) request.getAttribute("title");
	String[] link = (String[]) request.getAttribute("link");
	String[] category = (String[]) request.getAttribute("category");
	String[] description = (String[]) request.getAttribute("description");
	String[] telephone = (String[]) request.getAttribute("telephone");
	String[] address = (String[]) request.getAttribute("address");
	String[] mapx = (String[]) request.getAttribute("mapx");
	String[] mapy = (String[]) request.getAttribute("mapy");
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
<style>
body {
	background: white !important;
}

#test {
	background: white !important;
	color: black !important;
}

.carousel-control {
	width: 12% !important;
}

.glyphicon-chevron-left {
	padding-left: 90% !important;
}

.glyphicon-chevron-right {
	padding-right: 90% !important;
}

.planbtn {
	border-radius: 30px !important;
}

.tes {
	position: relative !important;
}

.icons-container {
	position: absolute !important;
	top: 11px !important;
	right: -25px !important;
	width: 35px !important;
	height: 35px !important;
	overflow: hidden !important;
}

.icon-search {
	position: relative !important;
	top: 5px !important;
	left: 8px !important;
	width: 50% !important;
	height: 50% !important;
	opacity: 1 !important;
	border-radius: 50% !important;
	border: 3px solid mix(#6078EA, white, 35%) !important;
	transition: opacity 0.25s ease, transform 0.43s
		cubic-bezier(0.694, 0.048, 0.335, 1.000) !important;
	place-horder: remove !important;
}

.field {
	border: 0 !important;
	width: 100% !important;
	height: 100% !important;
	padding: 10px 20px !important;
	background: white !important;
	border-radius: 3px !important;
}

.tagBtn {
	width: 15% !important;
	align: center !important;
	margin-left: 20% !important;
	height: 10% !important;
	background: darkgray !important;
}
.col-12-medium{
	padding:30px 20px 10px 20px !important;
	radius:5px !important;
}
#banner-wrapper .feature{
	border:3px solid #FFD700 !important;
	border-radius:5px !important;
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
		<%@ include file="/views/common/menubar_customer.jsp" %>
		<div class="container">
			<div id="logo">
				<fieldset class="field-container" style="width: 160%">
						<input type="search" name="keyWord" class="form-control" placeholder="Search..." class="field"  style="border-radius:20px;" value="<%=keyWord%>"/>
				</fieldset>
			</div>

			<header class="container">
				<input class="tagBtn" type="button" value="태그추가하기"
					onclick="addTag();" style="font-size: small;">
			</header>
		</div>
		<%-- <!-- Header -->
		<div id="header-wrapper">
			<header id="header" class="container">

				<!-- Logo -->
				<div id="logo">
					<fieldset class="field-container" style="width: 160%">
						<input type="search" name="keyWord" class="form-control" placeholder="Search..." class="field"  style="border-radius:20px;" value="<%=keyWord%>"/>
					</fieldset>
				</div>
			</header>
			<header class="container">
				<input class="tagBtn" type="button" value="태그추가하기"
					onclick="addTag();" style="font-size: small;">
			</header>
		</div> --%>





		<!-- Banner -->
		<div id="banner-wrapper">
			<div class="box container">
			<h3>파워링크</h3>
				<div class="row" style="background:skyblue">
					<div class="col-3 col-12-medium">
						<!-- Box -->
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="/coc/images/pic01.jpg" alt=""></a>
							<div class="inner">
								<header>
								<h2>뽕나무족발</h2>
									<p>02-558-9279</p>
									<p>서울 강남구 역삼로65길 31</p>
									</header>	
							</div>
						</section>

					</div>
					<div class="col-3 col-12-medium">

						<!-- Box -->
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="/coc/images/pic02.jpg" alt=""></a>
							<div class="inner">
								<header>
									<h2>뽕나무족발</h2>
									<p>02-558-9279</p>
									<p>서울 강남구 역삼로65길 31</p>
									</header>
							</div>
						</section>

					</div>
					<div class="col-3 col-12-medium">

						<!-- Box -->
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="/coc/images/pic03.jpg" alt=""></a>
							<div class="inner">
								<header>
									<h2>뽕나무족발</h2>
									<p>02-558-9279</p>
									<p>서울 강남구 역삼로65길 31</p>
									</header>
							</div>
						</section>

					</div>
					<div class="col-3 col-12-medium">

						<!-- Box -->
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="/coc/images/pic01.jpg" alt=""></a>
							<div class="inner">
								<header>
									<h2>뽕나무족발</h2>
									<p>02-558-9279</p>
									<p>서울 강남구 역삼로65길 31</p>
								</header>
							</div>
						</section>

					</div>
				</div>
			</div>
		</div>



		<div id="features-wrapper">
			<div class="container">
			
		
        <%int k = 0; %>
        <%for (int i = 0; i < title.length; i++){ %>
        		<% if(i%4==0){ %>
        		<div class="row">
        		<%} %>
        		
        		<div class="col-3 col-12-medium">
        		<section class="box feature">
							<a href="<%=link[i]%>" target="_blank"><h2><%=title[i] %></h2></a>
							<div class="inner">
								<header>
								<p><%=address[i] %></p>
        						<p><%=telephone[i] %></p>
        						<p><%=description[i] %></p>
								</header>	
							</div>
				</section>
        		</div>
        		
        		<% if(i%4==3){ %>
					</div>
        		<%} %>
        		

       
     
        <%} %>
				<!-- <div class="row">
					<div class="col-3 col-12-medium">

						Box
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="/coc/images/pic01.jpg" alt=""></a>
							<div class="inner">
								<header>
								<h2>뽕나무족발</h2>
									<p>02-558-9279</p>
									<p>서울 강남구 역삼로65길 31</p>
								</header>
								
							</div>
						</section>

					</div>
					<div class="col-3 col-12-medium">

						Box
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="/coc/images/pic02.jpg" alt=""></a>
							<div class="inner">
								<header>
									<h2>뽕나무족발</h2>
									<p>02-558-9279</p>
									<p>서울 강남구 역삼로65길 31</p>
								</header>
							</div>
						</section>

					</div>
					<div class="col-3 col-12-medium">

						Box
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="/coc/images/pic03.jpg" alt=""></a>
							<div class="inner">
								<header>
									<h2>뽕나무족발</h2>
									<p>02-558-9279</p>
									<p>서울 강남구 역삼로65길 31</p>
									</header>
							</div>
						</section>

					</div>
					<div class="col-3 col-12-medium">

						Box
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="/coc/images/pic01.jpg" alt=""></a>
							<div class="inner">
								<header>
									<h2>뽕나무족발</h2>
									<p>02-558-9279</p>
									<p>서울 강남구 역삼로65길 31</p>
								</header>
							</div>
						</section>

					</div>
				</div> -->
				
				
				
				<!-- <div class="row">
					<div class="col-3 col-12-medium">

						Box
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="/coc/images/pic01.jpg" alt=""></a>
							<div class="inner">
								<header>
								<h2>뽕나무족발</h2>
									<p>02-558-9279</p>
									<p>서울 강남구 역삼로65길 31</p>
								</header>
								
							</div>
						</section>

					</div>
					<div class="col-3 col-12-medium">

						Box
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="/coc/images/pic02.jpg" alt=""></a>
							<div class="inner">
								<header>
									<h2>뽕나무족발</h2>
									<p>02-558-9279</p>
									<p>서울 강남구 역삼로65길 31</p>
								</header>
							</div>
						</section>

					</div>
					<div class="col-3 col-12-medium">

						Box
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="/coc/images/pic03.jpg" alt=""></a>
							<div class="inner">
								<header>
									<h2>뽕나무족발</h2>
									<p>02-558-9279</p>
									<p>서울 강남구 역삼로65길 31</p>
									</header>
							</div>
						</section>

					</div>
					<div class="col-3 col-12-medium">

						Box
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="/coc/images/pic01.jpg" alt=""></a>
							<div class="inner">
								<header>
									<h2>뽕나무족발</h2>
									<p>02-558-9279</p>
									<p>서울 강남구 역삼로65길 31</p>
								</header>
							</div>
						</section>

					</div>
				</div> -->
				
				
				<!-- <div class="row">
					<div class="col-3 col-12-medium">

						Box
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="/coc/images/pic01.jpg" alt=""></a>
							<div class="inner">
								<header>
								<h2>뽕나무족발</h2>
									<p>02-558-9279</p>
									<p>서울 강남구 역삼로65길 31</p>
								</header>
								
							</div>
						</section>

					</div>
					<div class="col-3 col-12-medium">

						Box
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="/coc/images/pic02.jpg" alt=""></a>
							<div class="inner">
								<header>
									<h2>뽕나무족발</h2>
									<p>02-558-9279</p>
									<p>서울 강남구 역삼로65길 31</p>
								</header>
							</div>
						</section>

					</div>
					<div class="col-3 col-12-medium">

						Box
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="/coc/images/pic03.jpg" alt=""></a>
							<div class="inner">
								<header>
									<h2>뽕나무족발</h2>
									<p>02-558-9279</p>
									<p>서울 강남구 역삼로65길 31</p>
									</header>
							</div>
						</section>

					</div>
					<div class="col-3 col-12-medium">

						Box
						<section class="box feature">
							<a href="#" class="image featured"><img
								src="/coc/images/pic01.jpg" alt=""></a>
							<div class="inner">
								<header>
									<h2>뽕나무족발</h2>
									<p>02-558-9279</p>
									<p>서울 강남구 역삼로65길 31</p>
								</header>
							</div>
						</section>

					</div>
				</div> -->
			</div>
		</div>


		<!--       
         <!-- Main --

            <div id="main-wrapper">
               <div class="container">
                  <div class="row gtr-200">
                     <div class="col-4 col-12-medium">

                        Sidebar
                           <div id="sidebar">
                              <section class="widget thumbnails">
                                 <h3>Interesting stuff</h3>
                                 <div class="grid">
                                    <div class="row gtr-50">
                                       <div class="col-6"><a href="#" class="image fit"><img src="images/pic04.jpg" alt="" /></a></div>
                                       <div class="col-6"><a href="#" class="image fit"><img src="images/pic05.jpg" alt="" /></a></div>
                                       <div class="col-6"><a href="#" class="image fit"><img src="images/pic06.jpg" alt="" /></a></div>
                                       <div class="col-6"><a href="#" class="image fit"><img src="images/pic07.jpg" alt="" /></a></div>
                                    </div>
                                 </div>
                                 <a href="#" class="button icon fa-file-alt">More</a>
                              </section>
                           </div>

                     </div>
                     <div class="col-8 col-12-medium imp-medium">

                        Content
                           <div id="content">
                              <section class="last">
                                 <h2>So what's this all about?</h2>
                                 <p>This is <strong>Verti</strong>, a free and fully responsive HTML5 site template by <a href="http://html5up.net">HTML5 UP</a>.
                                 Verti is released under the <a href="http://html5up.net/license">Creative Commons Attribution license</a>, so feel free to use it for any personal or commercial project you might have going on (just don't forget to credit us for the design!)</p>
                                 <p>Phasellus quam turpis, feugiat sit amet ornare in, hendrerit in lectus. Praesent semper bibendum ipsum, et tristique augue fringilla eu. Vivamus id risus vel dolor auctor euismod quis eget mi. Etiam eu ante risus. Aliquam erat volutpat. Aliquam luctus mattis lectus sit amet phasellus quam turpis.</p>
                                 <a href="#" class="button icon solid fa-arrow-circle-right">Continue Reading</a>
                              </section>
                           </div>

                     </div>
                  </div>
               </div>
            </div>
-->
		<!-- Footer -->
		<%@include file="/views/common/footerbar_customer.jsp" %>

	</div>

	<!-- Scripts -->
	<script>

	</script>

	
</body>
</html>