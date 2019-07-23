<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
ul.tabs {
    margin: center;
    padding:0;
    list-style: none;
    height: 30%;
    border-bottom: 1px solid #eee;
    border-left: 1px solid #eee;
    width: 100%;
}
ul.tabs li {
    float:left;
    text-align:center;
    cursor: pointer;
    width:30%;
    height: 100%;
    line-height: 31px;
    border: 1px solid #eee;
    border-left: none;
    font-weight: bold;
    overflow: hidden;
    position: relative;
}
ul.tabs li.active {
    background:white;
    border-bottom:1px solid white;
}
.tab_container {
    border: 1px solid #eee;
    border-top: none;
    clear: both;
    float: left;
    width: 90%;
    background:white;
}
.tab_content {
    padding: 5%;
    display: none;    
}
.tab_container .tab_content ul {
    width:100%;
    margin:0px;
    padding:0px;
}
.tab_container .tab_content ul li {
    padding:5px;
    list-style:none;
}
 #container {
    width:90%;
    margin: 0 auto;
}
</style>
<script>
$(function () {
    $(".tab_content").hide();
    $(".tab_content:first").show();

    $("ul.tabs li").click(function () {
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
	<%@ include file="/views/common/menubar_customer.jsp" %>
	
	<div>
	
	</div>
	
	<div id="container">
    <ul class="tabs">
        <li class="active" rel="tab1">나의 콕</li>
        <li rel="tab2">투데이 뷰</li>
        <li rel="tab3">공유된 여행 계획</li>
    </ul>
    <div class="tab_container">
        <div id="tab1" class="tab_content">
			<div class="row">
				<div class="col-4 col-12-medium">
					<!-- Box -->
					<section class="box feature">
						<a href="#" class="image featured"><img
							src="../../images/pic01.jpg" alt="" /></a>
					</section>

				</div>
				<div class="col-4 col-12-medium">

					<!-- Box -->
					<section class="box feature">
						<a href="#" class="image featured"><img
							src="../../images/pic02.jpg" alt="" /></a>
					</section>

				</div>
				<div class="col-4 col-12-medium">

					<!-- Box -->
					<section class="box feature">
						<a href="#" class="image featured"><img
							src="../../images/pic03.jpg" alt="" /></a>
					</section>

				</div>
			</div>
        </div>
        <!-- #tab1 -->
        <div id="tab2" class="tab_content">
        	<div class="tableArea">
				<div class="row">
				<div class="col-4 col-12-medium">
					<!-- Box -->
					<section class="box feature">
						<a href="#" class="image featured"><img
							src="../../images/pic01.jpg" alt="" /></a>
					</section>

				</div>
				<div class="col-4 col-12-medium">

					<!-- Box -->
					<section class="box feature">
						<a href="#" class="image featured"><img
							src="../../images/pic02.jpg" alt="" /></a>
					</section>

				</div>
				<div class="col-4 col-12-medium">

					<!-- Box -->
					<section class="box feature">
						<a href="#" class="image featured"><img
							src="../../images/pic03.jpg" alt="" /></a>
					</section>

				</div>
			</div>
			</div>
        </div>
        <!-- #tab2 -->
        <div id="tab3" class="tab_content">
        	<div class="tableArea">
				<div class="row">
				<div class="col-4 col-12-medium">
					<!-- Box -->
					<section class="box feature">
						<a href="#" class="image featured"><img
							src="../../images/pic01.jpg" alt="" /></a>
					</section>

				</div>
				<div class="col-4 col-12-medium">

					<!-- Box -->
					<section class="box feature">
						<a href="#" class="image featured"><img
							src="../../images/pic02.jpg" alt="" /></a>
					</section>

				</div>
				<div class="col-4 col-12-medium">

					<!-- Box -->
					<section class="box feature">
						<a href="#" class="image featured"><img
						src="../../images/pic03.jpg" alt="" /></a>
					</section>

				</div>
			</div>
			</div>
        </div>
        <!-- #tab3 -->
    </div>
</div>
<!-- #container -->

	
	
	<div style="padding:20%"></div>
	
	
	<%@include file="/views/common/footerbar_customer.jsp" %>
</body>
</html>