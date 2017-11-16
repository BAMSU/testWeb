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
		<a href="${contentUrl4}">견적서 추가하기.</a>
		<h3>등록된 음식이 없습니다.</h3>
	</c:if>
	<c:forEach var="dto" items="${list}">
	음식 종류 : <input type="text" name="meal" value="${dto.meal}" readOnly> <br>
	<c:url var="contentUrl" value="updateMeal.we"><c:param name="idx">${dto.idx}</c:param></c:url>
		<input type="button" onclick="javascript:location.href='${contentUrl}'" value="음식수정하기">
		<input type="button" onclick="javascript:location.href='wdList.we'" value="웨딩홀 목록으로">
	</c:forEach>
</body>

</html>