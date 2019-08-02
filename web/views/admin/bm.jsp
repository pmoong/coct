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
 <style type="text/css">
        
        body {
        background:white;
            font-family:"Malgun Gothic";
            font-size: 0.8em;

        }
        /*TAB CSS*/

        ul.tabs {
            margin-bottom: 10%;
            padding: 0;
            float: left;
            list-style: none;
            height: 32px; /*--Set height of tabs--*/
            border-bottom: 1px solid #999;
            border-left: 1px solid #999;
            width: 100%;
        }
        ul.tabs li {
            float: left;
            margin: 0;
            padding: 0;
            height: 31px; /*--Subtract 1px from the height of the unordered list--*/
            line-height: 31px; /*--Vertically aligns the text within the tab--*/
            border: 1px solid #999;
            border-left: none;
            margin-bottom: -1px; /*--Pull the list item down 1px--*/
            overflow: hidden;
            position: relative;
            background: #e0e0e0;
        }
        ul.tabs li a {
            text-decoration: none;
            color: #000;
            display: block;
            font-size: 1.2em;
            padding: 0 20px;
            /*--Gives the bevel look with a 1px white border inside the list item--*/
            border: 1px solid #fff; 
            outline: none;
        }
        ul.tabs li a:hover {
            background: #ccc;
        }
        html ul.tabs li.active, html ul.tabs li.active a:hover  {
             /*--Makes sure that the active tab does not listen to the hover properties--*/
            background: #fff;
            /*--Makes the active tab look like it's connected with its content--*/
            border-bottom: 1px solid #fff; 
        }

        /*Tab Conent CSS*/
        .tab_container {
            border: 1px solid #999;
            border-top: none;
            overflow: hidden;
            clear: both;
            float: left; 
            width: 100%;
            background: #fff;
        }
        .tab_content {
            padding: 20px;
            font-size: 1.2em;
        }

#test {
	background: white !important;
	color: black !important;
}
.outer {
		width:800px;
		height:500px;
		background:white;
		color:black;
		margin-left:auto;
		margin-right:auto;
		margin-top:50px;
	}
	table {
		border:1px solid green !important;
		text-align:center;
	}
	.tableArea {
		width:650px;
		height:350px;
		margin:0 auto;
	}
	.searchArea {
		width:650px;
		margin:0 auto;
	}

    </style>


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script type="text/javascript" ></script>
    <script type="text/javascript">
        $(document).ready(function() {

            //When page loads...
            $(".tab_content").hide(); //Hide all content
            $("ul.tabs li:first").addClass("active").show(); //Activate first tab
            $(".tab_content:first").show(); //Show first tab content

            //On Click Event
            $("ul.tabs li").click(function() {

                $("ul.tabs li").removeClass("active"); //Remove any "active" class
                $(this).addClass("active"); //Add "active" class to selected tab
                $(".tab_content").hide(); //Hide all tab content

                var activeTab = $(this).find("a").attr("href"); //Find the href attribute value to identify the active tab + content
                $(activeTab).fadeIn(); //Fade in the active ID content
                return false;
            });

        });
    </script>
</head>
<body class="is-preload homepage">
	<div id="page-wrapper">

		<!-- Header -->
		
