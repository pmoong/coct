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
<link rel="stylesheet" href="../assets/css/main.css" />
<style>
body {
   background: white;
}

#test {
   background: white !important;
   color: black !important;
}

#userId, #userName, #userEmail{
   font-size:13px;
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
      <%@ include file="../common/menubar_customer.jsp" %>

      <div class="container" align="center">
         <form class="form-horizontal">
            <div class="form-group">
               <label for="userId" class="col-sm-5 control-label">아이디</label>
               <div class="col-sm-3">
                  <input type="text" class="form-control" id="userId" onkeyup="idCheck()">
               </div>
            </div>
            <div class="form-group">
               <label for="email" class="col-sm-5 control-label">이메일</label>
               <div class="col-sm-3">
                  <input type="email" class="form-control" id="email" onkeyup="emailCheck()">
               </div>
            </div>
         </form>
               <div class="form-group">
               <div class="col-sm-offset-1 col-sm-10">
                  <button onclick="check();" class="btn btn-default">임시 비밀번호 발송</button>
                  <button class="btn btn-default" onclick="gologin();">취소</button>
                  </div>
               </div>
            </div>
            <br>
            
            </div>
      </div>
		<script>
			function gologin(){
				location.href="/coc/views/member/login.jsp";
			}
			function check(){
				var userId = $("#userId").val();
				var email = $("#email").val();
				var result1 = false;
				var result2 = false;
				
				$.ajax({
					url:"/coc/idCheck.me",
					type:"post",
					data:{userId:userId},
					success:function(data){
						if(data === "fail"){
							result1 = true;
						}else {
							result1 = false;
						}
						
					},
					error:function(){
						console.log("실패!");
					}
				});
				
				$.ajax({
					url:"/coc/emailCheck.me",
					type:"post",
					data:{email:email},
					success:function(data){
						//console.log(data);
						
						if(data === "fail"){
							result2 = true;
						}else {
							result2 = false;
						}
						
					},
					error:function(){
						console.log("실패!");
					}
				
			}
			if(result1 == true && result2 == true){
				alert("발송되었습니다");
			}
		</script>
      <!-- Footer -->
      <%@include file="/views/common/footerbar_customer.jsp" %>

   </div>

</body>
</html>