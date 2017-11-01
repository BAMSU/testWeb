<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<section>
		<article>
			<h2>로 그 인</h2>
			<form name="login" action="login.we" >
				<fieldset>
					<table align="center">

						<tr>
							<th>ID</th>
							<td><input type="text" name="id"
								value="${cookie.saveid.value}"></td>
						</tr>	
						<tr>
							<th>Password</th>
							<td><input type="password" name="pwd"></td>
						</tr>
						<tr>
							<td colspan="2" align="center"><input type="checkbox"
								name="saveid" value="on"
								${empty cookie.saveid.value?'':'checked'}>ID 기억하기 <input
								type="submit" value="로그인"></td>
						</tr>


					</table>
				</fieldset>
			</form>
		</article>
	</section>
</body>
</html>