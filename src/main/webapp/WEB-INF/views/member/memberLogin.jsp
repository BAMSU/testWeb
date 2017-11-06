<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
	<%@include file="/header.jsp" %>
	<h2>로 그 인</h2>
	<form name="fm" action="loginForm.we">
		<fieldset>
			<table align="center">

				<tr>
					<th>ID</th>
					<td><input type="text" name="id" value="${cookie.saveid.value }"></td>
					
				</tr>
				<tr>
					<th>Password</th>
					<td><input type="password" name="pwd"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="checkbox"
						name="saveid" value="on" ${empty cookie.saveid.value?'':'checked'}>ID
						기억하기 <input type="submit" value="로그인"></td>
				</tr>
				
				<tr>
				<td><a href="memberidFind.we">아이디</a>/<a href="memberpwdFind.we">비밀번호</a>찾기</td>
				</tr>


			</table>
		</fieldset>
	</form>

</body>
</html>