<%@ include file="/views/common/menubar_manager.jsp" %>





	<hr style="border-color:yellowgreen">
		<!-- 여기는 예약관리 입니당 -->
			<div class="container" >
				<div class="row">
					<h3 class="col-12 col-12-medium" style='text-align: left ; margin-top:1%;'>게시판관리</h3>
				</div>
			</div>
			<hr style="border-color:yellowgreen">
			<br><br><br><br><br>
			<div class="container" >
				<div class="row">
    <!--탭 메뉴 영역 -->
    <ul class="tabs">
        <li><a href="#tab1"></a></li>
        <li><a href="#tab2"></a></li>
        <li><a href="#tab3"></a></li>
    </ul>
    <!--탭 콘텐츠 영역 -->
    <div class="tab_container">

        <div id="tab1" class="tab_content">
            <!--Content-->
           <h3 class="col-4 col-12-medium" style='text-align: left ; margin-top:2%; border:red'><a href="/coc/ListN.ad">공지사항</a></h3>
			<div class="outer container">
		<br>
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
				<%-- <% for(Board b : list){ 
				%>
				<tr>
					<input type="hidden" value="<%= b.getbCode() %>">
					<td><%= b.getbCode() %></td>
					<td><%= b.getbType() %></td>
					<td><%= b.getbTitle() %></td>
					<td><%= b.getbWriter() %></td>
					<td><span><%= b.getCount()%></span></td>
					<td><%= b.getbDate() %></td>
				</tr>
				<% } %> --%>
			</table>
		</div>
		<br><br><br><br><br>
		<div class="pagingArea" align="center">
			<button onclick="location.href='<%=request.getContextPath()%>/selectList.ad?currentPage=1'"><<</button>
			
			<%-- <% if(currentPage <= 1){ %>
			<button disabled><</button>
			<% }else { %>
			<button onclick="location.href='<%=request.getContextPath()%>/selectList.ad?currentPage=<%=currentPage - 5%>'"><</button>
			<% } %>
			
			<% for(int p = startPage; p <= endPage; p++){ 
				if(currentPage == p){
			%>
					<button disabled><%= p %></button>
			<% } else { %>
					<button onclick="location.href='<%=request.getContextPath()%>/selectList.ad?currentPage=<%=p%>'"><%= p %></button>
			<% 
				}
			}
			%>
			
			<% if(currentPage >= maxPage){ %>
			<button disabled>></button>
			<% }else{ %>
			<button onclick="location.href='<%=request.getContextPath()%>/selectList.ad?currentPage=<%=currentPage + 5 %>'">></button>
			<% } %>

			<button onclick="location.href='<%=request.getContextPath()%>/selectList.ad?currentPage=<%=maxPage%>'">>></button> --%>
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
			<button onclick="location.href='views/board/Admin_boardInsertForm.jsp'">작성하기</button>
			<% } %>
		</div>
		
	</div>
        </div>

        <div id="tab2" class="tab_content">
           <!--Content-->
           <h3 class="col-4 col-12-medium" style='text-align: left ; margin-top:1%;'><a href="../admin/reviewManager.jsp">리뷰관리</a></h3>
           <div class="outer container">
		<br>
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
				<%-- <% for(Board b : list){ 
				%>
				<tr>
					<input type="hidden" value="<%= b.getbCode() %>">
					<td><%= b.getbCode() %></td>
					<td><%= b.getbType() %></td>
					<td><%= b.getbTitle() %></td>
					<td><%= b.getbWriter() %></td>
					<td><span><%= b.getCount()%></span></td>
					<td><%= b.getbDate() %></td>
				</tr>
				<% } %> --%>
			</table>
		</div>
		<br><br><br><br><br>
		<div class="pagingArea" align="center">
			<button onclick="location.href='<%=request.getContextPath()%>/selectList.ad?currentPage=1'"><<</button>
			
			<%-- <% if(currentPage <= 1){ %>
			<button disabled><</button>
			<% }else { %>
			<button onclick="location.href='<%=request.getContextPath()%>/selectList.ad?currentPage=<%=currentPage - 5%>'"><</button>
			<% } %>
			
			<% for(int p = startPage; p <= endPage; p++){ 
				if(currentPage == p){
			%>
					<button disabled><%= p %></button>
			<% } else { %>
					<button onclick="location.href='<%=request.getContextPath()%>/selectList.ad?currentPage=<%=p%>'"><%= p %></button>
			<% 
				}
			}
			%>
			
			<% if(currentPage >= maxPage){ %>
			<button disabled>></button>
			<% }else{ %>
			<button onclick="location.href='<%=request.getContextPath()%>/selectList.ad?currentPage=<%=currentPage + 5 %>'">></button>
			<% } %>

			<button onclick="location.href='<%=request.getContextPath()%>/selectList.ad?currentPage=<%=maxPage%>'">>></button> --%>
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
			<button onclick="location.href='views/board/Admin_boardInsertForm.jsp'">작성하기</button>
			<% } %>
		</div>
		
	</div>
        </div>
        
        <div id="tab3" class="tab_content">
           <!--Content-->
           	<h3 class="col-4 col-12-medium" style='text-align: left ; margin-top:1%;'><a href="../admin/customerService.jsp">고객센터</a></h3>
        <div class="outer container">
		<br>
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
				<%-- <% for(Board b : list){ 
				%>
				<tr>
					<input type="hidden" value="<%= b.getbCode() %>">
					<td><%= b.getbCode() %></td>
					<td><%= b.getbType() %></td>
					<td><%= b.getbTitle() %></td>
					<td><%= b.getbWriter() %></td>
					<td><span><%= b.getCount()%></span></td>
					<td><%= b.getbDate() %></td>
				</tr>
				<% } %> --%>
			</table>
		</div>
		<br><br><br><br><br>
		<div class="pagingArea" align="center">
			<button onclick="location.href='<%=request.getContextPath()%>/selectList.ad?currentPage=1'"><<</button>
			
			<%-- <% if(currentPage <= 1){ %>
			<button disabled><</button>
			<% }else { %>
			<button onclick="location.href='<%=request.getContextPath()%>/selectList.ad?currentPage=<%=currentPage - 5%>'"><</button>
			<% } %>
			
			<% for(int p = startPage; p <= endPage; p++){ 
				if(currentPage == p){
			%>
					<button disabled><%= p %></button>
			<% } else { %>
					<button onclick="location.href='<%=request.getContextPath()%>/selectList.ad?currentPage=<%=p%>'"><%= p %></button>
			<% 
				}
			}
			%>
			
			<% if(currentPage >= maxPage){ %>
			<button disabled>></button>
			<% }else{ %>
			<button onclick="location.href='<%=request.getContextPath()%>/selectList.ad?currentPage=<%=currentPage + 5 %>'">></button>
			<% } %>

			<button onclick="location.href='<%=request.getContextPath()%>/selectList.ad?currentPage=<%=maxPage%>'">>></button> --%>
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
			<button onclick="location.href='views/board/Admin_boardInsertForm.jsp'">작성하기</button>
			<% } %>
		</div>
		
	</div>
        </div>
        

    </div>

</div>
				
					
					
				
					
				</div> 
			</div>
			<!-- Wrapper for slides -->
			
			<br>
			<br>
			<br>
			<br>
			<br>
				


		

		
<hr style="border-color:yellowgreen ; border-solid:5px" >
<!--  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
		<!-- Footer -->
		<%@include file="/views/common/footerbar_customer.jsp" %>
		

	</div>


</body>
</html>