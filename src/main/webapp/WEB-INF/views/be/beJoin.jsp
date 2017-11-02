<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>업체 등록신청</h2>
<br>
<!-- be_idx, be_sort, be_name, be_license, be_rep_tell, incharge_name, incharge_email, incharge_tell
, be_loc, be_size, be_park, be_empnum, be_consult, admin_permission -->

<form action="beJoin.we" name="beJoinForm" method="post">
<table>
	<tr>
		<td>업체 종류</td>
		<td>
			<select name="be_sort">
				<option value="스튜디오">스튜디오</option>
				<option value="드레스">드레스</option>
				<option value="메이크업">메이크업</option>
				<option value="예복">예복(남성정장)</option>
				<option value="웨딩카">웨딩카</option>
				<option value="웨딩슈즈">웨딩슈즈</option>
				<option value="부케">부케</option> 
			</select>
		</td>
	</tr>
	
	<tr>
		<td>업체명</td> 
		<td><input type="text" name="be_name"></td> 
		<td>사업자 등록번호</td> 
		<td><input type="text" name="be_license"></td>
	</tr>
	
	<tr>
		<td>소재지</td> 
		<td><input type="text" name="be_loc"></td> 
		<td>매장규모</td> 
		<td><input type="text" name="be_size"></td>
	</tr>
	
	<tr>
		<td>대표번호</td> 
		<td><input type="text" name="be_rep_tell"></td> 
	</tr>
	
	<tr>
		<td>담당자명</td> 
		<td><input type="text" name="incharge_name"></td> 
		<td>담당자 이메일</td> 
		<td><input type="text" name="incharge_email"></td>
	</tr>
	
	<tr>
		<td>담당자 연락처</td> 
		<td><input type="text" name="incharge_tell"></td> 
	</tr>
	
	<tr>
		<td>주차시설</td> 
		<td><input type="text" name="be_park"></td> 
		<td>임직원 수</td> 
		<td><input type="text" name="be_empnum"></td>
	</tr>
	
	<tr>
		<td>업체 아이디</td> 
		<td><input type="text" name="be_id"> <input type="button" value="아이디 중복체크"></td> 
		<td>업체 비밀번호</td> 
		<td><input type="password" name="be_pwd"></td>
	</tr>
	
	<tr>
		<td><input type="submit" value="업체등록신청"></td>
	</tr>
</table>
</form>

</body>
</html>