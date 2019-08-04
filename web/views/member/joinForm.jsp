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

.form-group {
   width: 70%;
   padding-left: 30%;
}

#test {
   background: white !important;
   color: black !important;
}
#radio {
   position: relative;
  
}

#radio input[type="radio"] {
   position: absolute;
   width: 1px;
   height: 1px;
   padding: 0;
   margin: -1px;
   overflow: hidden;
   clip: rect(0, 0, 0, 0);
   border: 0
}

#radio input[type="radio"]+label:before { /* 가짜 체크박스 */
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

#radio input[type="radio"]:checked+label:before { /* 체크박스를 체크했을때 */
   content: '\2714'; /* 체크표시 유니코드 사용 */
   color: #99a1a7;
   text-shadow: 1px 1px #fff;
   background: #e9ecee;
   border-color: #adb8c0;
   box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.05), inset 0px -15px 10px -12px
      rgba(0, 0, 0, 0.05), inset 15px 10px -12px rgba(255, 255, 255, 0.1);
}
   #idCheck, #eCheck {
      background:white;
      border-radius:5px;
      width:30%;
      text-align:center;
      border:1px solid lightgray;
   }
   #idCheck:hover, #eCheck:hover {
      cursor:pointer;
      background:lightgray;
      border:1px solid gray;
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
      <%@ include file="../common/menubar_customer.jsp"%>
      <br><!--  onsubmit="return formsbmit();" -->
      <form action="<%=request.getContextPath() %>/insertMember.me" onsubmit="return check_form();" method="post">
      <div class="container">
         <div class="form-group">
            <label for="userId">* 아이디</label>
            <%
            if(request.getAttribute("userId") != null) 
            {
            %>   
            
             <%-- <input type="text" class="form-control" id="userId" placeholder="아이디를 입력해 주세요" name="userId" onkeyup="idCheck()"value="<%=request.getParameter("userId")%>"> --%>
             <input type="text" class="form-control" id="userId" placeholder="아이디를 입력해 주세요" name="userId" onkeyup="idCheck()" value="<%=request.getAttribute("userId")%>">
             <%
            }else{
             %>
             <input type="text" class="form-control" id="userId" placeholder="아이디를 입력해 주세요" name="userId" onkeyup="idCheck()">
             <%} %>
            <br><label id="checkId"></label>
         </div>
         <div class="form-group">
            <label for="email">* 이메일</label>
            <%
              if(request.getAttribute("email") != null) 
            {
            %>   
            <div style="float:left;">
            <input type="email" id="email" placeholder="이메일 주소를 입력해주세요" name="email" value="<%=request.getAttribute("email")%>" onkeyup="email1()">
            </div>
          <%
            }else {
          %>     
          <div style="float:left;">
            <input type="email" id="email" placeholder="이메일 주소를 입력해주세요" name="email" onkeyup="email()">
            </div>
          <%
            }
          %>      
            <div type="submit" id="eCheck" style="float:left; margin-left:10%; margin-top:1%; padding:1%" onclick="email();">인증 받기</div><br><br><br>
            <div><label>* 인증 번호</label>
            <div style="float:left;">
            <input type="text" id="check_code" placeholder="**********" onkeyup="emailCheck()"></div>
            </div>
            <div style="float:left; width:10%;">
            <input type="hidden" readonly="readonly" name="code_check" id="code_check" value="<%= request.getAttribute("auth")%>">
            </div>
            <br><br><br><label id="checkCode"></label>
         </div>
         <div class="form-group">
            <label for="userPwd">* 비밀번호</label> 
            <input type="password" class="form-control" id="userPwd" 
            placeholder="5 ~ 8자리 사이로 입력해주세요" name="userPwd" maxlength="8">
         </div>
         <div class="form-group">
            <label for="userPwd2">* 비밀번호 확인</label> 
            <input type="password" class="form-control" id="userPwd2"
            placeholder="비밀번호 확인을 위해 다시 한 번 입력 해 주세요" name="userPwd2" onkeyup="checkPwd()">
            &nbsp;<label id="checkPwd"></label>
         </div>
         <div class="form-group">
            <label for="age">* 나이</label> <input type="number"
               class="form-control" id="age" placeholder="나이를 입력해 주세요" name="age">
         </div><br>
         <div class="form-group" id="radio">
            <label for="gender">* 성별</label> 
            <input type="radio" name="gender" value="M" id="male"> 
            <label for="male">남</label>
            <input type="radio" name="gender" value="F" id="female"> 
            <label for="female">여</label>
         </div>
         <br>
         <div class="form-group">
            <button class="btn btn-default" type="submit">
               <a>&emsp;&emsp;&emsp;다음&emsp;&emsp;&emsp; </a>
            </button>
            <button type="reset" class="btn btn-default" onclick="location.href='/coc/index.jsp'">&emsp;&emsp;취소하기&emsp;&emsp;</button>
         </div>
         </form>
      </div>
      <br> <br>
      <hr>
      <script>

      $(function(){
          $("form").submit(function(){
            if($.trim($("#userId").val()) == ""){
               alert("아이디 입력하세요");
               $("#userId").focus();
               return false;
            }
            
            if($.trim($("#email").val()) == ""){
               alert("이메일 입력하세요");
               $("#email").focus();
               return false;
            }
            if($.trim($("#check_code").val()) == ""){
               alert("인증번호 입력하세요");
               $("#check_code").focus();
               return false;
            }
            
            if($.trim($("#userPwd").val()) == "" 
                  && $.trim($("#userPwd2").val()) == ""){
               $("#userPwd").focus();
               return false;
            }
            
            if($.trim($("#age").val()) == ""){
               $("#age").focus();
               return false;
            }
            return true;
         }); 
      });
        function goMain(){
         location.href="<%=request.getContextPath()%>/index.jsp";
      }       
      function insertMember(){
         $("form").submit();
         location.href="joinInterest.jsp";
      }
      function idCheck(){
         var userId = $("#userId").val();
           var ch = userId.charAt(0);
         
         
         $.ajax({
            url:"/coc/idCheck.me",
            type:"post",
            data:{userId:userId},
            success:function(data){
               
               if(data === "fail"){
                  
                  document.getElementById('checkId').style.color = "red";
                  document.getElementById('checkId').innerHTML = "중복된 아이디입니다"; 
                  
               }else {
                     if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z')&&!(ch >= 'A' && ch <= 'Z')) {
                         //alert("아이디는 영문 대소문자, 숫자만 입력가능합니다.");
                         document.getElementById('checkId').style.color = "red";
                     document.getElementById('checkId').innerHTML = "아이디는 영문 대소문자, 숫자만 입력가능합니다."; 
                         document.f.id.focus();
                         document.f.id.select();
                     }else {
                        
                  document.getElementById('checkId').style.color = "gray";
                  document.getElementById('checkId').innerHTML = "사용가능한 아이디입니다";
                     }
               }
               
            },
            error:function(){
               console.log("실패!");
            }
         });
      }
      function emailCheck(){
         //인증번호 검사
         var f1 = document.forms[0];
         var v1 = f1.check_code.value;
         var v2 = f1.code_check.value;
         
         if(v1 != v2) {
            document.getElementById('checkCode').style.color = "red";
            document.getElementById('checkCode').innerHTML = "잘못된 인증번호입니다";
         }else{
            document.getElementById('checkCode').style.color = "gray";
            document.getElementById('checkCode').innerHTML = "인증되었습니다";
         }
         
      }
      function checkPwd(){
         var f1 = document.forms[0];
         var pw1 = f1.userPwd.value;
         var pw2 = f1.userPwd2.value;
         
         if(pw1.length > 5){
            if(pw1!=pw2){
               document.getElementById('checkPwd').style.color = "red";
               document.getElementById('checkPwd').innerHTML = "비밀번호가 일치하지 않습니다"; 
            }else{
               document.getElementById('checkPwd').style.color = "gray";
               document.getElementById('checkPwd').innerHTML = "비밀번호가 일치합니다";    
            }     
         }
      }

	
     	function goMain(){
			location.href="<%=request.getContextPath()%>/index.jsp";
		}   	 
		function insertMember(){
			$("form").submit();
			location.href="joinInterest.jsp";
		}
		function idCheck(){
			var userId = $("#userId").val();
	        var ch = userId.charAt(0);
			
			
			$.ajax({
				url:"/coc/idCheck.me",
				type:"post",
				data:{userId:userId},
				success:function(data){
					
					if(data === "fail"){
						
						document.getElementById('checkId').style.color = "red";
						document.getElementById('checkId').innerHTML = "중복된 아이디입니다"; 
						
					}else {
			            if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z')&&!(ch >= 'A' && ch <= 'Z')) {
			                //alert("아이디는 영문 대소문자, 숫자만 입력가능합니다.");
			                document.getElementById('checkId').style.color = "red";
							document.getElementById('checkId').innerHTML = "아이디는 영문 대소문자, 숫자만 입력가능합니다."; 
			                document.f.id.focus();
			                document.f.id.select();
			            }else {
			            	
						document.getElementById('checkId').style.color = "gray";
						document.getElementById('checkId').innerHTML = "사용가능한 아이디입니다";
			            }
					}
					
				},
				error:function(){
					console.log("실패!");
				}
			});
		}
		function emailCheck(){
			//인증번호 검사
			var f1 = document.forms[0];
			var v1 = f1.check_code.value;
			var v2 = f1.code_check.value;
			
			if(v1 != v2) {
				document.getElementById('checkCode').style.color = "red";
				document.getElementById('checkCode').innerHTML = "잘못된 인증번호입니다";
			}else{
				document.getElementById('checkCode').style.color = "gray";
				document.getElementById('checkCode').innerHTML = "인증되었습니다";
			}
			
		}
		function checkPwd(){
			var f1 = document.forms[0];
			var pw1 = f1.userPwd.value;
			var pw2 = f1.userPwd2.value;
			
			if(pw1.length > 5){
				if(pw1!=pw2){
				   document.getElementById('checkPwd').style.color = "red";
				   document.getElementById('checkPwd').innerHTML = "비밀번호가 일치하지 않습니다"; 
				}else{
				   document.getElementById('checkPwd').style.color = "gray";
				   document.getElementById('checkPwd').innerHTML = "비밀번호가 일치합니다";    
				}	  
			}
		}

      function email1(){
         //var email = $('#email').val();
         var regExp = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;;
         if(!regExp.test(email)){
            document.getElementById('checkCode').style.color = "red";
            document.getElementById('checkCode').innerHTML = "잘못된 형식입니다.";
         }
      }
       function email(){
         var userId = $('#userId').val();
         var email = $('#email').val();
         /* location.href="http://127.0.0.1:8001/coc/mailCheck?userId="+userId+"&email="+email; */ 
           var form = document.createElement("form");
      
            form.setAttribute("charset", "UTF-8");
      
            form.setAttribute("method", "Post");  //Post 방식
      
            form.setAttribute("action", "http://127.0.0.1:8001/coc/mailCheck"); //요청 보낼 주소
      
            var hiddenField = document.createElement("input");
      
            hiddenField.setAttribute("type", "hidden");
      
            hiddenField.setAttribute("name", "userId");
      
            hiddenField.setAttribute("value", userId);
      
            form.appendChild(hiddenField);
      
            hiddenField = document.createElement("input");
      
            hiddenField.setAttribute("type", "hidden");
      
            hiddenField.setAttribute("name", "email");
      
            hiddenField.setAttribute("value", email);
      
            form.appendChild(hiddenField);
      
            document.body.appendChild(form);
      
            form.submit(); 
         
      } 

      </script>
      

      <!-- Footer -->
      <%@include file="/views/common/footerbar_customer.jsp"%>

   </div>


</body>
</html>