<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
table td{
vertical-align: middle;
align-items: center;
}
</style>
</head>
<body>
<%@include file="beHeader.jsp" %>
<br>
<p>관리자의 승인을 대기중인 목록입니다.</p>
<br>
<table>
<c:set var="list" value="${list}" />
<c:if test="${empty list}">
 	
</c:if>
<c:choose>
	<c:when test="${sessionScope.besort == '웨딩카' }">
		
		 <tr>
		 	<td>썸네일</td> <td>업체명</td> <td>상품이름</td> <td>판매가</td>
		 </tr>
		 <c:forEach var="dto" items="${list}">
		 	<tr>
		 		<td align="center">
		 			<img alt="썸네일" src="${dto.car_img}" width="250px" height="250px">
		 		</td>
		 		<td>${dto.car_be}</td>
		 		<td>${dto.car_name}</td>
		 		<td>${dto.car_price} </td>
		 	</tr>
		 	
		 </c:forEach>
		
	</c:when>
	
	<c:when test="${sessionScope.besort == '웨딩슈즈' }">
		
		 <tr>
		 	<td>썸네일</td> <td>업체명</td> <td>상품이름</td> <td>사이즈</td> <td>굽높이조절</td> <td>소재</td>
		 </tr>
		 <c:forEach var="dto" items="${list}">
		 	<tr>
		 		<td align="center">
		 			<img alt="썸네일" src="${dto.shoes_thumbnail}" width="250px" height="250px">
		 		</td>
		 		<td>${dto.shoes_be}</td>
		 		<td>${dto.shoes_name}</td>
		 		<td>${dto.shoes_size} </td>
		 		<td>${dto.shoes_heel }</td>
		 		<td>${dto.shoes_material }</td>
		 	</tr>
		 	
		 </c:forEach>
		
	</c:when>
	
	<c:when test="${sessionScope.besort == '부케' }">
		
		 <tr>
		 	<td>썸네일</td> <td>업체명</td> <td>상품이름</td> <td>판매가</td> <td>한줄설명</td>
		 </tr>
		 <c:forEach var="dto" items="${list}">
		 	<tr>
		 		<td align="center">
		 			<img alt="썸네일" src="${dto.bouq_thumbnail}" width="250px" height="250px">
		 		</td>
		 		<td>${dto.bouq_be}</td>
		 		<td>${dto.bouq_name}</td>
		 		<td>${dto.bouq_price} </td>
		 		<td>${dto.bouq_simple }</td>
		 	</tr>
		 	
		 </c:forEach>
		
	</c:when>
	
	<c:when test="${sessionScope.besort == '스튜디오' }">
		
		 <tr>
		 	<td>썸네일</td> <td>업체종류</td> <td>업체명</td> <td>평균이용금액</td>
		 </tr>
		 <c:forEach var="dto" items="${list}">
		 	<tr>
		 		<td align="center">
		 			<img alt="썸네일" src="${dto.sdmy_thumbnail}" width="250px" height="250px">
		 		</td>
		 		<td>${dto.sdmy_category}</td>
		 		<td>${dto.sdmy_be}</td>
		 		<td>${dto.sdmy_avg} </td>
		 	</tr>
		 	
		 </c:forEach>
		
	</c:when>
	
	<c:when test="${sessionScope.besort == '드레스' }">
		
		 <tr>
		 	<td>썸네일</td> <td>업체종류</td> <td>업체명</td> <td>평균이용금액</td>
		 </tr>
		 <c:forEach var="dto" items="${list}">
		 	<tr>
		 		<td align="center">
		 			<img alt="썸네일" src="${dto.sdmy_thumbnail}" width="250px" height="250px">
		 		</td>
		 		<td>${dto.sdmy_category}</td>
		 		<td>${dto.sdmy_be}</td>
		 		<td>${dto.sdmy_avg} </td>
		 	</tr>
		 	
		 </c:forEach>
		
	</c:when>
	
	<c:when test="${sessionScope.besort == '메이크업' }">
		
		 <tr>
		 	<td>썸네일</td> <td>업체종류</td> <td>업체명</td> <td>평균이용금액</td>
		 </tr>
		 <c:forEach var="dto" items="${list}">
		 	<tr>
		 		<td align="center">
		 			<img alt="썸네일" src="${dto.sdmy_thumbnail}" width="250px" height="250px">
		 		</td>
		 		<td>${dto.sdmy_category}</td>
		 		<td>${dto.sdmy_be}</td>
		 		<td>${dto.sdmy_avg} </td>
		 	</tr>
		 	
		 </c:forEach>
		
	</c:when>
	
	<c:when test="${sessionScope.besort == '예복' }">
		
		 <tr>
		 	<td>썸네일</td> <td>업체종류</td> <td>업체명</td> <td>평균이용금액</td>
		 </tr>
		 <c:forEach var="dto" items="${list}">
		 	<tr>
		 		<td align="center">
		 			<img alt="썸네일" src="${dto.sdmy_thumbnail}" width="250px" height="250px">
		 		</td>
		 		<td>${dto.sdmy_category}</td>
		 		<td>${dto.sdmy_be}</td>
		 		<td>${dto.sdmy_avg} </td>
		 	</tr>
		 	
		 </c:forEach>
		
	</c:when>
</c:choose>
 </table>
</body>
</html>




