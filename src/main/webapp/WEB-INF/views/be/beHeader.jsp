<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
      <!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->

<link rel="stylesheet" href="https://bootswatch.com/4/journal/bootstrap.css"/> 
<title>Love is staying</title>
<script type="text/javascript">
function loginOpen(){
   //window.open('beLogin.we', 'login', 'width=350px, height=200px, status=no, resizable=no');
   location.href="beLogin.we";
}
</script>
<style type="text/css">
a{
text-decoration: none;

}
a:hover{
   text-decoration: none;
}
</style>
</head>
<body>
<p style="font-size: small; text-align: right; padding-right: 15%;">

<c:if test="${empty sessionScope.besid }">
   <a href="beJoin.we" style="color: black;">업체가입</a> | 
   <a href="javascript:loginOpen()" style="color: black;">업체로그인</a> | 
</c:if>

<c:if test="${!empty sessionScope.besid }">
<<<<<<< HEAD
   ${sessionScope.besname} 업체(${sessionScope.besort}) 로그인 중  |  
   <a href="logout.we" style="color: black;">로그아웃  | </a>
=======
	${sessionScope.besname} 업체(${sessionScope.besort}) 로그인 중  |  
	<a href="logout.we" style="color: black;">로그아웃  | </a>
>>>>>>> branch 'master' of https://github.com/BAMSU/testWeb
</c:if>
<a href="beIndex.we" style="color: black;">업체메인   |  </a>
<a href="index.we" style="color: black;"> 사랑이 머물다</a>

</p>
</body>
</html>


