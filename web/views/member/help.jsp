<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.cw.coc.mail.model.vo.*, com.cw.coc.member.model.vo.Member" %>
<%
	Member loginUser = (Member)session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/coc/sendmail.qa" method="post">
	<br>
    <div>
        <label for="email">E-mail</label>
        <input type="email" name="email" id="email" style="width:300px;" value="<%=loginUser.getEmail()%>" readonly>
    </div>
    <div>
    	<label for="userId">ID</label>
    	<input type="text" name="userId" id="userId" value="<%=loginUser.getUserId() %>" readonly>
    </div>
    <div>
        <label for="title">제목</label>
        <input type="text" name="title" id="title" />
    </div>
    <div>
        <label for="msg">문의 내용</label>
        <textarea id="msg" name="msg"></textarea>
    </div>
    
    <div class="button" style="background:darkgray">
        <button type="submit" id="btn1" style="background:darkgray">보내기</button>
    </div>
    
</form>
    <!-- <script>
    	$("#btn1").click(function(){
    		location.href="/coc/sendmail.qa";
    		
    		/* var aa = $("#email").val();
    		var bb = $("#userId").val();
    		var cc = $("#title").val();
    		var dd = $("#msg").val();
    		console.log("test");
    		
    		console.log(aa+", "+bb+", "+cc+","+dd);
    		
    		var se = new SendEmail();
    		se.sendMail(aa,cc,dd); */
    
    	});
    </script> -->
</body>
</html>