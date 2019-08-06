<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.*, com.cw.coc.place.model.vo.LogmentVoYM, com.cw.coc.board.model.vo.*, com.cw.coc.room.model.vo.*
	, com.cw.coc.reserve.model.vo.*"%>
<%
	//ArrayList<Board> list = (ArrayList<Board>) request.getAttribute("list");
	PageInfo pi = (PageInfo) request.getAttribute("pi");
	ArrayList<Board> bo = (ArrayList<Board>) request.getAttribute("bo");
	ArrayList<LogmentVoYM> lm = (ArrayList<LogmentVoYM>) request.getAttribute("lm");
	ArrayList<Room> rm = (ArrayList<Room>) request.getAttribute("rm");
	ArrayList<Reserve> rs = (ArrayList<Reserve>) request.getAttribute("rs");
	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
%>
<!DOCTYPE HTML>
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
				<h2 align="center">나의 리뷰</h2>
				<div class="tableArea">
					<table align="center" id="listArea">
						<tr>
							<th width="100px">업체명</th>
							<th width="90px">방 정보</th>
							<th width="50px">가격</th>
							<th width="70px">제목</th>
							<th width="300px">내용</th>
							<th width="100px">작성자</th>
							<th width="100px">작성일</th>
						</tr>
						<%
						int a = 0;
							for (Board b : bo) {
								for (LogmentVoYM l : lm) {
									for(Room ro : rm) {
										for(Reserve re : rs) {	
											if (l.getcCode() == b.getcCode()) {
												if(l.getcCode() == ro.getcCode()){
													if(ro.getRmCode() == re.getRmCode()){
														a ++;
														if(a==2 ||a ==3){
						%>
						<tr>
							<input type="hidden" value="<%=b.getbCode()%>">
							<td><%= l.getLtitle() %></td>
							<td><%=ro.getRmName()%></td>
							<td><span><%= ro.getPrice()%></span></td>
							<td><%=b.getbTitle()%></td>
							<td><%=b.getbContent()%></td>
							<td><%= b.getbWriter() %></td>
							<td><%=b.getbDate()%></td>
						</tr>
						<%
														}
													}
												}
											}
										}
									}
								}
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
						<button class="btn btn-default"
							onclick="location.href='<%=request.getContextPath()%>/selectList.rv?currentPage=1'"><<</button>

						<%
							if (currentPage <= 1) {
						%>
						<button class="btn btn-default" disabled><</button>
						<%
							} else {
						%>
						<button class="btn btn-default"
							onclick="location.href='<%=request.getContextPath()%>/selectList.rv?currentPage=<%=currentPage - 1%>'"><</button>
						<%
							}
						%>

						<%
							for (int p = startPage; p <= endPage; p++) {
								if (currentPage == p) {
						%>
						<button class="btn btn-default" disabled><%=p%></button>
						<%
							} else {
						%>
						<button class="btn btn-default"
							onclick="location.href='<%=request.getContextPath()%>/selectList.rv?currentPage=<%=p%>'"><%=p%></button>
						<%
							}
							}
						%>

						<%
							if (currentPage >= maxPage) {
						%>
						<button class="btn btn-default" disabled>></button>
						<%
							} else {
						%>
						<button class="btn btn-default"
							onclick="location.href='<%=request.getContextPath()%>/selectList.rv?currentPage=<%=currentPage + 1%>'">></button>
						<%
							}
						%>

						<button class="btn btn-default"
							onclick="location.href='<%=request.getContextPath()%>/selectList.rv?currentPage=<%=maxPage%>'">>></button>
					</div>
					<div class="searchArea" align="center">
						<select id="searchCondition" name="searchCondition">
							<option value="wirter">작성자</option>
							<option value="title">제목</option>
							<option value="content">내용</option>
						</select> <input type="search">
						<button class="btn btn-default" type="submit"
							style="background: darkgray">검색하기</button>
						<%
							if (loginUser != null && loginUser.getUserId().equals("admin")) {
						%>
						<button class="btn btn-default"
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
		$(function() {
			$("#listArea td")
					.mouseenter(function() {
						$(this).parent().css({"background" : "lightgray","cursor" : "pointer"});
					})
					.mouseout(function() {
						$(this).parent().css({"background" : "white"});
					})
					.click(
							function() {
								var num = $(this).parent().children("input").val();

								location.href = "<%=request.getContextPath()%>/selectReviewList.rv?num=" + num;
			});
		});
	</script>


</body>
</html>