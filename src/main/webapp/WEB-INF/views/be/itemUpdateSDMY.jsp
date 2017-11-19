<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Love is staying</title>
</head>
<body>
<%@include file="beHeader.jsp" %>
<c:set value="${dto}" var="dto"></c:set>

<h2>itemUpdateSDMY.jsp 입니당</h2>

<form action="itemUpdateSDMY.we" method="post">
<table>
	<tr>
		<td>업체명</td><td>${dto.sdmy_be }</td>
	</tr>
	<tr>
		<td>업체종류</td><td>${dto.sdmy_category}</td>
	</tr>
	<tr>
		<td>평균이용가격</td><td><input type="text" name="sdmy_avg" value="${dto.sdmy_avg}"></td>
	</tr>
	
	<tr>
		<td>
		<input type="hidden" name = "sdmy_be" value="${dto.sdmy_be}">
		<input type="hidden" name="sdmy_idx" value="${dto.sdmy_idx }">
		<input type="submit" value="수정하기">
		</td>
	</tr>
</table>
<img alt="thumbnail" src="${dto.sdmy_thumbnail}" width="20%"><br>
 
<img alt="img" src="${dto.sdmy_img1}" width="20%"><br>
<img alt="img" src="${dto.sdmy_img2}" width="20%"><br>
<img alt="img" src="${dto.sdmy_img3}" width="20%"><br>
<img alt="img" src="${dto.sdmy_img4}" width="20%"><br>
<img alt="img" src="${dto.sdmy_img5}" width="20%"><br>
<img alt="img" src="${dto.sdmy_img6}" width="20%"><br>
<img alt="img" src="${dto.sdmy_img7}" width="20%"><br>
<img alt="img" src="${dto.sdmy_img8}" width="20%"><br>

</form>
</body>
</html>