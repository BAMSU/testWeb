<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Love is staying</title>
<style type="text/css">
.button{
	width:90px;
	height:50px;
	text-align: center;
	vertical-align: center;
	background: white;
	opacity:0.4;
	border:2px solid gray;
	border-radius: 5px;
}
.button:hover{
	background: transparent;
}	
</style>
</head>
<body>
<!--웨딩슈즈 입력폼  -->
<div style="width:90%;margin:auto; ">
<h2>${sessionScope.besname } 상품 등록 신청</h2>
	<br><br>
<form action="regShoes.we" method="post" enctype="multipart/form-data">
<table align="center" style="margin:auto;width:100%;">
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
		<td>세부설명</td>
		<td>
			<textarea rows="20" cols="40" name="shoes_detail"></textarea>
		</td>
	</tr>
	
	<tr>
		<td colspan="2" align="center">
			<input type="hidden" name="be_sort" value="${sessionScope.besort }">
			<input type="submit" value="상품등록신청">
		</td>
	</tr>
</table>
</form>
</div>
</body>
</html>