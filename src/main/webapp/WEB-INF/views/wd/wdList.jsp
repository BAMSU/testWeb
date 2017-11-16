<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function aa() {
	location.href="/finalproject/insertWd.we";
}
</script>
</head>
<body>
<input type="button" name="insertWd" value="웨딩홀등록" onclick="aa()">
<h3>웨딩홀 리스트</h3>

	<c:if test="${empty list}">
		<h3>등록된 웨딩홀이 없습니다.</h3>
	</c:if>
	<c:forEach var="dto" items="${list}">
		<c:url var="contentUrl" value="updateWd.we"><c:param name="idx">${dto.idx}</c:param></c:url>
		${dto.idx}<a href="${contentUrl}">${dto.name}</a>
		
		<c:url var="contentUrl5" value="roomList.we"><c:param name="idx">${dto.idx}</c:param></c:url>
		<a href="${contentUrl5}">방 관리</a>
		
		<c:url var="contentUrl3" value="mealList.we"><c:param name="idx">${dto.idx}</c:param></c:url>
		<a href="${contentUrl3}">웨딩홀 정보/견적서 관리</a>
		
		<c:url var="contentUrl4" value="image.we"><c:param name="idx">${dto.idx}</c:param></c:url>
		<a href="${contentUrl4}">웨딩홀 사진 관리</a>
		
		<c:url var="contentUrl2" value="deleteWd.we"><c:param name="idx">${dto.idx}</c:param></c:url>
		<a href="${contentUrl2}">삭제</a>
		
		<br>
	</c:forEach>
</body>
</html>