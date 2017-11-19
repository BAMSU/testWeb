<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Love is staying</title>
<link rel="stylesheet" href="https://bootswatch.com/4/journal/bootstrap.css"/>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>

#map {
 height: 400px;
 width: 100%;
}
a {
	cursor: pointer;
}

#scrap{
	color: pink;
	font-size: 20px;
}

.hif th{
	color: gray;
}
table th{
	padding: 3px;
}
table td{
	padding: 3px;
}
table tfoot td{
	text-align: center;
}
#rvp{
	margin: 0px auto;
}
.thd{
	background-color: #e74742; 
	color: #fff;
}
</style>
</head>
<body>
<%@include file="/adminheader.jsp"%>


<div style="margin: 0px auto; width: 60%; background-color: white;">
		<div>
			<h3 align="center">웨딩홀 사진 목록 / 사진은 하나하나 개별 업로드입니다.</h3>
			  	<table class="table table-striped table-hover table-bordered">
			  		<tbody>
			  		
			  		<tr><td><img src="/finalproject/img/hall/${idx}/r1.jpg" height="200px" width="200px">
<form name="fileUpload1" action="fileUpload1.we" method="post" enctype="multipart/form-data">
룸1-1 : <input type="file" name="upload"/><br>
<input type="submit" value="파일올리기"/>
<input type="hidden" value="${idx}" name="idx">	
<input type="hidden" value="/r1.jpg" name="what">	
</form> </td>
<td>
<img src="/finalproject/img/hall/${idx}/r2.jpg" height="200px" width="200px">
<form name="fileUpload1" action="fileUpload1.we" method="post" enctype="multipart/form-data">
룸1-2 : <input type="file" name="upload"/><br>
<input type="submit" value="파일올리기"/>
<input type="hidden" value="${idx}" name="idx">	
<input type="hidden" value="/r2.jpg" name="what">	
</form>
</td>

<td>
<img src="/finalproject/img/hall/${idx}/r3.jpg" height="200px" width="200px">
<form name="fileUpload1" action="fileUpload1.we" method="post" enctype="multipart/form-data">
룸1-3 : <input type="file" name="upload"/><br>
<input type="submit" value="파일올리기"/>
<input type="hidden" value="${idx}" name="idx">	
<input type="hidden" value="/r3.jpg" name="what">	
</form>
</td>
</tr>

<tr>
<td>
<img src="/finalproject/img/hall/${idx}/r4.jpg" height="200px" width="200px">
<form name="fileUpload1" action="fileUpload1.we" method="post" enctype="multipart/form-data">
룸1-4 : <input type="file" name="upload"/><br>
<input type="submit" value="파일올리기"/>
<input type="hidden" value="${idx}" name="idx">	
<input type="hidden" value="/r4.jpg" name="what">	
</form>
</td>
<td>
<img src="/finalproject/img/hall/${idx}/r5.jpg" height="200px" width="200px">
<form name="fileUpload1" action="fileUpload1.we" method="post" enctype="multipart/form-data">
룸1-5 : <input type="file" name="upload"/><br>
<input type="submit" value="파일올리기"/>
<input type="hidden" value="${idx}" name="idx">	
<input type="hidden" value="/r5.jpg" name="what">	
</form>
</td>
<td>
<img src="/finalproject/img/hall/${idx}/r6.jpg" height="200px" width="200px">
<form name="fileUpload1" action="fileUpload1.we" method="post" enctype="multipart/form-data">
룸1-6 : <input type="file" name="upload"/><br>
<input type="submit" value="파일올리기"/>
<input type="hidden" value="${idx}" name="idx">	
<input type="hidden" value="/r6.jpg" name="what">	
</form>
</td>
</tr>

<tr>
<td>
<img src="/finalproject/img/hall/${idx}/p1.jpg" height="200px" width="200px">
<form name="fileUpload1" action="fileUpload1.we" method="post" enctype="multipart/form-data">
폐백실 : <input type="file" name="upload"/><br>
<input type="submit" value="파일올리기"/>
<input type="hidden" value="${idx}" name="idx">	
<input type="hidden" value="/p1.jpg" name="what">	
</form>
</td>
<td>
<img src="/finalproject/img/hall/${idx}/w1.jpg" height="200px" width="200px">
<form name="fileUpload1" action="fileUpload1.we" method="post" enctype="multipart/form-data">
신부대기실 : <input type="file" name="upload"/><br>
<input type="submit" value="파일올리기"/>
<input type="hidden" value="${idx}" name="idx">	
<input type="hidden" value="/w1.jpg" name="what">	
</form>
</td>
<td>

</td>
</tr>


			  		
			  		
			  		</tbody>
			  	</table>
			  </div>
	
	</div>
<%@include file="/footer.jsp"%>
</body>
</html>