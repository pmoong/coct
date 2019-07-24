<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.cw.coc.mail.model.vo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/my-handling-form-page" method="post">
	<br>
    <div>
        <label for="email">E-mail</label>
        <input type="email" name="email" id="email" style="width:300px;">
    </div>
    <div>
    	<label for="userId">ID</label>
    	<input type="text" name="userId" id="userId">
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
        <button type="button" id="btn1" style="background:darkgray">보내기</button>
    </div>
    
    <script>
    	$("#btn1").click(function(){
    		location.href="/coc/sendmail.qa"
    		
    		/* var aa = $("#email").val();
    		var bb = $("#userId").val();
    		var cc = $("#title").val();
    		var dd = $("#msg").val();
    		console.log("test");
    		
    		console.log(aa+", "+bb+", "+cc+","+dd);
    		
    		var se = new SendEmail();
    		se.sendMail(aa,cc,dd); */
    
    	});
    </script>
</form>
</body>
</html>