<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>웨딩홀 상세정보</h3>


	<c:if test="${empty list}">
	<input type="hidden" name="idx" value="${idx}">
		<c:url var="contentUrl4" value="insertMeal.we"><c:param name="idx">${idx}</c:param></c:url>
		<a href="${contentUrl4}">음식 추가하기.</a>
		<h3>등록된 음식이 없습니다.</h3>
	</c:if>
	<c:forEach var="dto" items="${list}">
		<c:url var="contentUrl" value="updateWd.we"><c:param name="idx">${dto.idx}</c:param></c:url>
		${dto.idx}<a href="${contentUrl}">${dto.name}</a>
		
		<c:url var="contentUrl3" value="insertMeal.we"><c:param name="idx">${dto.idx}</c:param></c:url>
		${dto.idx}<a href="${contentUrl3}">식사관리</a>
		
		<c:url var="contentUrl2" value="deleteWd.we"><c:param name="idx">${dto.idx}</c:param></c:url>
		<a href="${contentUrl2}">삭제</a>
	</c:forEach>
</body>

</html>