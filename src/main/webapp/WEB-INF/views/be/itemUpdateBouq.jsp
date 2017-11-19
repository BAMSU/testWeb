<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.button{
	width:100px;
	height:50px;
	text-align: center;
	color:red;
	vertical-align: center;
	background: skyblue;
	opacity:0.4;
	border:3px solid gray;
	border-radius: 5px;
}
.button:hover{
	background: pink;
	font-weight: bold;
}
img{
	vertical-align:middle;
	padding-left:10%;
	border-radius: 5px;
}
</style>
</head>
<body style="background-image: url('upload/beBackGround.jpg'); opacity: 0.7; background-size: cover;">
<%@include file="beHeader.jsp" %>

<br><br>

<div style="border:1px solid red; width:60%; margin:auto; background: white; border-radius: 10px;">

<h2>상품 수정</h2>

<c:set value="${dto}" var="dto"></c:set>


<br>
<form action="itemUpdateBouq.we" method="post">
<div style="border:1px solid green; background: beige;opacity:2.5;">
<table>
	<tr>
		<td>업체</td><td>${dto.bouq_be}</td>
	</tr>
	<tr>
		<td>상품명</td><td><input type="text" name="bouq_name" value="${dto.bouq_name}"> </td>
	</tr>
	<tr>
		<td>상품가격</td><td><input type="text" name="bouq_price" value="${dto.bouq_price}"></td>
	</tr>
	<tr>
		<td>상세정보</td><td><input type="text" name="bouq_detail" value="${dto.bouq_detail}"></td>
	</tr>
	<tr>
		<td>간단설명</td><td><input type="text" name="bouq_simple" value="${dto.bouq_simple}"></td>
	</tr>
	<tr>
		<td></td><td></td>
	</tr>
	<tr>
		<td>
		<input type="hidden" name="bouq_idx" value="${dto.bouq_idx}">
		<input type="submit" value="수정"></td><td></td>
	</tr>
	
</table>
상품 이미지 <img alt="상품이미지" src="${dto.bouq_thumbnail}" width="20%">
</div>

</form>
<br><br>
</div>
</body>
</html>