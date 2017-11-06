<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<!-- CSS includes -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="fonts/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="css/theme.css" rel="stylesheet">


</head>
<body>
	<script type="text/javascript"
		src="http://bpmaker.giffy.me/userdata/user/54/54797/2/parts.js"></script>
	<!-- 하트내리는 효과  -->

	<script type="text/javascript"
		src="http://bpmaker.giffy.me/userdata/user/3/3575/8/parts.js"></script>
	<p style="text-align: center; margin: 0px;">
		<a href="http://bpmaker.giffy.me/"></a>
	</p>
	<p
		style="text-align: center; margin: 2px 0px 0px 0px; font-size: 10px; padding: 0;">
		<a style="text-decoration: none; margin: 0; padding: 0;"
			href="http://bpmaker.giffy.me/parts/userPartsId/17340/"></a>
	</p>
	<!-- 마우스 위에 하트 내려지는 효과  -->




	<!-- Navbar -->
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a href="index.html" title="Wedding Cake Bootstrap Theme"> <img
					class="img" src="img/3.png" alt="Wedding Cake Bootstrap Theme"
					style="width: 30%; height: 10%;" />
				</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a href="index.we" class="smooth-scroll">HOME</a></li>
					<li><a href="#">ABOUT</a></li>
					<li><a href="#">SERVICES</a></li>
					<li><a href="#">OFFERS</a></li>
					<li><a href="#">GALLERY</a></li>
					<li><a href="#">CONTACT</a></li>


					<c:if test="${empty sessionScope.sid}">
						<li><a href="memberLogin.we">LOGIN</a></li>
					</c:if>


					<c:if test="${!empty sessionScope.sid}">
						<li><a href="#">MYPAGE</a></li>
					<li><a href="memberLogout.we">LOGOUT</a></li>
					</c:if>
					

					<li><a href="memberJoin.we">SIGN UP</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

	<!-- Carousel -->
	<div id="theme-carousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#theme-carousel" data-slide-to="0" class="active"></li>
			<li data-target="#theme-carousel" data-slide-to="1"></li>
			<li data-target="#theme-carousel" data-slide-to="2"></li>
		</ol>
		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="img/wedding.jpg" alt="carousel2"
					style="width: 100%; height: 650px;" />
				<div class="carousel-caption">
					<h2>"A special cake for a special day"</h2>
					<p>Julia Child</p>
				</div>
			</div>
			<div class="item">
				<img src="img/wedding2.jpg" alt="carousel1"
					style="width: 100%; height: 650px;" />
				<div class="carousel-caption">
					<h2>What does it come from?</h2>
					<p>Contrary to popular belief, Lorem Ipsum is not simply random
						text.</p>
				</div>
			</div>
			<div class="item">
				<img src="img/wedding3.jpg" alt="carousel3"
					style="width: 100%; height: 650px;">
				<div class="carousel-caption">
					<h2>Why do we use it?</h2>
					<p>It is a long established fact that a reader will be
						distracted by the readable content of a page when looking at its
						layout.</p>
				</div>
			</div>
		</div>
		<!-- Controls -->
		<a class="left carousel-control" href="#theme-carousel" role="button"
			data-slide="prev">
			<div class="carousel-control-arrow">&#8249;</div>
		</a> <a class="right carousel-control" href="#theme-carousel"
			role="button" data-slide="next">
			<div class="carousel-control-arrow">&#8250;</div>
		</a>
	</div>

	<div class="container-home">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<h1 class="text-danger">Welcome!</h1>
					<h3>Why do we use it?</h3>
					<p class="text-justify">It is a long established fact that a
						reader will be distracted by the readable content of a page when
						looking at its layout. The point of using Lorem Ipsum is that it
						has a more-or-less normal distribution of letters, as opposed to
						using 'Content here, content here', making it look like readable
						English. Many desktop publishing packages and web page editors now
						use Lorem Ipsum as their default model text, and a search for
						'lorem ipsum' will uncover many web sites still in their infancy.
						Various versions have evolved over the years, sometimes by
						accident, sometimes on purpose.</p>
				</div>
				<div class="col-md-4 text-center">
					<img src="images/image1.jpg" class="img-responsive" />
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<img src="images/image2.jpg" class="img-responsive" />
				</div>
				<div class="col-md-8">
					<h1 class="text-danger">About Us</h1>
					<h3>What is Lorem Ipsum?</h3>
					<p class="text-justify">Lorem Ipsum is simply dummy text of the
						printing and typesetting industry. Lorem Ipsum has been the
						industry's standard dummy text ever since the 1500s, when an
						unknown printer took a galley of type and scrambled it to make a
						type specimen book. It has survived not only five centuries, but
						also the leap into electronic typesetting, remaining essentially
						unchanged. It was popularised in the 1960s with the release of
						Letraset sheets containing Lorem Ipsum passages, and more recently
						with desktop publishing software like Aldus PageMaker including
						versions of Lorem Ipsum.</p>
				</div>
			</div>
		</div>
	</div>

	<%@include file="/footer.jsp" %>
	<script src="js/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>


</body>
</html>
