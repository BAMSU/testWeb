<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<!-- 웨딩카 입력폼 -->
<br>
<h2>${sessionScope.besname } 상품 등록 신청</h2>
<br>
<form action="regCar.we" name="carIn" method="post" enctype="multipart/form-data" >
<table>
	<tr>
		<td width="30%"></td><td width="30%"></td>
	</tr>
	
	<tr>
		<td>업체명</td> 
		<td><input type="text" name="car_be" value="${sessionScope.besname}" style="border-style: none;" readonly></td>
	</tr>
	
	<tr>
		<td>상품이름</td> 
		<td><input type="text" name="car_name" required></td>
	</tr>
	
	<tr>
		<td>상품가격</td> 
		<td><input type="text" name="car_price" required> 만원</td>
	</tr>
	
	<tr>
		<td>상품사진</td> 
		<td>
			<input type="file" name="car_imgs" required>
		</td>
	</tr>
	
	<tr>
		<td>상세정보</td> 
		<td>
			<textarea rows="20" cols="40" name="car_detail"></textarea>
		</td>
	</tr>
	
	<tr>
		<td>
		<input type="hidden" name="be_sort" value="${sessionScope.besort}">
		<input type="submit" value="등록신청하기">
		</td>
	</tr>
</table>
</form>

</body>
</html>






