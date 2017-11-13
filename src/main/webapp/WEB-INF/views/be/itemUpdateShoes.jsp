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

<h2>itemDetailShoes.jsp 입니당</h2>

<c:set value="${dto}" var="dto"></c:set>


상품 썸네일 : ${dto.shoes_thumbnail}<br>

업체  : ${dto.shoes_be}<br>
상품명  : ${dto.shoes_name}<br>

상품 이미지 <img alt="상품이미지" src="${dto.shoes_img}" width="20%"><br>
사이즈  : ${dto.shoes_size}<br>
재질 : ${dto.shoes_material}<br>
조회수 : ${dto.readnum}<br>
상담수 : ${dto.consult}<br>
상세정보 : ${dto.shoes_detail }<br>

 
</body>
</html>