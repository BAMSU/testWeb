<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="beHeader.jsp" %>


<h2>itemUpdateCar.jsp 입니당</h2>
<c:set value="${dto}" var="dto"></c:set>
<form action="itemUpdateCar.we" method="post">
<table>
	<tr>
		<td>상품명</td><td><input type="text" name="car_name" value="${dto.car_name}"> </td>
	</tr>
	<tr>
		<td>상품가격</td><td><input type="text" name="car_price" value="${dto.car_price}"></td>
	</tr>
	<tr>
		<td>상세정보</td><td><input type="text" name="car_detail" value="${dto.car_detail}"></td>
	</tr>
	<tr>
		<td>
		<input type="hidden" name="car_idx" value="${dto.car_idx }">
		<input type="submit" value="수정하기"></td><td></td>
	</tr>
</table>
업체 : ${dto.car_be}
상품 이미지 <img alt="상품이미지" src="${dto.car_img }" width="20%">
조회수 : ${dto.readnum}<br>
상담수 : ${dto.consult}<br>
 : 
</form>
</body>
</html>