<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/beCss.css">
</head>
<body>
<%@include file="beHeader.jsp" %>

<h2>itemDetailShoes.jsp 입니당</h2>

<c:set value="${dto}" var="dto"></c:set>

<c:url var="delUrl" value="delItem.we">
	<c:param name="besort" value="${sessionScope.besort}"/>
	<c:param name="idx" value="${dto.shoes_idx}"></c:param>
</c:url>
<c:url var="updateUrl" value="itemUpdateShoes.we">
	<c:param name="idx" value="${dto.shoes_idx}"></c:param>
</c:url>

<div class="item_detail_div">
<br>
<a href="${updateUrl}"><input type="button" value="상품수정"></a>
<a href="${delUrl}"><input type="button" value="상품삭제"></a>
<br>
</div>


<div class="container">
    <div class="row">
        <div class="col-md-offset-1 col-md-10"></div>
    </div>
    <div class="row">
        <div class="col-md-offset-2 col-md-8"></div>
        <div class="col-md-offset-2 col-md-8">상품 썸네일 : ${dto.shoes_thumbnail}<br>
업체  : ${dto.shoes_be}<br>
상품명  : ${dto.shoes_name}<br>
상품 이미지 <img alt="상품이미지" src="${dto.shoes_img}" width="20%"><br>
사이즈  : ${dto.shoes_size}<br>
재질 : ${dto.shoes_material}<br>
조회수 : ${dto.readnum}<br>
상담수 : ${dto.consult}<br>
상세정보 : ${dto.shoes_detail }<br></div>
        <div class="col-md-offset-2 col-md-8"></div>
    </div>
    <div class="row"></div>
</div>
 
</body>
</html>