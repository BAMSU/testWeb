<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Love is staying</title>
</head>
<body>
	<h2>아이디 찾기</h2>
	<%@include file="/header.jsp" %>
	<form name="fm" action="idFindSubmit.we">
		<fieldset>
		
			<table>
				<tr>
					<th>이름</th>
					<td><input type="text" name="member_name"></td>
				</tr>

				<tr>
					<th>이메일</th>
					<td><input type="text" name="member_email"></td>
				</tr>

				<tr>
					<td><input type="submit" value="아이디찾기"></td>
				</tr>
				<tr>
				<td>${msg}</td>
				</tr>
			</table>
		</fieldset>
	</form>
</body>
</html>