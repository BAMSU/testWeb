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
<%@include file="/adminheader.jsp"%>
<form name = "fm" action="updateMeal.we" method="POST">
<c:forEach var="dto" items="${list}">
음식 종류 : <input type="text" name="meal" value="${dto.meal}"> <br>
음식 가격 : <input type="text" name="price" value="${dto.price}"> <br>
음식 설명 : <input type="text" name="content" value="${dto.content}"> <br>
<input type="hidden" name="idx" value="${dto.idx}">
</c:forEach>
<input type="submit" value="식사수정하기">
</form>
</body>
</html>