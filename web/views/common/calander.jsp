<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<script>
    $(function() {
        $("#datepicker1, #datepicker2").datepicker({
            dateFormat: 'yy.mm.dd'
        });
    });

</script>
</head>
<body>
<p>조회기간:
    <input type="text" id="datepicker1"> ~
    <input type="text" id="datepicker2">
</p>

</body>
</html>