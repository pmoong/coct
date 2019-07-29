<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
.outer {
		width:1000px;
		height:650px;
		background:#ffffed;
		border:1px solid black;
		
		color:black;
		margin-left:auto;
		margin-right:auto;
 	}
	table {
		border:1px solid black;
	}
	.insertArea {
		width:800px;
		height:450px;
		margin:0 auto;
	}
	.btnArea {
		width:200px;
		margin:0 auto;
	} 
	#titleImg{
		width:450px;
		height:300px;
 		text-align:center;
		display:table-cell;
		margin:0 auto;
	}
  	#cententImg  {
		width:450px;
		height:300px;
 		text-align:center;
		display:table-cell;
		margin:0 auto;
	}   
	#titleImg:hover,#cententImg:hover  {
		cursor:pointer;
	}

</style>
</head>
<body>
	<%@ include file="/views/common/menubar_partner.jsp"%>
	<div class="outer">
	<h2 align="center">이용정보 작성</h2>
  	<form action="<%=request.getContextPath()%>/hotel.im" method="post" encType="multipart/form-data">
  		
  		<div class=intertArea">
 <table align="center">
		<!-- <tr> 	
			<td>호텔 소개 이미지</td>
			<td colspan="3">
				<div id="titleImg">
					<img id =tImg  width="90%" height="90%">
				</div>
				  <div id="cententImg">
		  <img id ="cImg" width="90%" height="90%">
		  </div>
			</td></tr>  -->
		  
		 <tr>
			<td width="100px">이용 정보 내용</td>
			<td colspan="3"> 
			<textarea name="centent" rows="10" cols="120" ></textarea>
			</td>
		</tr></table>
		</div>

	<div id ="imgAreafile">
		<input type="file" id="img1" name="img1" onchange="loadimg(this,1)">
		<input type="file" id="img2" name="img2" onchange="loadimg(this,2)">
	</div>	
	<div class="btnArea">
		<button type="reset" class="btn btn-default"onclick="location.href='/coc/views/partner/store.jsp'">취소하기</button> &nbsp;
		<button type="submit" class="btn btn-default">완료</button>
	</div>
	</form>
	</div>
	<script>
		$(function(){
			$("#imgAreafile").hide();
			$("#titleImg").click(function(){
				$("#img1").click();
			});

			$("#cententImg").click(function(){
				$("#img2").click();
			});
		});
	function loadimg(value,num){
		if(value.files && value.files[0]){
			var reader =new FileReader();
			reader.onload =function(e){
				
				 switch(num){
				case 1:$("#tImg").attr("src",e.target.result);break;
				case 2:$("#cImg").attr("src",e.target.result);break;
/* 				case 3:$("#cententImg").attr("src",e.target.result);break;
 */					}
			}
			reader.readAsDataURL(value.files[0]);
		}				
	}
	</script>
</body>
</html>

 