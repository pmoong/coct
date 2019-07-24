<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <input type="email" id="email" style="width:300px;">
    </div>
    <div>
    	<label for="userId">ID</label>
    	<input type="text" id="userId">
    </div>
    <div>
        <label for="title">제목</label>
        <input type="text" id="title" />
    </div>
    <div>
        <label for="msg">문의 내용</label>
        <textarea id="msg"></textarea>
    </div>
    
    <div class="button" style="background:darkgray">
        <button type="submit" id="btn1" style="background:darkgray">보내기</button>
    </div>
</form>
</body>
</html>