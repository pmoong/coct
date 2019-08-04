<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"  import="java.util.*, com.cw.coc.place.model.vo.*"%>
 
	<%
 	ArrayList<Place> list=(ArrayList<Place>)request.getAttribute("list");
	 PageInfo pi =(PageInfo)request.getAttribute("pi");
    int listCount =pi.getListCount();
    int currentPage =pi.getCurrentPage();
    int maxPage=pi.getMaxPage();
    int startPage=pi.getStartPage();
    int endPage=pi.getEndPage();
	
  	%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CoC</title>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyC3OcLTHF_YKhnSKPLLUbrFNNaiD8vjnOQ" ></script>

<style>
body{
	background:white;
}
#map {
   float: left;
  width: 60%;
}
.right-box {
  background: white;
  float: right;
  width: 40%;
}	
textarea {
	 resize: none;
}
#pm {
	position : relative;
	left: 80%;
	top: 73%;	
}
.h12 {
	text-align: center;
}
.circle {
	width:11%;
	height:150px;
	border-radius:50%;
	background:white;
	border:2px solid black;
}
.circle2 {
	width:7%;
	height:100px;
	border-radius:50%;
	background:white;
	border:1px solid black;
}
.count {
	 float: left;
 	 width: 12%;
}
.cir {
	 float: right;
	 width: 88%;
}
.css-arrow {
    display: inline-block;
    position: relative;
    margin: 0 0 0 8px;
    padding: 0;
    width: 0;
    height: 0;
    border: 10px solid transparent;
    border-left-color: #000;
}
#btn {
	background:white;
} 
.btn {
	background:white;
 
}

.tab_menu {
	background:white;
	margin :1%;
	margin-left :4%;
}

.plan2 {
	margin: 50px 0;
}
 
.selected{
	background:darkgray;
}
 
.tab_menu{
	float:left;
	width:25%;
	padding-top:12px;
	padding-bottom:12px;
	text-align:center;
	border:1px solid black;
	
}

.selectTable{

width:25%;
}
table{
border:2px double black; width:100px;
}
td,th{
border:1px pink solid; text-align:center; padding:5px;

}
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
</style>
</head>

<body>
 
	<%@ include file="../common/menubar_customer.jsp"%>
	<div class="container">
		<div class="row">
			 <div id="map"   >
				<h1 id="pm">
					<a href="#">+</a>
					<a href="#">-</a>
				</h1>
			</div>

		  	<div class="right-box">
 				<div class="searchArea" align="center">
				<!-- <select id="searchCondition" name="searchCondition" style="width:13%;">
				<option value="category">목록▼</option>
				<option value="culture">문화</option>
				<option value="logment">숙박</option>
				<option value="restaurant">식당</option>
				<option value="place">관광</option> 
				</select> 
				<input type="search" style="width:62%; height:35px;">
				<button type="submit" class="btn btn-default" >검색하기</button>  -->
				
				
 				<button id="btn1" class="tab_menu" onclick="location.href='<%=request.getContextPath() %>/PlanCulture'" style="width:17%;">문화</button>
					<button id="btn2" class="tab_menu"onclick="location.href='<%=request.getContextPath() %>/PlanLogment'"style="width:17%;">숙박</button>
				<button id="btn3" class="tab_menu"onclick="location.href='<%=request.getContextPath() %>/PlanRestuarant'" style="width:17%;">식당</button>
					<button id="btn4" class="tab_menu" onclick="location.href='<%=request.getContextPath() %>/PlanSeoul'" style="width:17%;">서울</button>
		    
		  	 
 	 
  
 
 
	<form method="get" action="search.hj">
  	<select name="searchkey" style="width:13%;">
				<option >목록▼</option>
				<option value="total">전체</option>
				<option value="culture">문화</option>
				<option value="logment">숙박</option>
				<option value="restaurant">식당</option>
				<option value="seoul">서울</option> 
				<option value="addr">주소</option>
	</select> 
	<input type="text" name= "searchvalue" placeholder='검색어를 입력하세요'>
	<button type="submit">검색</button></form> </div>
   <table border="1">
