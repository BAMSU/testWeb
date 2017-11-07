<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="beHeader.jsp" %>

<h2>itemListBe.jsp입니당 </h2>
<br><br>

<table>
<c:choose>
	<c:when test="${sessionScope.besort == '스튜디오'}"> <br>
		 <c:if test="${empty list}">
		 	<tr>
		 		<td>아무것도 등록되지 않았습니다.</td>
		 	</tr>
		 </c:if>
		 <c:forEach var="dto" items="${list}">
		 	<tr>
		 		<td align="center">
		 		<c:url var="dressUrl" value="item_detail_sdmy.we">
		 			<c:param name="be_name" value="${dto.sdmy_be}" />
		 		</c:url>
		 			<a href="${dressUrl}">
		 			<img alt="썸네일" src="${dto.sdmy_thumbnail}" width="300px">
		 			<br>${dto.sdmy_be}</a>
		 			<br><br><br><br>
		 		</td>
		 	</tr>
		 	
		 </c:forEach>
	</c:when>
	
	<c:when test="${sessionScope.besort == '드레스' }"><br>
		 <c:if test="${empty list}">
		 	<tr>
		 		<td>아무것도 등록되지 않았습니다.</td>
		 	</tr>
		 </c:if>
		 <c:forEach var="dto" items="${list}">
		 	<tr>
		 		<td align="center">
		 		<c:url var="dressUrl" value="item_detail_sdmy.we">
		 			<c:param name="be_name" value="${dto.sdmy_be}" />
		 		</c:url>
		 			<a href="${dressUrl}">
		 			<img alt="썸네일" src="${dto.sdmy_thumbnail}" width="300px">
		 			<br>${dto.sdmy_be}</a>
		 			<br><br><br><br>
		 		</td>
		 	</tr>
		 	
		 </c:forEach>
	</c:when>
	
	<c:when test="${sessionScope.besort == '메이크업' }"><br>
		 <c:if test="${empty list}">
		 	<tr>
		 		<td>아무것도 등록되지 않았습니다.</td>
		 	</tr>
		 </c:if>
		 <c:forEach var="dto" items="${list}">
		 	<tr>
		 		<td align="center">
		 		<c:url var="dressUrl" value="item_detail_sdmy.we">
		 			<c:param name="be_name" value="${dto.sdmy_be}" />
		 		</c:url>
		 			<a href="${dressUrl}">
		 			<img alt="썸네일" src="${dto.sdmy_thumbnail}" width="300px">
		 			<br>${dto.sdmy_be}</a>
		 			<br><br><br><br>
		 		</td>
		 	</tr>
		 	
		 </c:forEach>
	</c:when>
	
	<c:when test="${sessionScope.besort == '예복' }"> <br>
		 <c:if test="${empty list}">
		 	<tr>
		 		<td>아무것도 등록되지 않았습니다.</td>
		 	</tr>
		 </c:if>
		 <c:forEach var="dto" items="${list}">
		 	<tr>
		 		<td align="center">
		 		<c:url var="dressUrl" value="item_detail_sdmy.we">
		 			<c:param name="be_name" value="${dto.sdmy_be}" />
		 		</c:url>
		 			<a href="${dressUrl}">
		 			<img alt="썸네일" src="${dto.sdmy_thumbnail}" width="300px">
		 			<br>${dto.sdmy_be}</a>
		 			<br><br><br><br>
		 		</td>
		 	</tr>
		 	
		 </c:forEach>
	</c:when>
	
	<c:when test="${sessionScope.besort == '웨딩카' }"><br>
		<c:if test="${empty list}">
		 	<tr>
		 		<td>아무것도 등록되지 않았습니다.</td>
		 	</tr>
		 </c:if>
		 <c:forEach var="dto" items="${list}">
		 	<tr>
		 		<td align="center">
		 		<c:url var="dressUrl" value="item_detail_csb.we">
		 			<c:param name="be_name" value="${dto.sdmy_be}" />
		 		</c:url>
		 			<a href="${dressUrl}">
		 			<img alt="썸네일" src="${dto.sdmy_thumbnail}" width="300px">
		 			<br>${dto.sdmy_be}</a>
		 			<br><br><br><br>
		 		</td>
		 	</tr>
		 	
		 </c:forEach>
	</c:when>
	
	<c:when test="${sessionScope.besort == '웨딩슈즈' }">
		
	</c:when>
	
	<c:when test="${sessionScope.besort == '부케' }">
	
	</c:when>

</c:choose>
</table>

</body>
</html>