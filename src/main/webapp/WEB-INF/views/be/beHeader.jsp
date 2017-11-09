<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="css/beCss/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
<title>Insert title here</title>
<script type="text/javascript">
function loginOpen(){
	
	//window.open('beLogin.we', 'login', 'width=350px, height=200px, status=no, resizable=no');
	location.href="beLogin.we";
}
</script>
<style type="text/css">
.a{
text-decoration: none;
}
</style>
</head>
<body>
<p style="font-size: x-small; text-align: right; padding-right: 15%;">

<c:if test="${empty sessionScope.besid }">
	<a href="beJoin.we" class="a">업체가입</a> | 
	<a href="javascript:loginOpen()" class="a">업체로그인</a> | 
</c:if>

<c:if test="${!empty sessionScope.besid }">
	${sessionScope.besname} 업체(${sessionScope.besort}) 로그인 중 | 
	<a href="logout.we" class="a">로그아웃 |</a>
</c:if>
<a href="beIndex.we" class="a">업체메인</a>

</p>
</body>
</html>



