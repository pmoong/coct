<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import=" java.util.*, com.cw.coc.board.model.vo.*, com.cw.coc.member.model.vo.*"%>
<%
	
	ArrayList<Board> list = (ArrayList<Board>) request.getAttribute("list");
	PageInfo pi = (PageInfo) request.getAttribute("pi");
	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	System.out.print("여기까지 호출했는지?");
%>
<!DOCTYPE html>
<html>
<head>
<metacharset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
.outer {
	width: 900px;
	height: 700px;
	color: black;
	margin-left: auto;
	margin-right: auto;
	margin-top: 50px;
	border: 1px solid lightgray;
}

table {
	border: 1px solid lightgray;
}

.tableArea {
	width: 500px;
	height: 350px;
	margin: 0 auto;
}

.tableArea {
	width: 650px;
	height: 350px;
	margin: 0 auto;
}

.searchArea {
	width: 650px;
	margin: 0 auto;
}
</style>
</head>
<body>
	<%@ include file="/views/common/menubar_customer.jsp"%>

	<%
		if (loginUser != null) {
			System.out.print("여기까지 시도는 했는지?");
	%>
	<div class="outer container">
		<br>
		<h2 align="center">게시판</h2>
		<div class="tableArea">
			<table align="center" id="listArea">
				<tr>
					<th width="100px">글번호</th>
					<th width="100px">구분</th>
					<th width="300px">글제목</th>
					<th width="100px">작성자</th>
					<th width="100px">조회수</th>
					<th width="150px">작성일</th>
				</tr>
				<% for(Board b : list){ 
				%>
				<tr>
					<input type="hidden" value="<%= b.getUno() %>">
					<td><%= b.getbCode() %></td>
					<td><%= b.getbType() %></td>
					<td><%= b.getbTitle() %></td>
					<td><%= b.getbWriter() %></td>
					<td><span><%= b.getCount()%></span></td>
					<td><%= b.getbDate() %></td>
				</tr>
				<% } %>
			</table>
		</div>
		<br><br><br><br><br>
		<div class="pagingArea" align="center">
			<button onclick="location.href='<%=request.getContextPath()%>/selectList.bo?currentPage=1'"><<</button>
			
			<% if(currentPage <= 1){ %>
			<button disabled><</button>
			<% }else { %>
			<button onclick="location.href='<%=request.getContextPath()%>/selectList.bo?currentPage=<%=currentPage - 1%>'"><</button>
			<% } %>
			
			<% for(int p = startPage; p <= endPage; p++){ 
				if(currentPage == p){
			%>
					<button disabled><%= p %></button>
			<% } else { %>
					<button onclick="location.href='<%=request.getContextPath()%>/selectList.bo?currentPage=<%=p%>'"><%= p %></button>
			<% 
				}
			}
			%>
			
			<% if(currentPage >= maxPage){ %>
			<button disabled>></button>
			<% }else{ %>
			<button onclick="location.href='<%=request.getContextPath()%>/selectList.bo?currentPage=<%=currentPage + 1 %>'">></button>
			<% } %>

			<button onclick="location.href='<%=request.getContextPath()%>/selectList.bo?currentPage=<%=maxPage%>'">>></button>
		</div>
		
		<div class="searchArea" align="center">
			<select id="searchCondition" name="searchCondition">
				<option value="category">카테고리</option>
				<option value="writer">작성자</option>
				<option value="title">제목</option>
				<option value="content">내용</option>
			</select>
			<input type="search">
			<button type="submit">검색하기</button>
			<% if(loginUser != null){ %>
			<button onclick="location.href='views/board/boardInsertForm.jsp'">작성하기</button>
			<% } %>
		</div>
		
	</div>


	<script>
		$(function(){
			$("#listArea td").mouseenter(function(){
				$(this).parent().css({"background":"skyblue", "cursor":"pointer"});
			}).mouseout(function(){
				$(this).parent().css({"background":"white"});
			}).click(function(){
				var num = $(this).parent().children("input").val();
				
				location.href="<%=request.getContextPath()%>/selectOne.bo?num=" + num;
			});
		});
	</script>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<hr>
	<!-- Footer -->
	<%@include file="/views/common/footerbar_customer.jsp"%>
	<%
		} else {
			request.setAttribute("msg", "잘못된 경로로 접근하셨습니다.");
			request.getRequestDispatcher("../common/errorPage.jsp").forward(request, response);
		}
	%> 

</body>
</html>