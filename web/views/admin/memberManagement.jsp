<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import=" java.util.*, com.cw.coc.board.model.vo.*, com.cw.coc.member.model.vo.*, com.cw.coc.reserve.model.vo.*, com.cw.coc.allpayment.model.vo.*"%>
<%

	Map<String,ArrayList<Object>> result = (HashMap<String,ArrayList<Object>>) request.getAttribute("result");
	
	
	List<Member> mlist = new ArrayList<Member>();
			
	mlist = (List)result.get("mlist");
	

	PageInfo pi = (PageInfo) request.getAttribute("pi");
	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	System.out.print("여기까지 호출했는지?");
	
	
	
%>
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

.outer {
	width: 1500px;
	height: 1000px;
	background: white;
	color: black;
	margin-left: auto;
	margin-right: auto;
	margin-top: 50px;
}

table {
	border: 1px solid green !important;
	text-align: center;
}

.tableArea {
	width: 800px;
	height: 750px;
	margin: 0 auto;
}

.searchArea {
	width: 650px;
	margin: 0 auto;
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
		<%@ include file="/views/common/menubar_manager.jsp"%>





		<hr style="border-color: yellowgreen">
		<!-- 여기는 회원관리 입니당 -->
		<div class="container">
			<div class="row">
				<h3 class="col-12 col-12-medium"
					style='text-align: left; margin-top: 1%;'>회원관리</h3>
			</div>
		</div>
		<hr style="border-color: yellowgreen">
		<!-- Wrapper for slides -->


		<div class="tableArea">
			<table align="center" id="MlistArea">
				<tr>
					<th width="100px">회원번호</th>
					<th width="100px">아이디</th>
					<th width="300px">이메일</th>
					<th width="100px">구분</th>
					<th width="100px">성별</th>
				</tr>
				<% for(Member m : mlist){ 
				%>
				<tr>
					<input type="hidden" value="<%= m.getUno() %>">
					<td><%= m.getUno() %></td>
					<td><%= m.getUserId() %></td>
					<td><%= m.getEmail() %></td>
					<td><%= m.getuType() %></td>
					<td><%= m.getGender() %></td>
				</tr>
				<% } %>
			</table>
		</div>
				<div class="searchArea" align="center">
					<select id="searchCondition" name="searchCondition">
						<option value="writer">작성자</option>
						<option value="title">제목</option>
						<option value="content">내용</option>
					</select> <input type="search">
					<button type="submit" style="background: yellowgreen;">검색하기</button>
					<%-- <% if(loginUser != null && loginUser.getUserId().equals("admin")){ %> --%>
					<button onclick="location.href='views/notice/noticeInsertForm.jsp'">작성하기</button>
					<%-- <% } %> --%>
				</div>
			</div>
		</div>
	</div>





	<hr style="border-color: yellowgreen; border-solid: 5px">
	<!--  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
	<!-- Footer -->
	<%@include file="/views/common/footerbar_customer.jsp"%>


	</div>

	<!-- Scripts -->
	<script >
	
	$(function(){
		$("#MlistArea td").mouseenter(function(){
			
			$(this).parent().css({"background":"yellowgreen", "cursor":"pointer"});
			
		}).mouseout(function(){
			$(this).parent().css({"background":"white"});
		}).click(function(){
			var muno = $(this).parent().children("input").val();
			
			console.log(muno);
			location.href="<%=request.getContextPath()%>/selectOneRe.ad?muno=" + muno;
			
		});
	});
	</script>

</body>
</html>