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
<%@include file="/adminheader.jsp"%>
<h3>웨딩홀 견적서 상세정보</h3>


	<c:if test="${empty list}">
	<input type="hidden" name="idx" value="${idx}">
		<c:url var="contentUrl4" value="insertMeal.we"><c:param name="idx">${idx}</c:param></c:url>
		<a href="${contentUrl4}">견적서 추가하기.</a>
		<h3>등록된 정보가 없습니다.</h3>
	</c:if>
	<c:forEach var="dto" items="${list}">
	<form name = "fm" action="updateMeal.we" method="POST">
	
	<input type="text" name="hall_idx" value="${dto.hall_idx}" required>
	홀 이름 : <input type="text" name="hall_name" value="${dto.hall_name}" required> <br>
	하객수 : <input type="number" name="est_guest" value="${dto.est_guest}" required> <br>
	대관비 : <input type="number" name="hall_price1" value="${dto.hall_price1}" required> <br>
	홀 설명 : <input type="text" name="hall_content" value="${dto.hall_content}" required> <br>
	Ourfit : <input type="number" name="ourfit_price" value="${dto.ourfit_price}" required> <br>
	룸1 식사종류 : <input type="text" name="meal" value="${dto.meal}" required> <br>
	룸2 식사종류 : <input type="text" name="meal_1" value="${dto.meal_1}" required> <br>
	룸1 식사비 : <input type=number name="meal_price" value="${dto.meal_price}" required> <br>
	룸2 식사비: <input type="number" name="meal_price2" value="${dto.meal_price2}" required> <br>
	룸1 식사설명 : <input type="text" name="meal_content" value="${dto.meal_content}" required> <br>
	홀2 식사설명: <input type="text" name="meal_content2" value="${dto.meal_content2}" required> <br>
	
	
	
	
		<input type="submit" value="음식수정하기">
		<input type="button" onclick="javascript:location.href='wdList.we'" value="웨딩홀 목록으로">
		</form>
	</c:forEach>
</body>

</html>