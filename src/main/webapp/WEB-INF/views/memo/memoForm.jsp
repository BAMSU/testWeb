<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>메모 작성</h1>
<form name="memoWrite" action="memoWrite.do" method="post">
번호:<input type="text" name="idx"><br>
제목:<input type="text" name="title"><br>
내용:<br>
<textarea rows="10" cols="35" name="content"></textarea><br>
<input type="submit" value="메모작성">
</form>
</body>
</html>