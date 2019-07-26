<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, com.cw.coc.board.model.vo.*"%>
<%
	ArrayList<Board> list = (ArrayList<Board>) request.getAttribute("list");
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
	font-size:13px;
}
table{
		border:1px solid black !important;
		text-align:center;
	}
.tableArea{
	width:100%;
	height:20%;
	margin:0 auto;
}
table th{
	text-align:center !important;
}
.infoArea{
	width:100%;
	border-radius:50px !important;

}
.infoArea{
	width:100%;
	border-radius:50px !important;
	border:1px solid black !important;
}
tr, td, th{
	border:1px solid black !important;
	padding-top:0;
}
.checks {
   position: relative;
}

.checks input[type="checkbox"] {
   position: absolute;
   width: 1px;
   height: 1px;
   padding: 0;
   margin: -1px;
   overflow: hidden;
   clip: rect(0, 0, 0, 0);
   border: 0
}

.checks input[type="checkbox"]+label:before { /* 가짜 체크박스 */
   content: ' ';
   display: inline-block;
   width: 21px; /* 체크박스의 너비를 지정 */
   height: 21px; /* 체크박스의 높이를 지정 */
   line-height: 21px; /* 세로정렬을 위해 높이값과 일치 */
   margin: -2px 8px 0 0;
   text-align: center;
   vertical-align: middle;
   background: #fafafa;
   border: 1px solid #cacece;
   border-radius: 3px;
   box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.05), inset 0px -15px 10px -12px
      rgba(0, 0, 0, 0.05);
}

