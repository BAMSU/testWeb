<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
	<!--스.드.메.예 입력폼  -->
	<h2>${sessionScope.besort } 상품 등록 신청</h2>
<form action="" name="sdmyIn">
<table>

	<tr>
		<td>업체명</td> <td><input type="text" name="be_name" value="${sessionScope.besname}" readonly style="border-style: none;"></td>
	</tr>

	<tr>
		<td>상품이름</td>
		<td><input type="text" name="be_name"></td>
	</tr>
	
	
	<tr>
		<td></td>
	</tr>
	
	<tr>
		<td></td>
	</tr>
	
	<tr>
		<td></td>
	</tr>
	
	<tr>
		<td><input type="hidden" name="be_sort" value="${sessionScope.besort }"></td>
	</tr>
</table>
</form>

</body>
</html>