<tr>
<th>타이틀</th>
</tr>
<% for(Place p :list){ %>
<tr id="title">
   
<td id="title"><%=p.getpName() %></td>
<td class="pname"><input type="submit" value="콕"  >  </td>
 
</tr>
<% } %>
</table> 


 
<div class="pagingArea" align="center">
<button class="btn btn-default" onclick="location.href='<%=request.getContextPath()%>/plan2?currentPage=1'"><<</button>

	<% if(currentPage <=1){ %>
	<button class="btn btn-default" disabled>< </button>
	<%}else{ %>
	<button  class="btn btn-default" onclick ="location.href='<%=request.getContextPath() %>/plan2?currentPage=<%=currentPage -1 %>'"> <</button>
	<%} %>
	
	<%for(int p = startPage; p <= endPage; p++){ 
		if(currentPage == p){
	%>
		<button class="btn btn-default" disabled><%=p %> </button>
	<%}else{ %>
		<button class="btn btn-default" onclick="location.href='<%=request.getContextPath()%>/plan2?currentPage=<%=p %>'" > <%=p %> </button>
	<%}
	}
		
	%>
<% if(currentPage >= maxPage){ %>
	<button class="btn btn-default" disabled> > </button>
	<%}else{ %>
	<button  class="btn btn-default" onclick ="location.href='<%=request.getContextPath() %>/plan2?currentPage=<%=currentPage +1 %>'"> ></button>
	<%} %>


<button class="btn btn-default" onclick="location.href='<%=request.getContextPath() %>/plan2?currentPage=<%=maxPage %>'">>></button>
</div></div></div></div></div>
 
			<script>
			function searchCheck(frm){
				
				if(frm.keyWord.value==""){
					alert("검색할 단어를 입력하세요.");
					frm.keyWord.focus();
					return;
				}
				frm.submit();
			}
			
			$(".checkBtn").click(function(){
				var str ="";
				var tdArr =new Array();
				var checkBtn =$(this);
				
				var tr =checkBtn.parent().parent();
				var td =tr.children();
				
				console.log("데이터:"+tr.text());
				
				var pName=td.eq(1).text();
				td.each(function(i){
					tdArr.push(td.eq(i).text());
				});
				console.log("배열에 담긴 값"+tdArr);
				
				str+="row의 값"+pName;
			 
			});
			
			</script>
			  <script type="text/javascript">
			 var locations = [
			      ['신라스테이', 37.504788, 127.041312, 28] 
			    ];
			    var map = new google.maps.Map(document.getElementById('map'), {
			      zoom: 16,
			      center: new google.maps.LatLng(37.504788, 127.041312),
			      mapTypeId: google.maps.MapTypeId.ROADMAP
			    });
			    var infowindow = new google.maps.InfoWindow();
			    var marker, i;
			    for (i = 0; i < locations.length; i++) {  
			      marker = new google.maps.Marker({
			        position: new google.maps.LatLng(locations[i][1], locations[i][2],locations[i][3]),
			        map: map,
			        icon:'http://maps.google.com/mapfiles/ms/icons/green-dot.png',
			        label:{ //색
			        	text:'검색',
			        	color:'#fffff'
			        }
			      });

			      google.maps.event.addListener(marker, 'click', (function(marker, i) {
			        return function() {
			          infowindow.setContent(locations[i][0]);
			          infowindow.open(map, marker);
			        
			        }
			      })(marker, i));
			    }
			</script>
	 
	 
	<!--  <script>
	 $("tr#title td").click(function(){
		 $(this).css("font-weight","bold");
		 
		 console.log(this);
	 
 	 })
	 
	 
	 </script> -->
	<%@include file="/views/common/footerbar_customer.jsp"%>
	 
</body>
</html>