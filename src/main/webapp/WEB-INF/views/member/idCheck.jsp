<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ID 중복 검사</title>
</head>
<body>
	<form name="id_check" action="IdCheck_Ok.do">
		<fieldset>
			<legend>중복검사</legend>
			<label>ID</label> 
			<input type="text" name="id" required="required">
			<input type="submit" value="중복검사">
		</fieldset>
	</form>
</body>
</html>