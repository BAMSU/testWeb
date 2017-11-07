<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--부케 입력폼  -->
	<h2>${sessionScope.besort } 상품 등록 신청</h2>
<form action="regBouq.we" name="bouqIn" method="post" enctype="multipart/form-data">
<table>

	<tr>
		<td>업체명</td> <td><input type="text" name="sdmy_be" value="${sessionScope.besname}" readonly style="border-style: none;" required></td>
	</tr>
	
	<tr>
		<td>상품이름</td> 
		<td><input type="text" name="bouq_name" value="${sessionScope.besname}" readonly style="border-style: none;" required></td>
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