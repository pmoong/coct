
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, com.cw.coc.board.model.vo.*, com.cw.coc.member.model.vo.*"%>
<%
	
	//ArrayList<Object> list = (ArrayList<Object>) request.getAttribute("list");
	String icode = (String) request.getAttribute("icode");
	
	ArrayList<Board> bo = (ArrayList<Board>) request.getAttribute("bo");
	ArrayList<Board> rv = (ArrayList<Board>) request.getAttribute("rv");
	//Payment pm1 = (Payment) request.getAttribute("pm1");
	//Payment pm2 = (Payment) request.getAttribute("pm2");
	
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

table {
	border: 1px solid black !important;
	text-align: center;
}

.tableArea {
	width: 100%;
	height: 20%;
	margin: 0 auto;
}

table th {
	text-align: center !important;
}

.infoArea {
	width: 100%;
	border-radius: 50px !important;
}

.infoArea {
	width: 100%;
	border-radius: 50px !important;
	border: 1px solid black !important;
}

tr, td, th {
	border: 1px solid black !important;
	padding-top: 0;
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

div>a {
	text-decoration: none;
	color: black !important;
}
</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body class="is-preload homepage">
	<div id="page-wrapper">

		<!-- Header -->
		<%@ include file="/views/common/menubar_customer.jsp"%>
		<!-- CONTENTS -->
		<div class="container">

			<div>
				<table align="center" class="infoArea">
					<tbody>
						<tr>
						<%-- <form action="<%=request.getContextPath()%>/insert.tn"" method="post" encType="multipart/form-data"></form> --%>
							<td rowspan="4" style="vertical-align: middle"><img
								id="imgThumb"
								src="https://static.nid.naver.com/images/web/user/default.png?type=s160"
								width="40%" height="40%"> <br>
							<br>
								<button style="background: darkgray">편집</button></td>
							<td><label id="id">아이디 </label></td>
							<td><%=loginUser.getUserId()  %></td>
						</tr>
						<tr>
							<td><label>성별</label></td>
							<td>
								<% if(loginUser.getGender().equals("M") || loginUser.getGender().equals("남자")){
					    loginUser.setGender("남자");	
					}else{
						loginUser.setGender("여자");
					} %> <%= loginUser.getGender() %></td>

						</tr>
						<tr>
							<td><label>이메일</label></td>
							<td><%=loginUser.getEmail() %></td>
						</tr>
						<tr>
							<td><label>비밀번호</label></td>
							<td><input type="password" name="userPwd" id="userPwd">&nbsp;&nbsp;
								<button style="background: darkgray" id="testbtn" onclick="pwdCheck();">
									<p>비밀번호변경하기</p>
								</button></td>
						</tr>
						<tr>
							<td style="vertical-align: middle"><label>설문조사</label>
								<form action="/coc/updateSurvey" method="post">
									<br>
									<br>
									<button typee="button" id="saveSurvey" style="background: darkgray">저장하기</button>
									<input type="hidden" name="uno" value="<%=loginUser.getUno() %>">
									<input type="hidden" name="id" value="<%=loginUser.getUserId() %>">
									<input type="hidden" name="userPwd" value="<%=loginUser.getUserPwd() %>">
									<input type="hidden" name="email" value="<%=loginUser.getEmail() %>">
									<input type="hidden" name="utype" value="<%=loginUser.getuType() %>">
									<input type="hidden" name="gender" value="<%=loginUser.getGender() %>">
									<input type="hidden" name="age" value="<%=loginUser.getAge() %>">
									<input type="hidden" name="icode" value="<%=loginUser.getiCode() %>">
									<input type="hidden" name="status" value="<%=loginUser.getStatus() %>">
							</td>
							<td colspan="2"><label class="checkbox-inline"><b>분위기
								</b> </label><br> <br>


								<div class="checks">
									<input type="checkbox" id="ex_chk1" value="1" name="checkbox">
									<label for="ex_chk1" class="checkbox-inline">회식</label> <input
										type="checkbox" id="ex_chk2" value="2" name="checkbox">
									<label for="ex_chk2" class="checkbox-inline">데이트 </label> <input
										type="checkbox" id="ex_chk3" value="3" name="checkbox">
									<label for="ex_chk3" class="checkbox-inline">연말모임 </label> <input
										type="checkbox" id="ex_chk4" value="4" name="checkbox">
									<label for="ex_chk4" class="checkbox-inline">분위기 좋은 맛집
									</label> <input type="checkbox" id="ex_chk5" value="5" name="checkbox">
									<label for="ex_chk5" class="checkbox-inline">비오는날 맛집 </label> <input
										type="checkbox" id="ex_chk6" value="6" name="checkbox">
									<label for="ex_chk6" class="checkbox-inline">고급스러운 맛집</label> <br>
									<br> <input type="checkbox" id="ex_chk7" value="7"
										name="checkbox"> <label for="ex_chk7"
										class="checkbox-inline">세련된 맛집</label> <input type="checkbox"
										id="ex_chk8" value="8" name="checkbox"> <label
										for="ex_chk8" class="checkbox-inline">송년회</label> <input
										type="checkbox" id="ex_chk9" value="9" name="checkbox">
									<label for="ex_chk9" class="checkbox-inline">몸보신</label> <input
										type="checkbox" id="ex_chk10" value="10" name="checkbox">
									<label for="ex_chk10" class="checkbox-inline">소개팅</label> <input
										type="checkbox" id="ex_chk11" value="11" name="checkbox">
									<label for="ex_chk11" class="checkbox-inline">기념일</label> <input
										type="checkbox" id="ex_chk12" value="12" name="checkbox">
									<label for="ex_chk12" class="checkbox-inline">가족모임</label> <br>
									<br> <input type="checkbox" id="ex_chk13" value="13"
										name="checkbox"> <label for="ex_chk13"
										class="checkbox-inline">조용한 분위기</label> <input type="checkbox"
										id="ex_chk14" value="14" name="checkbox"> <label
										for="ex_chk14" class="checkbox-inline">젊고 캐쥬얼한</label> <input
										type="checkbox" id="ex_chk15" value="15" name="checkbox">
									<label for="ex_chk15" class="checkbox-inline">아이와 함께</label> <input
										type="checkbox" id="ex_chk16" value="16" name="checkbox">
									<label for="ex_chk16" class="checkbox-inline">모임하기 좋은</label> <input
										type="checkbox" id="ex_chk17" value="17" name="checkbox">
									<label for="ex_chk17" class="checkbox-inline">특별한 날</label>
								</div> <!-- </div>
  --> <br> <br> <label class="checkbox-inline"><b>연령</b>
							</label><br> <br>
								<div class="checks">
									<input type="checkbox" id="inlineCheckbox1" value="18"
										name="checkbox"> <label for="inlineCheckbox1"
										class="checkbox-inline">10대 </label> <input type="checkbox"
										id="inlineCheckbox2" value="19" name="checkbox"> <label
										for="inlineCheckbox2" class="checkbox-inline">20대 </label> <input
										type="checkbox" id="inlineCheckbox3" value="20"
										name="checkbox"> <label for="inlineCheckbox3"
										class="checkbox-inline">30대 </label> <input type="checkbox"
										id="inlineCheckbox4" value="21" name="checkbox"> <label
										for="inlineCheckbox4" class="checkbox-inline">40대</label> <input
										type="checkbox" id="inlineCheckbox5" value="22"
										name="checkbox"> <label for="inlineCheckbox5"
										class="checkbox-inline">50대</label> <input type="checkbox"
										id="inlineCheckbox6" value="23" name="checkbox"> <label
										for="inlineCheckbox6" class="checkbox-inline">60대~</label>

								</div> <br> <br> <label class="checkbox-inline"><b>위치</b>
							</label><br> <br>
								<div class="checks">
									<input type="checkbox" id="seoulCheckbox1" value="24"
										name="checkbox"> <label for="seoulCheckbox1"
										class="checkbox-inline">도봉구</label> <input type="checkbox"
										id="seoulCheckbox2" value="25" name="checkbox"> <label
										for="seoulCheckbox2" class="checkbox-inline">노원구 </label> <input
										type="checkbox" id="seoulCheckbox3" value="26" name="checkbox">
									<label for="seoulCheckbox3" class="checkbox-inline">강북구
									</label> <input type="checkbox" id="seoulCheckbox4" value="27"
										name="checkbox"> <label for="seoulCheckbox4"
										class="checkbox-inline">성북구 </label> <input type="checkbox"
										id="seoulCheckbox5" value="28" name="checkbox"> <label
										for="seoulCheckbox5" class="checkbox-inline">중랑구</label> <input
										type="checkbox" id="seoulCheckbox6" value="29" name="checkbox">
									<label for="seoulCheckbox6" class="checkbox-inline">서대문구</label>
									<br>
									<br> <input type="checkbox" id="seoulCheckbox7" value="30"
										name="checkbox"> <label for="seoulCheckbox7"
										class="checkbox-inline">종로구</label> <input type="checkbox"
										id="seoulCheckbox8" value="31" name="checkbox"> <label
										for="seoulCheckbox8" class="checkbox-inline">온평구</label> <input
										type="checkbox" id="seoulCheckbox9" value="32" name="checkbox">
									<label for="seoulCheckbox9" class="checkbox-inline">서대문구</label>
									<input type="checkbox" id="seoulCheckbox10" value="33"
										name="checkbox"> <label for="seoulCheckbox10"
										class="checkbox-inline">동대문구</label> <input type="checkbox"
										id="seoulCheckbox11" value="34" name="checkbox"> <label
										for="seoulCheckbox11" class="checkbox-inline">중구</label> <input
										type="checkbox" id="seoulCheckbox12" value="35"
										name="checkbox"> <label for="seoulCheckbox12"
										class="checkbox-inline">성동구</label> <br>
									<br> <input type="checkbox" id="seoulCheckbox13"
										value="36" name="checkbox"> <label
										for="seoulCheckbox13" class="checkbox-inline">광진구</label> <input
										type="checkbox" id="seoulCheckbox14" value="37"
										name="checkbox"> <label for="seoulCheckbox14"
										class="checkbox-inline">마포구</label> <input type="checkbox"
										id="seoulCheckbox15" value="38" name="checkbox"> <label
										for="seoulCheckbox15" class="checkbox-inline">용산구</label> <input
										type="checkbox" id="seoulCheckbox16" value="39"
										name="checkbox"> <label for="seoulCheckbox16"
										class="checkbox-inline">강동구</label> <input type="checkbox"
										id="seoulCheckbox17" value="40" name="checkbox"> <label
										for="seoulCheckbox17" class="checkbox-inline">송파구</label> <br>
									<br> <input type="checkbox" id="seoulCheckbox18"
										value="41" name="checkbox"> <label
										for="seoulCheckbox18" class="checkbox-inline">강남구</label> <input
										type="checkbox" id="seoulCheckbox19" value="42"
										name="checkbox"> <label for="seoulCheckbox19"
										class="checkbox-inline">서초구</label> <input type="checkbox"
										id="seoulCheckbox20" value="43" name="checkbox"> <label
										for="seoulCheckbox20" class="checkbox-inline">동작구</label> <input
										type="checkbox" id="seoulCheckbox21" value="44"
										name="checkbox"> <label for="seoulCheckbox21"
										class="checkbox-inline">관약구</label> <input type="checkbox"
										id="seoulCheckbox22" value="45" name="checkbox"> <label
										for="seoulCheckbox22" class="checkbox-inline">영등포구</label> <br>
									<br> <input type="checkbox" id="seoulCheckbox23"
										value="46" name="checkbox"> <label
										for="seoulCheckbox23" class="checkbox-inline">금천구</label> <input
										type="checkbox" id="seoulCheckbox24" value="47"
										name="checkbox"> <label for="seoulCheckbox24"
										class="checkbox-inline">구로구</label> <input type="checkbox"
										id="seoulCheckbox25" value="48" name="checkbox"> <label
										for="seoulCheckbox25" class="checkbox-inline">양천구</label> <input
										type="checkbox" id="seoulCheckbox26" value="49"
										name="checkbox"> <label for="seoulCheckbox26"
										class="checkbox-inline">강서구</label>

								</div></td>
							</form>
						</tr>
					</tbody>
				</table>
			</div>
			<br>
			<br>
			<br>
		</div>

		<!-- 공지사항 -->
		<div class="container">
			<a  onclick="goNotice();">
			
				<div class="row">
					<h3 class="col-8 col-12-medium"
						style='text-align: left; margin-top: 1%;'>공지사항</h3>
					<h2 class="col-4 col-12-medium"
						style='text-align: right; margin-top: 1%;'></h2>
				</div>
			</a>
			<hr style="border: 1px solid darkgray">
			<br>
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
							for (Board b : bo) {
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
				</table>
			</div>
			<br>
			<br>
			<br>
		</div>
		<script>
				function goNotice(){
					location.href="/coc/selectNoticeList.no"
				}
			</script>

		<!-- Wrapper for slides -->





		<!-- Features1 -->
		<div class="container">
			<a onclick="goReview();">
			<!-- <a href="/coc/views/board/reviewList.jsp"> -->
				<div class="row">
					<h3 class="col-8 col-12-medium"
						style='text-align: left; margin-top: 1%;'>나의리뷰</h3>
					<h2 class="col-4 col-12-medium"
						style='text-align: right; margin-top: 1%;'>></h2>
				</div>
			</a>
			<hr style="border: 1px solid darkgray">
			<br>
			<div class="tableArea">
				<table align="center" id="listArea">
					<tr>
						<th width="70px">업체이름</th>
						<th width="100px">제목</th>
						<th width="300px">내용</th>
						<th width="100px">작성자</th>
						<th width="50px">조회수</th>
						<th width="120px">작성일</th>
					</tr>
					 <%
							for (Board r : rv) {
						%>
						<tr>
							<input type="hidden" value="<%=r.getbCode()%>">
							<td><%=r.getbCode()%></td>
							<td><%=r.getbTitle()%></td>
							<td><%=r.getbContent()%></td>
							<td><%= r.getbWriter() %></td>
							<td><span><%=r.getCount()%></span></td>
							<td><%=r.getbDate()%></td>
						</tr>
						<%
							}
						%> 
					
				</table>
			</div>
			<br>
			<br>
			<br>
		</div>
		<script>
				function goReview(){
					location.href="/coc/selectList.rv"
				}
			</script>

		<div class="container">
			<a href="/coc/views/member/usingHistory.jsp">
				<div class="row">
					<h3 class="col-8 col-12-medium"
						style='text-align: left; margin-top: 1%;'>이용내역</h3>
					<h2 class="col-4 col-12-medium"
						style='text-align: right; margin-top: 1%;'>></h2>
				</div>
			</a>
			<hr style="border: 1px solid darkgray">
			<br>
			<div class="tableArea">
				<table align="center" id="listArea">
					<tr>
						<th width="100px">예약번호</th>
						<th width="100px">업체이름</th>
						<th width="100px">방이름</th>
						<th width="100px">회원ID</th>
						<th width="100px">예약한상품날짜</th>
						<th width="100px">진행상황</th>
						<th width="100px">가격</th>
					</tr>
					<tr>
						<td></td>
						<td></td>
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
			<br>
			<br>
			<br>
		</div>


		<!-- Wrapper for slides -->

		<div class="container">
			<a onclick="myCoc();">
			<!-- <a href="/coc/views/member/myCoc.jsp"> -->
				<div class="row">
					<h3 class="col-8 col-12-medium"
						style='text-align: left; margin-top: 1%;'>나의콕</h3>
					<h2 class="col-4 col-12-medium"
						style='text-align: right; margin-top: 1%;'>></h2>
				</div>
			</a>
			<hr style="border: 1px solid darkgray">
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
			<br>
			<br>
			<br>
		</div>

		<%@include file="/views/common/footerbar_customer.jsp"%>
	</div>
	<script>
	//비밀번호 변경
		function pwdCheck(){
			var userPwd = $("#userPwd").val();
			console.log(userPwd);
			var check='<%=loginUser.getUserPwd()%>';
			
			$.ajax({
				url:"/coc/mypagePwd.me",
				type:"post",
				data:{userPwd:userPwd},
				success:function(data){
					console.log(userPwd);
					var pw = data;
					console.log(pw);
					
					if(check == pw){
						location.href='/coc/views/member/changeUserPwd.jsp';
					}else{
						alert("비밀번호를 확인하세요");
					}
				},
				error:function(){
					console.log("실패!");
				}
			});
		
		}	
	// 취향
	$(function(){
		$("input[name=checkbox]").each(function(){
			var arr = '<%= loginUser.getiCode() %>'.split(",");
			
			for(var i=0;i<arr.length;i++){
				if($(this).val()== arr[i]){
					$(this).attr("checked", true);
				}
			}
		});
	});
	
	// 콕
	function myCoc(){
		location.href="/coc/myCoc"
	}
	 

	
</script>

</body>

</html>