<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function beJoin(){
	location.href="beJoin.we";
}
</script>
</head>
<body>

<br>
<fieldset>
<form action="beLogin.we" method="post">
	로그인 <input type="text" name="be_id" placeholder="id"><br>
	비밀번호 <input type="password" name="be_pwd"> <br>
	<input type="submit" value="Login"><br>
</form>
</fieldset>

<input type="button" value="업체등록신청" onclick="beJoin()">

</body>
</html>





