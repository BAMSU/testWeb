<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>사원 관리 프로그램</h2>
	<form name="empAdd" action="empAdd.do">
		<fieldset>
			<legend>사원등록</legend>
			<table>
				<tr>
					<th>사원이름</th>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<th>E-mail</th>
					<td><input type="text" name="email"></td>
				</tr>
				<tr>
					<th>부서명</th>
					<td><input type="text" name="dept"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="사원등록"> <input type="reset" value="다시작성"></td>
				</tr>
			</table>
		</fieldset>
	</form>
	<hr>
	<form name="empDelete" action="empDelete.do">
		<fieldset>
			<legend>사원삭제</legend>
			<table>
				<tr>
					<th>사원이름</th>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="사원삭제"> <input type="reset" value="다시작성"></td>
				</tr>
			</table>
		</fieldset>
	</form>
	<hr>
	<fieldset>
		<legend>모든사원내역</legend>
		<h3>
			<a href="empList.do">모든 사원 내역 보기</a>
		</h3>
	</fieldset>
	<hr>
	<form name="empSearch" action="empSearch.do">
		<fieldset>
			<legend>사원검색</legend>
			<table>
				<tr>
					<th>이름</th>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="사원검색"> <input type="reset" value="다시작성"></td>
				</tr>
			</table>
		</fieldset>
	</form>
	<hr>
	<form name="empUpdate" action="empUpdate.do">
		<fieldset>
			<legend>사원정보수정</legend>
			<table>
				<tr>
					<th>사원번호</th>
					<td><input type="text" name="idx"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="사원정보수정"> <input type="reset" value="다시작성">
					</td>
				</tr>
			</table>
		</fieldset>
	</form>
</body>
</html>