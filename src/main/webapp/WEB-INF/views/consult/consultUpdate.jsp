<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.0/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
<script src="http://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css" />
<script>
 $(function() {
  $("#datepicker").datepicker();
 });

</script>
</head>
<body>
<h2 align="center">문의 / 상담하기</h2>
<form name="consult" action="consultUpdate.we">
	<input type="hidden" name="idx" value="${idx}" >
<table align="center">
	<tr>
	<td><div><lable>이름</lable><input type="text" name="name" style="width: 100px;"  value="${name}" readonly="readonly"> | 
		 <input type="radio" value="1" name="gender" >남자
		 <input type="radio" value="2" name="gender" >여자</div></td>
	</tr>
	<tr>
	<td><hr></td>
	</tr>
	<tr><td>
	<div><lable>전화번호</lable><select name="tel1">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="018">018</option>
				<option value="019">019</option>
				<option value="070">070</option>
			</select> - <input type="text" name="tel2"> - <input type="text" name="tel3"></div>
		</td>
		</tr>	
		<tr>
	<td><hr></td>
	</tr>
		<tr><td>
	<div><lable>이메일</lable><input type="text" name="email" value="${email }"> @ 
			<select name="email2">
				<option value="naver.com">naver.com</option>
				<option value="gmail.com">gmail.com</option>
				<option value="nate.com">nate.com</option>
				<option value="yahoo.co.kr">yahoo.co.kr</option>
			</select></div>
		</td>
	
		</tr>	
		<tr>  
		<td><div><lable>결혼예정일  </lable>
		<input type="text" id="datepicker" name="reservation" value="${reservation} ">
		</div>
		</td>
		</tr>
		
		<tr>
	<td><hr></td>
	</tr>
		<tr>
		
		
			<td>
			<textarea rows="15" cols="45" name="context" >
			</textarea>
			</td>
			<td></td>
		</tr>
		<tr><td>
		<input type="submit" value="수정하기">
		
		</td>
		</tr>
	
</table>	
</form>

</body>
</html>