<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/httpRequest.js"></script>
<script>

function check() {
	window.open('memberIdCheck.do', 'idCheck', 'width=400px, height=200px');
}
function show() {
	var id = document.memberJoin.id.value;
	var param = 'id=' + id;
	sendRequest('ajaxIdCheck.do', param, showResult, 'GET');
}
function showResult() {
	if(XHR.readyState==4){
		if(XHR.status==200) {
			var data = XHR.responseText;
			var idTag=document.all.ajaxid;
			idTag.innerHTML=data;
		}
	}
}
</script>
</head>
<body>
<form name = "memberJoin" action="join.do" method="post">
<fieldset>
	<legend>회원가입</legend>
	<table>
	<tr>
		<th>아이디</th>
		<td><input type = "text" name = "id"><input type = "button" value = "중복체크" onclick = "show()" required="required">
		<div><span id="ajaxid"></span></div></td>
		
	</tr>
	<tr>
		<th>이름</th>
		<td><input type = "text" name = "name"></td>
	</tr>
	<tr>
		<th>비밀번호</th>
		<td><input type = "text" name = "pwd"></td>
	</tr>
	<tr>
		<th>전화번호</th>
		<td><input type = "text" name = "tel"></td>
	</tr>
	<tr>
		<th>주소</th>
		<td><input type = "text" name = "addr"></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type = "submit" value = "회원가입">
			<input type = "reset" value = "다시작성">
		</td>
	</tr>
	</table>
</fieldset>
</form>
</body>
</html>