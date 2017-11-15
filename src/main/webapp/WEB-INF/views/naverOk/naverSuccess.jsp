<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 <%@ page import="java.text.*" %>
<!DOCTYPE html >
<html lang="ko">
<head>
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js"
	charset="utf-8"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="jquery-3.2.1.min.js"></script>
<style type="text/css">
html, div, body, h3 {
	margin: 0;
	padding: 0;
}

h3 {
	display: inline-block;
	padding: 0.6em;
}
</style>
<script type="text/javascript">


	$(document).ready(function() {
		var name = ${result}.response.name;
		var email = ${result}.response.email;
		var gender = ${result}.response.gender;
		var nickname = ${result}.response.nickname;
		var id = ${result}.response.enc_id;
		$("#name2").html("환영합니다. "+name+"님");
		$("#name").val(name);
		$("#email2").html(email);
		$("#email").val(email);
		$("#gender").val(gender);
		$("#gender2").html(gender);
		$("#id").val(nickname);
		$("#id2").html(nickname);
		
	  });
	
</script>


</head>
<body>
<form name="naverLoginsa" action="naverLoginWriteOk.we" >
	<div
		style="background-color: #15a181; width: 100%; height: 50px; text-align: center; color: white;">
		<h3>SIST Naver_Login Success</h3>
	</div>
	<br>

	  <input type="hidden" name="name" id="name">
		<input type="hidden" name="email" id="email">
		<input type="hidden" name="gender" id="gender">
		<input type="hidden" name="id" id="id">
	
		<table align="center">  	
		<tr>
		<th>이름:</th>
	  	<td>	<div id="name2"></div></td>
	</tr>
	  	<tr>
	  		<th>이메일:</th>
	  		<td><div id="email2"></div></td>
	 
	 </tr>
	  <tr>
	  		<th>성별:</th> 
	  		
	 <td> 	<div id="gender2"></div></td>
</tr>
	 <tr>
	 		<th>닉네임:</th>
	 <td> <div id="id2"></div></td>
</tr>
	<tr>

	<td><input type="submit" value="해당정보로그인"></td>
	</tr>
		
		
	</table>
</form>
</body>
</html>