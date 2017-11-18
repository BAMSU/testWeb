<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="/adminheader.jsp"%>
<h2>웨딩홀 사진</h2>
<img src="/finalproject/img/hall/${idx}/r1.jpg" height="200px" width="200px">
<form name="fileUpload1" action="fileUpload1.we" method="post" enctype="multipart/form-data">
룸1-1 : <input type="file" name="upload"/><br>
<input type="submit" value="파일올리기"/>
<input type="hidden" value="${idx}" name="idx">	
<input type="hidden" value="/r1.jpg" name="what">	
</form>
<hr>
<img src="/finalproject/img/hall/${idx}/r2.jpg" height="200px" width="200px">
<form name="fileUpload1" action="fileUpload1.we" method="post" enctype="multipart/form-data">
룸1-2 : <input type="file" name="upload"/><br>
<input type="submit" value="파일올리기"/>
<input type="hidden" value="${idx}" name="idx">	
<input type="hidden" value="/r2.jpg" name="what">	
</form>
<hr>
<img src="/finalproject/img/hall/${idx}/r3.jpg" height="200px" width="200px">
<form name="fileUpload1" action="fileUpload1.we" method="post" enctype="multipart/form-data">
룸1-3 : <input type="file" name="upload"/><br>
<input type="submit" value="파일올리기"/>
<input type="hidden" value="${idx}" name="idx">	
<input type="hidden" value="/r3.jpg" name="what">	
</form>
<hr>
<img src="/finalproject/img/hall/${idx}/r4.jpg" height="200px" width="200px">
<form name="fileUpload1" action="fileUpload1.we" method="post" enctype="multipart/form-data">
룸1-4 : <input type="file" name="upload"/><br>
<input type="submit" value="파일올리기"/>
<input type="hidden" value="${idx}" name="idx">	
<input type="hidden" value="/r4.jpg" name="what">	
</form>
<hr>
<img src="/finalproject/img/hall/${idx}/r5.jpg" height="200px" width="200px">
<form name="fileUpload1" action="fileUpload1.we" method="post" enctype="multipart/form-data">
룸1-5 : <input type="file" name="upload"/><br>
<input type="submit" value="파일올리기"/>
<input type="hidden" value="${idx}" name="idx">	
<input type="hidden" value="/r5.jpg" name="what">	
</form>
<hr>
<img src="/finalproject/img/hall/${idx}/r6.jpg" height="200px" width="200px">
<form name="fileUpload1" action="fileUpload1.we" method="post" enctype="multipart/form-data">
룸1-6 : <input type="file" name="upload"/><br>
<input type="submit" value="파일올리기"/>
<input type="hidden" value="${idx}" name="idx">	
<input type="hidden" value="/r6.jpg" name="what">	
</form>
<hr>
<img src="/finalproject/img/hall/${idx}/p1.jpg" height="200px" width="200px">
<form name="fileUpload1" action="fileUpload1.we" method="post" enctype="multipart/form-data">
폐백실 : <input type="file" name="upload"/><br>
<input type="submit" value="파일올리기"/>
<input type="hidden" value="${idx}" name="idx">	
<input type="hidden" value="/p1.jpg" name="what">	
</form>
<hr>
<img src="/finalproject/img/hall/${idx}/w1.jpg" height="200px" width="200px">
<form name="fileUpload1" action="fileUpload1.we" method="post" enctype="multipart/form-data">
신부대기실 : <input type="file" name="upload"/><br>
<input type="submit" value="파일올리기"/>
<input type="hidden" value="${idx}" name="idx">	
<input type="hidden" value="/w1.jpg" name="what">	
</form>
<hr>

</body>
</html>