<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<%@include file="beHeader.jsp" %>
<c:if test="${!empty sessionScope.besid }">
	<script type="text/javascript">
		location.href="beIndex.we";
	</script>
</c:if>
<br>
<fieldset>
<form action="beLogin.we" method="post">
	로그인 <input type="text" name="be_id" placeholder="id" required><br>
	비밀번호 <input type="password" name="be_pwd" required> <br>
	<input type="submit" value="Login"><br><input type="button" value="업체등록신청" onclick="beJoin()">
</form>
</fieldset>



</body>
</html>





