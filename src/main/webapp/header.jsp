<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">
	
	<link href="https://fonts.googleapis.com/css?family=Montez" rel="stylesheet">
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Superfish -->
	<link rel="stylesheet" href="css/superfish.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">
	
	<link rel="stylesheet" href="css/style.css">


	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

<header id="fh5co-header-section" class="sticky-banner">
	<div class="container">
		<div class="nav-header">
			<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
			<h1 id="fh5co-logo">
				<a href="index.html">Nuptial</a>
			</h1>
			<!-- START #fh5co-menu-wrap -->
			<nav id="fh5co-menu-wrap" role="navigation">
				<ul class="sf-menu" id="fh5co-primary-menu">
					<li class="active"><a href="index.html">Home</a></li>
					<li><a href="#">웨딩홀</a></li>
					<li><a href="itemList.we?category=dress">드레스</a></li>
					<li><a href="#" class="fh5co-sub-ddown">청첩장</a>
						<ul class="fh5co-sub-menu">
							<li><a href="#">유림</a></li>
							<li><a href="#">유림</a></li>
							<li><a href="#">유림</a></li>
							<li><a href="#">유림</a></li>
							<li><a href="#">유림</a></li>
						</ul></li>
					<li><a href="#">패키지</a></li>
					<li class="fh5co-sub-ddown"><a href="#">웨딩 컬렉션</a>
						<ul class="fh5co-sub-menu">
							<li><a href="itemList.we?category=studio">스튜디오</a></li>
							<li><a href="itemList.we?category=makeup">메이크업</a></li>
							<li><a href="itemList.we?category=suit">예복</a></li>
							<li><a href="itemList.we?category=car">웨딩카</a></li>
							<li><a href="itemList.we?category=shoes">웨딩슈즈</a></li>
							<li><a href="itemList.we?category=bouq">부케</a></li>
						</ul></li>
					<li><a href="#">상담하기</a></li>
					<li><a href="#">상담하기</a></li>
					<c:if test="${empty sessionScope.sname}">
						<li><a href="javascript:openLogin()">LOGIN</a></li>
					</c:if>


					<c:if test="${!empty sname}">
						<li><a href="mypage.we">MYPAGE</a></li>
						<li><a href="memberLogout.we">LOGOUT</a></li>
					</c:if>
					<li><a href="memberJoin.we">SIGN UP</a></li>
				</ul>
			</nav>
		</div>
	</div>
</header>