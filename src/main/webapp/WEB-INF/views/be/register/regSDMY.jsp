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
	<!--스.드.메.예 입력폼  -->
<div style="width:80%; margin:auto;">
	<h2>${sessionScope.besname } 상품 등록 신청</h2>
	<br><br>

<form action="regSDMY.we" name="sdmyIn" method="post" enctype="multipart/form-data">
<table align="center" style="margin:auto;width:100%;">

	<tr>
		<td>업체명</td> <td><input type="text" name="sdmy_be" value="${sessionScope.besname}" readonly style="border-style: none;" required></td>
	</tr>

	<tr>
		<td>평균 이용금액</td>
		<td><input type="text" name="sdmy_avg" required>만원</td>
	</tr>
	
	
	<tr>
		<td>업체 썸네일</td> 
		<td><input type="file" name="sdmy_img" required></td>
	</tr>
	
	<tr>
		<td style="vertical-align: top;">업체 관련 이미지</td>
		<td>
			<input type="file" name="sdmy_img" required><br> 
			<input type="file" name="sdmy_img" required><br> 
			<input type="file" name="sdmy_img" required><br> 
			<input type="file" name="sdmy_img" required><br> 
			<input type="file" name="sdmy_img" required><br> 
			<input type="file" name="sdmy_img" required><br> 
			<input type="file" name="sdmy_img" required><br> 
			<input type="file" name="sdmy_img" required><br> 
			<input type="file" name="sdmy_img" required><br> 
		</td>
	</tr>
	
	<tr>
		<td colspan="2" align="center">
		<br>
			<input type="hidden" name="be_sort" value="${sessionScope.besort }">
			<input type="submit" class="button" value="등록신청">
		</td>
	</tr>
</table>
</form>
</div>
</body>
</html>