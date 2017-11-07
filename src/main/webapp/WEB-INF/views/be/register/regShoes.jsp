<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--웨딩슈즈 입력폼  -->
	<h2>${sessionScope.besort } 상품 등록 신청</h2>
<form action="regShoes.we" name="shoesIn" method="post" enctype="multipart/form-data">
<table>

	<tr>
		<td>업체명</td> 
		<td><input type="text" name="shoes_be" value="${sessionScope.besname}" readonly style="border-style: none;"></td>
	</tr>

	<tr>
		<td>상품이름</td>
		<td><input type="text" name="shoes_name" ></td>
	</tr>
	
	<tr>
		<td>주문 가능 사이즈</td> 
		<td><input type="text" name="shoes_size"></td>
	</tr>
	
	<tr>
		<td>굽높이 조절</td> 
		<td><input type="text" name="shoes_heel"></td>
	</tr>
	
	<tr>
		<td>신발 소재</td> 
		<td><input type="text" name="shoes_material"></td>
	</tr>
	
	
	<tr>
		<td>상품 썸네일</td> 
		<td><input type="file" name="shoes_img"></td>
	</tr>
	
	
	<tr>
		<td style="vertical-align: top;">상품 세부 이미지</td>
		<td>
			<input type="file" name="shoes_img">
		</td>
	</tr>
	
	<tr>
	</tr>
	<tr>
		<td>
			<input type="hidden" name="be_sort" value="${sessionScope.besort }">
			<input type="submit" value="등록 신청하기">
		</td>
	</tr>
</table>
</form>
</body>
</html>