<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Love is staying</title>
<!-- Superfish -->
<link rel="stylesheet" href="css/superfish.css">


<link rel="stylesheet" href="css/style.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="css/bootstrap.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="css/magnific-popup.css">
<style>
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);
header,footer,section,input,p,div,a,span,table,font,strong,small,h1,h2,h3,h4,h5{
	font-family: 'Hanna'; 
}
a{
	text-decoration: none;
	
}
a:hover{
	text-decoration: none;
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.min.css">
<link rel="stylesheet" href="/dist/bootsnipp.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="jquery-3.2.1.min.js"></script>
<script src="https://code.jquery.com/jquery-latest.js"></script>
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
<style>
@import
	url("//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css")
	;

.login-block {
	background-color: pink;
	float: left;
	width: 100%;
	padding: 50px 0;
	float: left;
}

.banner-sec {
	background:
		url(https://freehtml5.co/demos/nuptial/images/cover_bg_2.jpg)
		no-repeat left bottom;
	background-size: cover;
	min-height: 500px;
	border-radius: 0 10px 10px 0;
	padding: 0;
}

.container {
	background: #fff;
	border-radius: 10px;
}

.carousel-inner {
	border-radius: 0 10px 10px 0;
}

.carousel-caption {
	text-align: left;
	left: 5%;
}

.login-sec {
	padding: 50px 30px;
	position: relative;
}

.login-sec .copy-text {
	position: absolute;
	width: 80%;
	bottom: 20px;
	font-size: 13px;
	text-align: center;
}

.login-sec .copy-text i {
	color: #FEB58A;
}

.login-sec .copy-text a {
	color: #E36262;
}

.login-sec h2 {
	margin-bottom: 30px;
	font-weight: 800;
	font-size: 30px;
	color: #DE6262;
}

.login-sec h2:after {
	content: " ";
	width: 100px;
	height: 5px;
	background: #FEB58A;
	display: block;
	margin-top: 20px;
	border-radius: 3px;
	margin-left: auto;
	margin-right: auto
}

.btn-login {
	background: #DE6262;
	color: #fff;
	font-weight: 600;
	margin-left: 260px;
}

.banner-text {
	width: 70%;
	position: absolute;
	bottom: 40px;
	padding-left: 20px;
}

.banner-text h2 {
	color: #fff;
	font-weight: 600;
}

.banner-text h2:after {
	content: " ";
	width: 100px;
	height: 5px;
	background: #FFF;
	display: block;
	margin-top: 20px;
	border-radius: 3px;
}

.banner-text p {
	color: #fff;
}
.song {
	height: 770px;
}
</style>
</head>
<body>

<header id="fh5co-header-section" class="sticky-banner" style="border-bottom: 5px solid pink;">
   <div class="container" style="width:900px;">
      <div class="nav-header">
         <a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
         <h1 id="fh5co-logo">
            <a href="index.we">Love is staying</a>
         </h1>
         <!-- START #fh5co-menu-wrap -->
         <nav id="fh5co-menu-wrap" role="navigation">
            <ul class="sf-menu" id="fh5co-primary-menu">
               <li><a href="admin.we">Home</a></li>
               <li><a href="wdList.we">웨딩홀관리</a></li>
               <li><a href="acon.we?type=0">문의게시판</a></li>
               <li><a href="abelist.we?type=0">가입업체정보</a></li>
               
              <%-- <c:if test="${empty sessionScope.admin}">
                  <script>
                  window.alert('잘못된 접근입니다.');
                  location.href='index.we';
                  </script>
              </c:if> --%>


               
            </ul>
         </nav>
      </div>
   </div>
</header>

<div class="song">
<form class="login-form" name="fm" action="adminLogin2.we">
		<section class="login-block" style="height:400px; margin:auto auto; position:relative; top:20%; background-color:white;">
		<div class="container" align="center" style="width:400px; margin:auto auto;position:relative; top:20%;">
			<div class="row" align="center" style="width:400px; margin:auto auto;">
				<div class="login-sec" style="width:400px; align:center; margin: auto auto;">
				
					<c:if test="${empty sessionScope.admin}">
                 <h2 class="text-center">관리자 인증 코드</h2>
					
						<div class="form-group">
							<label for="exampleInputEmail1" class="text-uppercase">CODE</label>
							<input type="password" class="form-control" placeholder="" name="id">
							<input type="submit"
								value="로그인" class="btn btn-login float-right"> 
						</div>
              </c:if>
              
              <c:if test="${!empty sessionScope.admin}">
                <div class="copy-text">
						<font size="5">관리자 페이지 입니다 ! <br>상단 메뉴바를 클릭해주세요.</font><i class="fa fa-heart"></i>
						</div>
              </c:if>
              
              
              
					
						
						
						
					
				</div>
			</div>
		</div>
		</section>

	</form>
	
	</div>
<%@include file="/footer.jsp"%>
</body>
</html>