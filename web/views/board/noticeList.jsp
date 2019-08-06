<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, com.cw.coc.board.model.vo.*"%>
<%
	ArrayList<Board> list = (ArrayList<Board>) request.getAttribute("list");
	PageInfo pi = (PageInfo) request.getAttribute("pi");
	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
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
	background: white;
}

#test {
	background: white !important;
	color: black !important;
}

#userId, #userPwd {
	font-size: 13px;
}

select {
	-webkit-appearance: menulist !important;
}
button { 
	background:white;
	color:black;

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

		<div class="container" align="center">
			<div class="outer">
				<br>
				<h2 align="center">공지사항</h2>
				<div class="tableArea">
					<table align="center" id="listArea">
						<tr>
							<th width="80px">글번호</th>
							<th width="400px">글제목</th>
							<th width="100px">작성자</th>
							<th width="80px">조회수</th>
							<th width="100px">작성일</th>
						</tr>
						<%
							for (Board b : list) {
						%>
						<tr>
							<input type="hidden" value="<%=b.getbCode()%>">
							<td><%=b.getbCode()%></td>
							<td><%=b.getbTitle()%></td>
							<td><%=b.getbWriter()%></td>
							<td><span><%=b.getCount()%></span></td>
							<td><%=b.getbDate()%></td>
						</tr>
						<%
							}
						%>
						
						
						<%-- <%for(Notice n : list){ %>
				<tr>
					<td><%=n.getNno() %></td>
					<td><%=n.getnTitle() %></td>
					<td><%=n.getnWriter() %></td>
					<td><%=n.getnCount() %></td>
					<td><%=n.getnDate() %></td>
				</tr>
				<%} %> --%>
					</table>
					
					<%-- 페이징처리 --%>
		<div class="pagingArea" align="center">
			<button class="btn btn-default" onclick="location.href='<%=request.getContextPath()%>/selectNoticeList.no?currentPage=1'"><<</button>
			
			<% if(currentPage <= 1){ %>
			<button class="btn btn-default" disabled><</button>
			<% }else { %>
			<button class="btn btn-default" onclick="location.href='<%=request.getContextPath()%>/selectNoticeList.no?currentPage=<%=currentPage - 1%>'"><</button>
			<% } %>
			
			<% for(int p = startPage; p <= endPage; p++){ 
				if(currentPage == p){
			%>
					<button class="btn btn-default" disabled><%= p %></button>
			<% } else { %>
					<button class="btn btn-default" onclick="location.href='<%=request.getContextPath()%>/selectNoticeList.no?currentPage=<%=p%>'"><%= p %></button>
			<% 
				}
			   } 
			%>
			
			<% if(currentPage >= maxPage){ %>
			<button class="btn btn-default" disabled>></button>
			<% }else{ %>
			<button class="btn btn-default" onclick="location.href='<%=request.getContextPath()%>/selectNoticeList.no?currentPage=<%=currentPage + 1 %>'">></button>
			<% } %>

			<button class="btn btn-default" onclick="location.href='<%=request.getContextPath()%>/selectNoticeList.no?currentPage=<%=maxPage%>'">>></button>
		</div>
					<div class="searchArea" align="center">
						<select id="searchCondition" name="searchCondition">
							<option value="wirter">작성자</option>
							<option value="title">제목</option>
							<option value="content">내용</option>
						</select> <input type="search">
						<button type="submit" class="btn btn-default" style="background: darkgray" >검색하기</button>
						<%
							if (loginUser != null && loginUser.getUserId().equals("admin")) {
						%>
						<button
							onclick="location.href='views/notice/noticeInsertForm.jsp'">작성하기</button>
						<%
							}
						%>
					</div>
				</div>
			</div>
		</div>

		<!-- Footer -->
		<%@include file="/views/common/footerbar_customer.jsp"%>

	</div>
	<script>
		$(function(){
			$("#listArea td").mouseenter(function(){
				$(this).parent().css({"background":"lightgray", "cursor":"pointer"});
			}).mouseout(function(){
				$(this).parent().css({"background":"white"});
			}).click(function(){
				var num = $(this).parent().children("input").val();
				
				location.href="<%=request.getContextPath()%>/selectOne.no?num=" + num;
			});
		});
	</script>

</body>
</html>