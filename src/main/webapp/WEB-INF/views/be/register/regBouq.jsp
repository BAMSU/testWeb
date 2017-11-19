<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
<!--부케 입력폼  -->
<h2	align="center">${sessionScope.besname} 상품 등록 신청</h2>
<br><br>
<form action="regBouq.we" name="bouqIn" method="post" enctype="multipart/form-data">
<table align="center" style="width:90%;margin:auto;">

	<tr>
		<td>업체명</td> <td><input type="text" name="bouq_be" value="${sessionScope.besname}" readonly style="border-style: none;" required></td>
	</tr>
	
	<tr>
		<td>상품이름</td> 
		<td><input type="text" name="bouq_name" required></td>
	</tr>

	<tr>
		<td>상품가격</td>
		<td><input type="text" name="bouq_price" required>만원</td>
	</tr>
	
	
	<tr>
		<td>상품 썸네일</td> 
		<td><input type="file" name="bouq_imgs" required></td>
	</tr>
	
	<tr>
		<td>업체 간략소개</td>
		<td><input type="text" name="bouq_simple" size="38" maxlength="100" placeholder="40자 내외" required></td>
	</tr>
	
	<tr>
		<td>상품 상세설명</td>
		<td>
			<textarea rows="20" cols="40" name="bouq_detail" required></textarea>
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="hidden" name="be_sort" value="${sessionScope.besort}">
			<input type="submit" class="button" value="등록 신청">
		</td>
	</tr>
</table>
</form>

</body>
</html>