.checks input[type="checkbox"]:checked+label:before { /* 체크박스를 체크했을때 */
   content: '\2714'; /* 체크표시 유니코드 사용 */
   color: #99a1a7;
   text-shadow: 1px 1px #fff;
   background: #e9ecee;
   border-color: #adb8c0;
   box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.05), inset 0px -15px 10px -12px
      rgba(0, 0, 0, 0.05), inset 15px 10px -12px rgba(255, 255, 255, 0.1);
}
div>a{
	text-decoration:none;
	color:black !important;
}
</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body class="is-preload homepage">
	<div id="page-wrapper">

		<!-- Header -->
		<%@ include file="/views/common/menubar_customer.jsp" %>
		<!-- CONTENTS -->
		<div class="container">
				
		<div>
			<table align="center" class="infoArea">
			<tbody>
				<tr>
					<td rowspan="4" style="vertical-align: middle">		
                    <img id="imgThumb" src="https://static.nid.naver.com/images/web/user/default.png?type=s160" width="40%" height="40%">
                    <br><br>
                    <button style="background:darkgray">편집</button>
					</td>
					<td><label>아이디 </label></td>
					<td><%=loginUser.getUserId()  %></td>
				</tr>
				<tr>
					<td><label>성별</label></td>
					<td><% if(loginUser.getGender().equals("M") || loginUser.getGender().equals("남자")){
					    loginUser.setGender("남자");	
					}else{
						loginUser.setGender("여자");
					} %>
					<%= loginUser.getGender() %></td>
					
				</tr>
				<tr>
					<td><label>이메일</label></td>
					<td><%=loginUser.getEmail() %></td>
				</tr>
				<tr>
					<td><label>비밀번호</label></td>
					<td><input type="password" name="password" id="password">&nbsp;&nbsp;
					<button style="background:darkgray" id="testbtn"><p>비밀번호변경하기</p></button>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: middle"><label>설문조사</label>
					<br><br>
					<button typee="submit" style="background:darkgray">저장하기</button>
					</td>
					<td colspan="2">
					<form action="" method="get">
            <label class="checkbox-inline"><b>분위기 </b> </label><br>
            <br>


            <div class="checks">
               <input type="checkbox" id="ex_chk1" value="option1" name="checkbox">
               <label for="ex_chk1" class="checkbox-inline">회식</label> 
               <input type="checkbox" id="ex_chk2" value="option2" name="checkbox">
               <label for="ex_chk2" class="checkbox-inline">데이트 </label> 
               <input type="checkbox" id="ex_chk3" value="option3" name="checkbox">
               <label for="ex_chk3" class="checkbox-inline">연말모임 </label> 
               <input type="checkbox" id="ex_chk4" value="option4" name="checkbox">
               <label for="ex_chk4" class="checkbox-inline">분위기 좋은 맛집 </label> 
               <input type="checkbox" id="ex_chk5" value="option5" name="checkbox">
               <label for="ex_chk5" class="checkbox-inline">비오는날 맛집 </label> 
               <input type="checkbox" id="ex_chk6" value="option6" name="checkbox">
               <label for="ex_chk6" class="checkbox-inline">고급스러운 맛집</label>
               <br><br>
               <input type="checkbox" id="ex_chk7" value="option7" name="checkbox">
               <label for="ex_chk7" class="checkbox-inline">세련된 맛집</label>
               <input type="checkbox" id="ex_chk8" value="option8" name="checkbox">
               <label for="ex_chk8" class="checkbox-inline">송년회</label>
               <input type="checkbox" id="ex_chk9" value="option9" name="checkbox">
               <label for="ex_chk9" class="checkbox-inline">몸보신</label>
               <input type="checkbox" id="ex_chk10" value="option10" name="checkbox">
               <label for="ex_chk10" class="checkbox-inline">소개팅</label>
               <input type="checkbox" id="ex_chk11" value="option11" name="checkbox">
               <label for="ex_chk11" class="checkbox-inline">기념일</label>
               <input type="checkbox" id="ex_chk12" value="option12" name="checkbox">
               <label for="ex_chk12" class="checkbox-inline">가족모임</label>
               <br><br>
               <input type="checkbox" id="ex_chk13" value="option13" name="checkbox">
               <label for="ex_chk13" class="checkbox-inline">조용한 분위기</label>
               <input type="checkbox" id="ex_chk14" value="option14" name="checkbox">
               <label for="ex_chk14" class="checkbox-inline">젊고 캐쥬얼한</label>
               <input type="checkbox" id="ex_chk15" value="option15" name="checkbox">
               <label for="ex_chk15" class="checkbox-inline">아이와 함께</label>
               <input type="checkbox" id="ex_chk16" value="option16" name="checkbox">
               <label for="ex_chk16" class="checkbox-inline">모임하기 좋은</label>
               <input type="checkbox" id="ex_chk17" value="option17" name="checkbox">
               <label for="ex_chk17" class="checkbox-inline">특별한 날</label>
            </div>
            <!-- </div>
  -->
            <br>
            <br> <label class="checkbox-inline"><b>연령</b> </label><br>
            <br>
            <div class="checks">
               <input type="checkbox" id="inlineCheckbox1" value="option1" name="checkbox">
               <label for="inlineCheckbox1" class="checkbox-inline">10대 </label> 
               <input type="checkbox" id="inlineCheckbox2" value="option2" name="checkbox">
               <label for="inlineCheckbox2" class="checkbox-inline">20대 </label> 
               <input type="checkbox" id="inlineCheckbox3" value="option3" name="checkbox">
               <label for="inlineCheckbox3" class="checkbox-inline">30대 </label> 
               <input type="checkbox" id="inlineCheckbox4" value="option4" name="checkbox">
               <label for="inlineCheckbox4" class="checkbox-inline">40대</label> 
               <input type="checkbox" id="inlineCheckbox5" value="option5" name="checkbox">
               <label for="inlineCheckbox5" class="checkbox-inline">50대</label> 
               <input type="checkbox" id="inlineCheckbox6" value="option6" name="checkbox">
               <label for="inlineCheckbox6" class="checkbox-inline">60대~</label> 
                  
            </div>
            
            <br>
            <br> <label class="checkbox-inline"><b>위치</b> </label><br>
            <br>
            <div class="checks">
               <input type="checkbox" id="seoulCheckbox1" value="option1" name="checkbox">
               <label for="seoulCheckbox1" class="checkbox-inline">도봉구</label> 
               <input type="checkbox" id="seoulCheckbox2" value="option2" name="checkbox">
               <label for="seoulCheckbox2" class="checkbox-inline">노원구 </label> 
               <input type="checkbox" id="seoulCheckbox3" value="option3" name="checkbox">
               <label for="seoulCheckbox3" class="checkbox-inline">강북구 </label> 
               <input type="checkbox" id="seoulCheckbox4" value="option4" name="checkbox">
               <label for="seoulCheckbox4" class="checkbox-inline">성북구 </label> 
               <input type="checkbox" id="seoulCheckbox5" value="option5" name="checkbox">
               <label for="seoulCheckbox5" class="checkbox-inline">중랑구</label> 
               <input type="checkbox" id="seoulCheckbox6" value="option6" name="checkbox">
               <label for="seoulCheckbox6" class="checkbox-inline">서대문구</label>
               <br><br>
               <input type="checkbox" id="seoulCheckbox7" value="option7" name="checkbox">
               <label for="seoulCheckbox7" class="checkbox-inline">종로구</label>
               <input type="checkbox" id="seoulCheckbox8" value="option8" name="checkbox">
               <label for="seoulCheckbox8" class="checkbox-inline">온평구</label>
               <input type="checkbox" id="seoulCheckbox9" value="option9" name="checkbox">
               <label for="seoulCheckbox9" class="checkbox-inline">서대문구</label>
               <input type="checkbox" id="seoulCheckbox10" value="option10" name="checkbox">
               <label for="seoulCheckbox10" class="checkbox-inline">동대문구</label>
               <input type="checkbox" id="seoulCheckbox11" value="option11" name="checkbox">
               <label for="seoulCheckbox11" class="checkbox-inline">중구</label>
               <input type="checkbox" id="seoulCheckbox12" value="option12" name="checkbox">
               <label for="seoulCheckbox12" class="checkbox-inline">성동구</label>
               <br><br>
               <input type="checkbox" id="seoulCheckbox13" value="option13" name="checkbox">
               <label for="seoulCheckbox13" class="checkbox-inline">광진구</label>
               <input type="checkbox" id="seoulCheckbox14" value="option14" name="checkbox">
               <label for="seoulCheckbox14" class="checkbox-inline">마포구</label>
               <input type="checkbox" id="seoulCheckbox15" value="option15" name="checkbox">
               <label for="seoulCheckbox15" class="checkbox-inline">용산구</label>
               <input type="checkbox" id="seoulCheckbox16" value="option16" name="checkbox">
               <label for="seoulCheckbox16" class="checkbox-inline">강동구</label>
               <input type="checkbox" id="seoulCheckbox17" value="option17" name="checkbox">
               <label for="seoulCheckbox17" class="checkbox-inline">송파구</label>
               <br><br>
               <input type="checkbox" id="seoulCheckbox18" value="option18" name="checkbox">
               <label for="seoulCheckbox18" class="checkbox-inline">강남구</label>
               <input type="checkbox" id="seoulCheckbox19" value="option19" name="checkbox">
               <label for="seoulCheckbox19" class="checkbox-inline">서초구</label>
               <input type="checkbox" id="seoulCheckbox20" value="option20" name="checkbox">
               <label for="seoulCheckbox20" class="checkbox-inline">동작구</label>
               <input type="checkbox" id="seoulCheckbox21" value="option21" name="checkbox">
               <label for="seoulCheckbox21" class="checkbox-inline">관약구</label>
               <input type="checkbox" id="seoulCheckbox22" value="option22" name="checkbox">
               <label for="seoulCheckbox22" class="checkbox-inline">영등포구</label>
               <br><br>
               <input type="checkbox" id="seoulCheckbox23" value="option23" name="checkbox">
               <label for="seoulCheckbox23" class="checkbox-inline">금천구</label>
               <input type="checkbox" id="seoulCheckbox24" value="option24" name="checkbox">
               <label for="seoulCheckbox24" class="checkbox-inline">구로구</label>
               <input type="checkbox" id="seoulCheckbox25" value="option25" name="checkbox">
               <label for="seoulCheckbox25" class="checkbox-inline">양천구</label>
               <input type="checkbox" id="seoulCheckbox26" value="option26" name="checkbox">
               <label for="seoulCheckbox26" class="checkbox-inline">강서구</label>
               
            </div>
					
					</td>
				</tr>
				</tbody>
			</table>
		</div>
		<br><br><br>
			</div>

		<!-- 공지사항 -->
			<div class="container">
			<!-- <a  href="/coc/views/board/noticeList.jsp"> -->
				<a onclick="goNotice();">
				<div class="row">
				<h3 class="col-8 col-12-medium" style='text-align: left ; margin-top:1%;'>공지사항</h3>
				<h2 class="col-4 col-12-medium" style='text-align: right; margin-top:1%;'>></h2>
				</div>
				</a>
				<hr style="border:1px solid darkgray">
				<br>
		<div class="tableArea">
			<table align="center" id="listArea">
				<tr>
					<th width="100px">글번호</th>
					<th width="100px">카테고리</th>
					<th width="100px">글제목</th>
					<th width="100px">작성자</th>
					<th width="100px">조회수</th>
					<th width="100px">작성일</th>
				</tr>
				<tr>
					<td>ㅁㅁ</td>
					<td>ㄴㄴ</td>
					<td>ㅇㅇ</td>
					<td>ㄹㄹ</td>
					<td>ㄷㄷ</td>
					<td>ㅋㅋ</td>
				</tr>
				<tr>
					<td>ㅁㅁ</td>
					<td>ㄴㄴ</td>
					<td>ㅇㅇ</td>
					<td>ㄹㄹ</td>
					<td>ㄷㄷ</td>
					<td>ㅋㅋ</td>
				</tr>
			</table>
		</div>
		<br><br><br>
			</div>
			<script>
				function goNotice(){
					location.href="/coc/selectList.no"
				}
			
			</script>

			<!-- Wrapper for slides -->
			

				


		<!-- Features1 -->
			<div class="container" >
			<!-- <a onclick="goReview();"> -->
 				<a  href="/coc/views/board/reviewList.jsp">
				<div class="row">
				<h3 class="col-8 col-12-medium" style='text-align: left ; margin-top:1%;'>나의리뷰</h3>
				<h2 class="col-4 col-12-medium" style='text-align: right; margin-top:1%;'>></h2>
				</div>
				</a>
				<hr style="border:1px solid darkgray">
				<br>
		<div class="tableArea">
			<table align="center" id="listArea">
				<tr>
					<th width="100px">글번호</th>
					<th width="100px">업체이름</th>
					<th width="100px">글내용</th>
					<th width="100px">작성날짜</th>
					<th width="100px">작성자</th>
					<th width="100px">??</th>
				</tr>
				<tr>
					<td>ㅁㅁ</td>
					<td>ㄴㄴ</td>
					<td>ㅇㅇ</td>
					<td>ㄹㄹ</td>
					<td>ㄷㄷ</td>
					<td>ㅋㅋ</td>
				</tr>
				<tr>
					<td>ㅁㅁ</td>
					<td>ㄴㄴ</td>
					<td>ㅇㅇ</td>
					<td>ㄹㄹ</td>
					<td>ㄷㄷ</td>
					<td>ㅋㅋ</td>
				</tr>
			</table>
		</div>
		<br><br><br>
			</div>
			<script>
				function goReview(){
					location.href="/coc/selectList.rv"
				}
			</script>
			
			<div class="container" >
				<a  href="/coc/views/member/usingHistory.jsp">
				<div class="row">
				<h3 class="col-8 col-12-medium" style='text-align: left ; margin-top:1%;'>이용내역</h3>
				<h2 class="col-4 col-12-medium" style='text-align: right; margin-top:1%;'>></h2>
				</div>
				</a>
				<hr style="border:1px solid darkgray">
				<br>
		<div class="tableArea">
			<table align="center" id="listArea">
				<tr>
					<th width="100px">예약번호</th>
					<th width="100px">방이름</th>
					<th width="100px">회원번호</th>
					<th width="100px">예약한날짜</th>
					<th width="100px">예약한상품날짜</th>
					<th width="100px">??</th>
				</tr>
				<tr>
					<td>ㅁㅁ</td>
					<td>ㄴㄴ</td>
					<td>ㅇㅇ</td>
					<td>ㄹㄹ</td>
					<td>ㄷㄷ</td>
					<td>ㅋㅋ</td>
				</tr>
				<tr>
					<td>ㅁㅁ</td>
					<td>ㄴㄴ</td>
					<td>ㅇㅇ</td>
					<td>ㄹㄹ</td>
					<td>ㄷㄷ</td>
					<td>ㅋㅋ</td>
				</tr>
			</table>
		</div>
		<br><br><br>
			</div>
			

			<!-- Wrapper for slides -->

				<div class="container" >
				<a  href="/coc/views/member/myCoc.jsp">
				<div class="row">
				<h3 class="col-8 col-12-medium" style='text-align: left ; margin-top:1%;'>나의콕</h3>
				<h2 class="col-4 col-12-medium" style='text-align: right; margin-top:1%;'>></h2>
				</div>
				</a>
				<hr style="border:1px solid darkgray">
				<br>
				<div class="item">
					<div id="features-wrapper">
						<div class="container">

							<div class="row">
								<div class="col-4 col-12-medium">
									<!-- Box -->
									<section class="box feature">
										<a href="#" class="image featured"><img
											src="../../images/pic01.jpg" alt="" /></a>
										<div class="inner"></div>
									</section>

								</div>
								<div class="col-4 col-12-medium">

									<!-- Box -->
									<section class="box feature">
										<a href="#" class="image featured"><img
											src="../../images/pic02.jpg" alt="" /></a>
										<div class="inner"></div>
									</section>

								</div>
								<div class="col-4 col-12-medium">

									<!-- Box -->
									<section class="box feature">
										<a href="#" class="image featured"><img
											src="../../images/pic03.jpg" alt="" /></a>
										<div class="inner"></div>
									</section>

								</div>
							</div>
						</div>
					</div>

				</div>


		<!-- Footer -->
		<br><br><br>
	</div>
	
		<%@include file="/views/common/footerbar_customer.jsp" %>
</div>
<script>

	//비밀번호 변경
	$("#testbtn").click(function(){
		
		var value = $("#password").val();
		var check='<%=loginUser.getUserPwd()%>';
		
		if(  check==value ){
			location.href='/coc/views/member/changeUserPwd.jsp';
		}else{
			alert("비밀번호를 확인하세요");
		}
	});
	// 취향
	$(function(){
		$("input[name=checkbox]").each(function(){
			var arr = '<%= loginUser.getSurvey() %>'.split(",");
			
			console.log(arr);
			for(var i=0;i<arr.length;i++){
				if($(this).val() == arr[i]){
					$(this).attr("checked", true);
				}
			}
		});
	});
</script>

</body>
</html>