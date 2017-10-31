<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>매장 주문 내역 확인</h2>
<ul>
	<c:forEach var="item" items="${orderDTO.itemdto}">
	<li>-${item.title}/${item.num}개/비고:${item.bigo}</li>
	</c:forEach>
</ul>
<h3>주문 매장 정보</h3>
<h4>매장명:${orderDTO.marketdto.marketname}</h4>
<h4>매장전화번호:${orderDTO.marketdto.markettel}</h4>
</body>
</html>