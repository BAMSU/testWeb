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
<form action="regShoes.we" method="post" enctype="multipart/form-data">
<table>
	<tr>
		<td>업체명</td>
		<td><input type="text" name="shoes_be" value="${sessionScope.besname}"></td>
	</tr>
	
	<tr>
		<td>상품이름</td>
		<td><input type="text" name="shoes_name"></td>
	</tr>
	
	<tr>
		<td>주문가능사이즈</td>
		<td><input type="text" name="shoes_size"></td>
	</tr>
	
	<tr>
		<td>굽높이 조절</td>
		<td><input type="text" name="shoes_heel"></td>
	</tr>
	
	<tr>
		<td>신발소재</td>
		<td><input type="text" name="shoes_material"></td>
	</tr>
	
	<tr>
		<td>상품 썸네일</td>
		<td>
			<input type="file"  name="shoes_imgs">
		</td>
	</tr>
	
	<tr>
		<td>세부사진</td>
		<td>
			<input type="file" name="shoes_imgs">
		</td>
	</tr>
	
	<tr>
		<td>
			<textarea rows="20" cols="20" name="shoes_detail"></textarea>
		</td>
	</tr>
	
	<tr>
		<td>
			<input type="hidden" name="be_sort" value="${sessionScope.besort }">
			<input type="submit" value="상품등록신청">
		</td>
	</tr>
</table>
</form>
</body>
</html>