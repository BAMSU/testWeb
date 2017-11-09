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



업체 : ${dto.car_be}
상품명 : ${dto.car_name}
상품가격 : ${dto.car_price}
상품 이미지 <img alt="상품이미지" src="${dto.car_img }" width="20%">
조회수 : ${dto.readnum}<br>
상담수 : ${dto.consult}<br>
상세정보 : ${dto.car_detail}
 
</body>
</html>