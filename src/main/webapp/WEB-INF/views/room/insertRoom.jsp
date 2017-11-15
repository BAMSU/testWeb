<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="fm" action="insertRoom.we" method="POST">
<input type="text" name="name">
<input type="text" name="weekDay">
<input type="text" name="type">

<input type="text" name="guest">
<input type="text" name="interval">
<input type="text" name="menu">

<input type="text" name="menuPrice">
<input type="text" name="hallIdx" value="${idx}">

<input type="submit" value="등록하기">
<input type="button" onclick="javascript:location.href='roomList.we?idx=${idx}'" value="뒤로가기">

</form>
</body>
</html>