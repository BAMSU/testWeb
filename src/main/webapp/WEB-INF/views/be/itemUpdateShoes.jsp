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

<form action="itemUpdateShoes.we" method="post">
<table>
	<tr>
		<td>업체</td><td> ${dto.shoes_be}</td>
	</tr>
	<tr>
		<td>상품명</td><td><input type="text" name="shoes_name" value="${dto.shoes_name}"></td>
	</tr>
	<tr>
		<td>사이즈</td><td><input type="text" name="shoes_size" value="${dto.shoes_size}"></td>
	</tr>
	<tr>
		<td>굽높이 조절</td><td><input type="text" name="shoes_heel" value="${dto.shoes_heel}"></td>
	</tr>
	<tr>
		<td>재질</td><td><input type="text" name="shoes_material" value="${dto.shoes_material}"></td>
	</tr>
	<tr>
		<td>상세정보</td><td><input type="text" name="shoes_detail" value="${dto.shoes_detail}"></td>
	</tr>
	
	<tr>
		<td>
		<input type="hidden" name="shoes_idx" value="${dto.shoes_idx}">
		<input type="submit" value="수정하기"></td><td></td>
	</tr>
</table>
상품 썸네일 : ${dto.shoes_thumbnail}<br>

  :<br>
  : <br>

상품 이미지 <img alt="상품이미지" src="${dto.shoes_img}" width="20%"><br>
  : <br>
 : <br>
조회수 : ${dto.readnum}<br>
상담수 : ${dto.consult}<br>
상세정보 : ${dto.shoes_detail }<br>

 </form>
</body>
</html>