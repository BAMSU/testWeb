<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>웨딩홀 룸 리스트</h3>
<input type="text" name="hallidx" value="${idx}">
<input type="text" name="cnt" value="${cnt}">
	<c:if test="${empty list}">
		<h3>등록한 룸이 없습니다.</h3>
		<input type="button" value="룸 추가하기" onclick="javascript:location.href='insertRoom.we?idx=${idx}'">
	</c:if>
	<c:forEach var="dto" items="${list}">
		${dto.name} <br>
	</c:forEach>
</body>
</html>