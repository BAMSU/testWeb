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
<input type="hidden" name="hallidx" value="${idx}">
<input type="hidden" name="cnt" value="${cnt}">
	<c:if test="${empty list}">
		<h3>등록한 룸이 없습니다.</h3>
	</c:if>
	<c:if test="${cnt<2}">
		<input type="button" value="룸 추가하기" onclick="javascript:location.href='insertRoom.we?idx=${idx}'"> <br>
	</c:if>
	
	
	
	<c:forEach var="dto" items="${list}">
		
	<c:url var="contentUrl" value="updateRoom.we"><c:param name="idx">${dto.idx}</c:param></c:url>
		<a href="${contentUrl}">${dto.name}</a> <br>
		
	<c:url var="contentUrl2" value="deleteRoom.we"><c:param name="idx">${dto.idx}</c:param></c:url>
		<a href="${contentUrl2}">삭제</a> <br>
	</c:forEach>
</body>
</html>