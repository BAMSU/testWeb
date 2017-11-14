<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name = "fm" action="insertMeal.we" method="POST">
음식 종류 : <input type="text" name="meal" placeholder="뷔페"> <br>
음식 가격 : <input type="text" name="price" placeholder="50,000원"> <br>
음식 설명 : <input type="text" name="content" placeholder="고가의 뷔페"> <br>
<input type="hidden" name="idx" value="${idx}">
<input type="submit" value="식사등록하기">
</form>
</body>
</html>