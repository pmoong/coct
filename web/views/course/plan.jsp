<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"  import="java.util.*, com.cw.coc.place.model.vo.*, javax.tools.Tool"%>
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
	width:13%;
	height:150px;
	border-radius:50%;
	background:white;
	border:2px solid black;
	inline:auto;
 }
.circle2 {
	width:13%;
	height:150px;
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

#image{
 inline:auto;

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
				<!-- <span class="demoSpan1"></span> -->
 				 	<form id="search" method="get" action="search.hj">
				<select class="btn btn-default" name="searchkey" style="width:70px;">
					<option value="category" >목록▼</option>
				<option value="total">전체</option>
				<option value="culture">문화</option>
				<option value="logment">숙박</option>
				<option value="restaurant">식당</option>
				<option value="seoul">서울</option> 
				<option value="addr">주소</option> 
				</select> 
			   <input type="search" name= "searchvalue"  style="width:62%; height:35px;" placeholder='검색어를 입력하세요'>
				<button type="submit" class="btn btn-default" >검색하기</button>    
 </form> 
 
  		
 				<button id="btn1" class="tab_menu" onclick="location.href='<%=request.getContextPath() %>/PlanCulture'" style="width:17%;">문화</button>
					<button id="btn2" class="tab_menu"onclick="location.href='<%=request.getContextPath() %>/PlanLogment'"style="width:17%;">숙박</button>
				<button id="btn3" class="tab_menu"onclick="location.href='<%=request.getContextPath() %>/PlanRestuarant'" style="width:17%;">식당</button>
					<button id="btn4" class="tab_menu" onclick="location.href='<%=request.getContextPath() %>/PlanSeoul'" style="width:17%;">서울</button>
		 
 				
 				   <table border="1">
<tr>
<th>타이틀</th>
</tr>
<% for(Place p :list){ %>
<tr id="title">
   
<td id="title"><%=p.getpName() %></td>
<td class="pname">
  
</tr>
<%} %> 
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
</div></div></div> </div>
 
  
		<div class="bottom" id="bottom">
			<div class="h12">
				<h1>콕과 함께 당신의 여행을 콕 찍어 그려보세요</h1><br>
				<h2>첫 번째 목적지를 설정해볼까요?</h2><br><br><br>
			</div>
 					<h1>1일차</h1><div id="row">
				<% for (int i =0; i < list.size(); i++) {
                 	Place p = list.get(i);
                    if(i==0 || i%4==0){
				%> <div class="row">
           			
               <%} %>
              
               <div class="col-3 col-12-medium">
                  <div class="hotel" align="center">
					  <form action="/coc/reserveRoomInfo" method="post">
               <input type="hidden" name="ltitle" value="<%=p.getpName() %>">
                     <div type="button"  class="image featured">  <img class="max-small"
                          src="<%=p.getImage()%>" style="width:250px;"> 
                           </form>
                        <p>
                           <br> <b><%=p.getpName() %></b>
                        </p>
                      </div>
                        <!-- <p id="price">104,833원/1박</p> -->
               
                  </div>
                    
               </div>
            
               
            
            <% if(i%4 == 3){
               %>
              
               </div> 
                
            <%  } 
                  
                  }
               %>
         </div>
					
			<!-- <div id="rowDay1" class="row" style="inline:auto">
				<div class="count"  >
					<sup><button type="button" id="colPlus1" class="btn" style="font-size:20px" onclick="colPlus('1')">+</button></sup>
					<sup style="float:right"><button type="button" id="colMinus1" class="btn" style="font-size:20px" onclick="colMinus('1')">-</button></sup>
				</div> -->
					  	
				<!-- <div class="cir">
					<div id="circle1_1" class="circle" style="float:left;">
					 
					</div>
					
					<button type="button" id="rowPlus1" class="circle2" style="float:right" onclick="rowPlus('1')">+</button>
				</div>
			</div>
 			<script> -->
			
		  	<%-- var prv_id="1";
			var dth;
			var index1=1;
			var index2=1;
			var index3=1;
			var day=1;
			var tempstr=<%= for (Place p:list ){%>
			<%p.getImage();%>
		<%}%>
			function colPlus(id){
				if(prv_id){
					if(id==1){
						if(index1<6){  
							$("#circle1_"+index1).after('<div id="css-arrow1_'+index1+'" class="css-arrow" style="float:left; margin-top:60px"></div>   <div id="circle1_'+(index1+1)+'" class="circle" style="float:left;"> </div>');
							index1++;
						}else{
							alert('6개가 최대');
						}
					}else if(id==2){
						if(index2<6){
							$("#circle2_"+index2).after('<div id="css-arrow2_'+index2+'" class="css-arrow" style="float:left; margin-top:60px"></div>   <div id="circle2_'+(index2+1)+'" class="circle" style="float:left;"> </div>');
							index2++;
						}else{
							alert('6개가 최대');
						}
					}else if(id==3){
						if(index3<6){
							$("#circle3_"+index3).after('<div id="css-arrow3_'+index3+'" class="css-arrow" style="float:left; margin-top:60px"></div>   <div id="circle3_'+(index3+1)+'" class="circle" style="float:left;"> </div>');
							index3++;
						}else{
							alert('6개가 최대');
						}
					}
					prv_id=id;
				}
			};
			
			function colMinus(id){
				if(prv_id){
					if(id==1){
						if(index1>1){
							$("#css-arrow1_"+(index1-1)).detach(dth);
							$("#circle1_"+index1).detach(dth);
							index1--;
							}else{
								alert('1개가 최소');
							}
					}else if(id==2){
						if(index2>1){
							$("#css-arrow2_"+(index2-1)).detach(dth);
							$("#circle2_"+index2).detach(dth);
							index2--;
							}else{
								alert('1개가 최소');
							}
					}else if(id==3){
						if(index3>1){
							$("#css-arrow3_"+(index3-1)).detach(dth);
							$("#circle3_"+index3).detach(dth);
							index3--;
							}else{
								alert('1개가 최소');
							}
					}
					prv_id=id;
				}
			};
			
			function rowPlus(id){
				if(prv_id){
					if(id==1 && $("#rowDay2").length==0){
						day++;
						$("#rowDay1").after('<div id="rowDay2" class="row"> <div class="count"> <h1>2일차</h1> <sup><button type="button" id="colPlus2" class="btn" style="font-size:20px" onclick="colPlus('+2+')">+</button></sup> <sup style="float:right"><button type="button" id="colMinus2" class="btn" style="font-size:20px" onclick="colMinus('+2+')">-</button></sup> </div> <div class="cir"> <div id="circle2_'+index2+'" class="circle" style="float:left;"> </div>  <button type="button" id="rowMinus2" class="circle2" style="float:right" onclick="rowMinus('+2+')">-</button> <button type="button" id="rowPlus2" class="circle2" style="float:right" onclick="rowPlus('+2+')">+</button></div> </div>');
					}else if(id==1 && $("#rowDay2").length==1){
						alert('2일차는 이미 존재');
					}else if(id==2 && day==2 && $("#rowDay3").length==0){
						day++;
						$("#rowDay2").after('<div id="rowDay3" class="row"> <div class="count"> <h1>3일차</h1> <sup><button type="button" id="colPlus3" class="btn" style="font-size:20px" onclick="colPlus('+3+')">+</button></sup> <sup style="float:right"><button type="button" id="colMinus3" class="btn" style="font-size:20px" onclick="colMinus('+3+')">-</button></sup> </div> <div class="cir"> <div id="circle3_'+index3+'" class="circle" style="float:left;"> </div>  <button type="button" id="rowMinus3" class="circle2" style="float:right" onclick="rowMinus('+3+')">-</button> <button type="button" id="rowPlus3" class="circle2" style="float:right" onclick="rowPlus('+3+')">+</button></div> </div>');
					}else if(id==2 && $("#rowDay3").length==1){
						alert('3일차는 이미 존재');
					}else{
						alert('3일이 최대');
					}
					prv_id=id;
				}
			};
			
			function rowMinus(id){
				if(prv_id){
					if(id==2){
						$("#rowDay"+id).detach(dth);
						day--;
						index2=1;
					}else if(id==3){
						$("#rowDay"+id).detach(dth);
						day--;
						index3=1;
					}
					prv_id=id;
				}
			}  --%>
			 
 	<!--  $("tr#title td").click(function(){
 		 var str="";
 		 var tdArr =new Array();
 		 
 		 var tr=$(this);
		var td=tr.children();
		
		console.log("tr.text"+tr.text());
		
		td.each(function(i){
			tdArr.puch(td.eq(i).text());
			
		});
 		 
		 console.log(tdArr);
		 $(this).css("font-weight","bold");
/* 		var str=document.getElementsByTagName('td')[this].childNodes[0].nodeValue; -->
 */
 
 	<!--  }); -->
	 
	 </script> 
	 
	   <script type="text/javascript">
	   var id = $('#coc').val(); // 
	   var tmp = document.getElementsByName('coc').value; 
	   // var tmp = document.getElementById('exam').value; 
	   // form은 폼명 // vat tmp = document.form.exam[0].value; // tmp = $("#exam").get(0).value; 
	   // JQuery 방식 // tmp = $("#exam").val(); 
	   // 태그 내 value값 가져오기 </script> 
	   
	   
	   
			  <script type="text/javascript">
	 
			 var locations =   
				 
					  [
					 ['경희궁', 37.5788222356,126.9685079323, 28] ,
					 ['궁중문화축전 2019', 37.5788222356, 126.9769930325, 28] ,
					 ['까델루뽀', 37.5817995664,126.9713490183, 28] ,
					 ['서울앤호텔 동대문',37.5733125518, 127.0207891975, 28] 
			    ];  
			    var map = new google.maps.Map(document.getElementById('map'), {
			      zoom: 11,
			      center: new google.maps.LatLng(37.504788, 127.041312),
			      mapTypeId: google.maps.MapTypeId.ROADMAP
			    });
			    var infowindow = new google.maps.InfoWindow();
			    var marker, i;
			    for (i = 0; i < locations.length; i++) {  
			      marker = new google.maps.Marker({
			        position: new google.maps.LatLng(locations[i][1], locations[i][2],locations[i][3]),
			        map: map
 			         
			      });

			      google.maps.event.addListener(marker, 'click', (function(marker, i) {
			        return function() {
			          infowindow.setContent(locations[i][0]);
			          infowindow.open(map, marker);
			        
			        }
			      })(marker, i));
			    }
			</script>
	</div>
	<%@include file="/views/common/footerbar_customer.jsp"%>
	</div>
</body>
</html>

<%--  <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"  import="java.util.*, com.cw.coc.place.model.vo.*,com.cw.coc.course.model.vo.Place.PlaceCocVo"%>
	<%
    ArrayList<PlaceCocVo> PlacecocList=(ArrayList<PlaceCocVo>)request.getAttribute("PlacecocList");
 	 	ArrayList<CultureVoYM> ct = (ArrayList<CultureVoYM>)request.getAttribute("ct");
		ArrayList<LogmentVoYM> lm = (ArrayList<LogmentVoYM>)  request.getAttribute("lm");
		ArrayList<RestaurantVo> rt = (ArrayList<RestaurantVo>) request.getAttribute("rt");
		ArrayList<SeoulVoYM> sl = (ArrayList<SeoulVoYM>) request.getAttribute("sl"); 
 		System.out.println("ct"+ct);
 		System.out.println("ct"+rt);
		  
 	  
	  
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
.cocbtn{
background-color: #ffffff;
border:0;
outline:0;
}

</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
</head>

<body>
	<%@ include file="../common/menubar_customer.jsp"%>
 <div class="container">
			<div id="logo">
			<form action="<%= request.getContextPath() %>/plan" method="post">
             <fieldset class="field-container" style="border-radius:20px;">
             <input type="hidden" name="userNo" value="<%=loginUser.getUno() %>"/>
                         </fieldset>
             </form>
			</div>
  	<div class="container">
		<div class="row">
			 <div id="map" style="width:500px ;height:600px; inline:auto;" ></div>
				<h1 id="pm">
				</h1>
			  
			<div class="right-box">
  				 	<form id="search" method="get" action="search.hj">
				<select class="btn btn-default" name="searchkey" style="width:70px;">
					<option value="category" >목록▼</option>
				<option value="total">전체</option>
				<option value="culture">문화</option>
				<option value="logment">숙박</option>
				<option value="restaurant">식당</option>
				<option value="seoul">서울</option> 
				<option value="addr">주소</option> 
				</select> 
			   <input type="search" name= "searchvalue"  style="width:62%; height:35px;" placeholder='검색어를 입력하세요'>
				<button type="submit" class="btn btn-default" >검색하기</button>    
 </form> 
 
  		
 				<button id="btn1" class="tab_menu" onclick="location.href='<%=request.getContextPath() %>/PlanCulture'" style="width:17%;">문화</button>
					<button id="btn2" class="tab_menu"onclick="location.href='<%=request.getContextPath() %>/PlanLogment'"style="width:17%;">숙박</button>
				<button id="btn3" class="tab_menu"onclick="location.href='<%=request.getContextPath() %>/PlanRestuarant'" style="width:17%;">식당</button>
					<button id="btn4" class="tab_menu" onclick="location.href='<%=request.getContextPath() %>/PlanSeoul'" style="width:17%;">서울</button>
		   	<button id="btn1" class="tab_menu" onclick="Culture()" style="width:17%;">문화</button>
					<button id="btn2" class="tab_menu"onclick="PlanLogment()"style="width:17%;">숙박</button>
				<button id="btn3" class="tab_menu"onclick="PlanRestuarant()" style="width:17%;">식당</button>
					<button id="btn4" class="tab_menu" onclick="PlanSeoul()" style="width:17%;">서울</button> 
 				   <table border="1">
 				   
 				   <div class="tab_container">
 				   
 			<div id="Btn1" class="tab_content">
				<%for (CultureVoYM c : ct) {%>
<tr>
 			<th>	 <%=c.getCtitle()%> <br>
 				 <%=c.getCaddr()%> </th>  
</tr></div>
				<%} %>
			 <div id="Btn2" class="tab_content">
						<%for (LogmentVoYM l : lm) {%>
<tr>
 				 <th><%=l.getLtitle()%>   <br>
 				  <%=l.getLaddr()%> </th>
</tr></div>
				<%} %>
		<div id="Btn3" class="tab_content">
								<%for (RestaurantVo r : rt) {%>
<tr>
 				<th> <%=r.getRtitle()%>   <br>
 				 <%=r.getRaddr()%></th>
</tr></div>
				<%} %>
				
				<div id="Btn4" class="tab_content">
								<%for (SeoulVoYM s : sl) {%>
<tr>
 				<th> <%=s.getTitle()%>  <br>
 				 <%=s.getAddr1()%></th>
</tr></div>
				<%} %>
		
		
								
</table> 
								
								
								
								
						</section>
					</div>
				</div></div></div>
				
</div>
</div>
</div>
<script>



</script>
  

 
 
  
		<div class="bottom" id="bottom">
			<div class="h12">
				<h1>콕과 함께 당신의 여행을 콕 찍어 그려보세요</h1><br>
				<h2>첫 번째 목적지를 설정해볼까요?</h2><br><br><br>
			</div>
			
     <%for(int j=0; j<list1.size(); j++){%>
					 <div style="display:inline; float:left;"> 
    	 <b><%=list1.get(j).getpName()%></b> <br> <b><%=list1.get(j).getpAddress()%></b><br> <img src="<%=list1.get(j).getImage()%>" width="150px" height="200px" >
     		</div>
    <%}%>
		 	<div id="rowDay1" class="row">
				<div class="count">
					<h1>1일차</h1>
					<sup><button type="button" id="colPlus1" class="btn" style="font-size:20px" onclick="colPlus('1')">+</button></sup>
					<sup style="float:right"><button type="button" id="colMinus1" class="btn" style="font-size:20px" onclick="colMinus('1')">-</button></sup>
				</div>
				<div class="cir">
					<div id="circle1_1" class="circle" style="display:inline; float:left;">
     
     
					</div>
					
					<button type="button" id="rowPlus1" class="circle2" style="float:right" onclick="rowPlus('1')">+</button>
				</div>
			</div>
	 			
			<script>
			var prv_id="1";
			var dth;
			var index1=1;
			var index2=1;
			var index3=1;
			var day=1;
			function colPlus(id){
				if(prv_id){
					if(id==1){
						if(index1<6){
							$("#circle1_"+index1).after('<div id="css-arrow1_'+index1+'" class="css-arrow" style="float:left; margin-top:60px"></div>   <div id="circle1_'+(index1+1)+'" class="circle" style="float:left;"> </div>');
						
							
							index1++;
						}else{
							alert('6개가 최대');
						}
					}else if(id==2){
						if(index2<6){
							$("#circle2_"+index2).after('<div id="css-arrow2_'+index2+'" class="css-arrow" style="float:left; margin-top:60px"></div>   <div id="circle2_'+(index2+1)+'" class="circle" style="float:left;"> </div>');
							index2++;
						}else{
							alert('6개가 최대');
						}
					}else if(id==3){
						if(index3<6){
							$("#circle3_"+index3).after('<div id="css-arrow3_'+index3+'" class="css-arrow" style="float:left; margin-top:60px"></div>   <div id="circle3_'+(index3+1)+'" class="circle" style="float:left;"> </div>');
							index3++;
						}else{
							alert('6개가 최대');
						}
					}
					prv_id=id;
				}
			};
			
			function colMinus(id){
				if(prv_id){
					if(id==1){
						if(index1>1){
							$("#css-arrow1_"+(index1-1)).detach(dth);
							$("#circle1_"+index1).detach(dth);
							index1--;
							}else{
								alert('1개가 최소');
							}
					}else if(id==2){
						if(index2>1){
							$("#css-arrow2_"+(index2-1)).detach(dth);
							$("#circle2_"+index2).detach(dth);
							index2--;
							}else{
								alert('1개가 최소');
							}
					}else if(id==3){
						if(index3>1){
							$("#css-arrow3_"+(index3-1)).detach(dth);
							$("#circle3_"+index3).detach(dth);
							index3--;
							}else{
								alert('1개가 최소');
							}
					}
					prv_id=id;
				}
			};
			
			function rowPlus(id){
				if(prv_id){
					if(id==1 && $("#rowDay2").length==0){
						day++;
						$("#rowDay1").after('<div id="rowDay2" class="row"> <div class="count"> <h1>2일차</h1> <sup><button type="button" id="colPlus2" class="btn" style="font-size:20px" onclick="colPlus('+2+')">+</button></sup> <sup style="float:right"><button type="button" id="colMinus2" class="btn" style="font-size:20px" onclick="colMinus('+2+')">-</button></sup> </div> <div class="cir"> <div id="circle2_'+index2+'" class="circle" style="float:left;"> </div>  <button type="button" id="rowMinus2" class="circle2" style="float:right" onclick="rowMinus('+2+')">-</button> <button type="button" id="rowPlus2" class="circle2" style="float:right" onclick="rowPlus('+2+')">+</button></div> </div>');
					}else if(id==1 && $("#rowDay2").length==1){
						alert('2일차는 이미 존재');
					}else if(id==2 && day==2 && $("#rowDay3").length==0){
						day++;
						$("#rowDay2").after('<div id="rowDay3" class="row"> <div class="count"> <h1>3일차</h1> <sup><button type="button" id="colPlus3" class="btn" style="font-size:20px" onclick="colPlus('+3+')">+</button></sup> <sup style="float:right"><button type="button" id="colMinus3" class="btn" style="font-size:20px" onclick="colMinus('+3+')">-</button></sup> </div> <div class="cir"> <div id="circle3_'+index3+'" class="circle" style="float:left;"> </div>  <button type="button" id="rowMinus3" class="circle2" style="float:right" onclick="rowMinus('+3+')">-</button> <button type="button" id="rowPlus3" class="circle2" style="float:right" onclick="rowPlus('+3+')">+</button></div> </div>');
					}else if(id==2 && $("#rowDay3").length==1){
						alert('3일차는 이미 존재');
					}else{
						alert('3일이 최대');
					}
					prv_id=id;
				}
			};
			
			function rowMinus(id){
				if(prv_id){
					if(id==2){
						$("#rowDay"+id).detach(dth);
						day--;
						index2=1;
					}else if(id==3){
						$("#rowDay"+id).detach(dth);
						day--;
						index3=1;
					}
					prv_id=id;
				}
			}
			 
 
	 </script>    
	 <script>
	$(document).ready(function(){
		
		if("#btn1")click(function(){
			$(Btn1).show();
			$(Btn2).hide();
			$(Btn3).hide();
			$(Btn4).hide();
		});
		if("#btn2")click(function(){
			$(Btn1).hide();
			$(Btn2).show();
			$(Btn3).hide();
			$(Btn4).hide();
		});
		if("#btn3")click(function(){
			$(Btn1).hide();
			$(Btn2).hide();
			$(Btn3).show();
			$(Btn4).hide();
		});
		if("#btn4")click(function(){
			$(Btn1).hide();
			$(Btn2).hide();
			$(Btn3).hide();
			$(Btn4).show();
		});
		
		
	});
	
 
	</Script>
	 <!--   <script type="text/javascript">
	   var id = $('#coc').val(); // 
	   var tmp = document.getElementsByName('coc').value; 
	   // var tmp = document.getElementById('exam').value; 
	   // form은 폼명 // vat tmp = document.form.exam[0].value; // tmp = $("#exam").get(0).value; 
	   // JQuery 방식 // tmp = $("#exam").val(); 
	   // 태그 내 value값 가져오기 </script> 
	   
	   
	    -->
			  <!-- <script type="text/javascript">
	 
			 var locations =   
				 
					  [
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
			</script> -->
			
			 
	 	  <script type="text/javascript">
      var locations = [
    <%for(int j=0; j<list.size(); j++){%>
    	['<%=list.get(j).getpName()%>', <%=list.get(j).getMapx()%>, <%=list.get(j).getMapy()%>, 28]
    	<%if(j < list.size() - 1){%>
    		,
    <%}}%>
     
    ];  

      /* ['국립축산과학원 축산자원개발부', 36.93309333, 127.10487485, 28] */
    var map = new google.maps.Map(document.getElementById('map'), {
      zoom: 11,
      center: new google.maps.LatLng(37.528582,126.981987),
      mapTypeId: google.maps.MapTypeId.ROADMAP
    });

    var infowindow = new google.maps.InfoWindow();

    var marker, i;

    for (i = 0; i < locations.length; i++) {  
      marker = new google.maps.Marker({
        position: new google.maps.LatLng(locations[i][1], locations[i][2]),
        map: map
      });

      google.maps.event.addListener(marker, 'click', (function(marker, i) {
        return function() {
          infowindow.setContent(locations[i][0]);
          infowindow.open(map, marker);
        }
      })(marker, i));
    }
  </script>
			
	</div>
	<%@include file="/views/common/footerbar_customer.jsp"%>
	</div>
</body>
</html>   --%>