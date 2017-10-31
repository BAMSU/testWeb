<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>@RequestMapping방식</h2>
<form name="fileUpload1" action="fileUpload1.do" method="post" enctype="multipart/form-data">
작성자:<input type="text" name="writer"><br>
파일:<input type="file" name="upload"><br>
<input type="submit" value="파일올리기">
</form>
<hr>
<h2>MultipartRequest방식</h2>
<form name="fileUpload2" action="fileUpload2.do" method="post" enctype="multipart/form-data">
작성자:<input type="text" name="writer"><br>
파일:<input type="file" name="upload"><br>
<input type="submit" value="파일올리기">
</form>
<hr>
<h2>DTO방식</h2>
<form name="fileUpload3" action="fileUpload3.do" method="post" enctype="multipart/form-data">
작성자:<input type="text" name="writer"><br>
파일:<input type="file" name="upload"><br>
<input type="submit" value="파일올리기">
</form>
<hr>
<h2>다중 업로드</h2>
<form name="fileUpload4" action="fileUpload4.do" method="post" enctype="multipart/form-data">
작성자:<input type="text" name="writer"><br>
파일1:<input type="file" name="upload"><br>
파일2:<input type="file" name="upload"><br>
파일3:<input type="file" name="upload"><br>
<input type="submit" value="파일올리기">
</form>
</body>
</html>