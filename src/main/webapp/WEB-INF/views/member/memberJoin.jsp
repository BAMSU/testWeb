<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>회원가입</h2>
	<form action="memberJoin.we" name="join">
		<table>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="id"> <input type="button"
					value="중복검사" onclick="show()"> <span id="idCheckMsg"></span>
				</td>
			</tr>

			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="pwd"></td>
			</tr>

			<tr>
				<th>비밀번호 확인</th>
				<td><input type="password" name="pwdCheck"></td>
			</tr>

			<tr>
				<th>이름</th>
				<td><input type="text" name="name"></td>
			</tr>

			<tr>
				<th>이메일</th>
				<td><input type="text" name="member_email">@<input
					type="text" name="emailde"> <select>
						<option value="0">직접입력</option>
						<option value="naver.com">naver.com</option>
						<option value="daum.net">daum.net</option>
				</select></td>
			</tr>

			<tr>
				<th>성별</th>
				<td><input type="radio" name="member_gender">남자 <input
					type="radio" name="member_gender">여자</td>
			</tr>

			<tr>
				<th>휴대폰</th>
				<td><select name="member_phone">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="017">010</option>
				</select>-<input type="text" name="member_phone2">-<input type="text"
					name="member_phone3"></td>
			</tr>

			<tr>
				<th>우편번호</th>
				<td><input type="text" name="member_addrnum"> <input
					type="button" value="우편번호"></td>
			</tr>

			<tr>
				<th>기본주소</th>
				<td><input type="text" name="member_addrbasic"></td>
			</tr>

			<tr>
				<th>상세주소</th>
				<td><input type="text" name="member_addrdetail"></td>
			</tr>

			<tr>
				<th>자동 가입방지</th>
			</tr>

			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="회원가입"></td>
			</tr>


		</table>
	</form>
</body>
</html>