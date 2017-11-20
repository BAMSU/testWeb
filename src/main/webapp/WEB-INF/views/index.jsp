<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Love is staying</title>

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico">

<link href="https://fonts.googleapis.com/css?family=Montez"
	rel="stylesheet">
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300'
	rel='stylesheet' type='text/css'>

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
<script src="https://code.jquery.com/jquery-latest.js"></script>

<!-- Modernizr JS -->
<script src="js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
<style>
#mask {
	position: absolute;
	z-index: 9000;
	background-color: #000;
	display: none;
	left: 0;
	top: 0;
}

.bgimg {
	width: 100%;
	height: 480px;
	position: relative;
	cursor: pointer;
	display: none;
	background-repeat: no-repeat;
	background-size: 100%;
}

.bgtext {
	position: absolute;
	z-index: 1;
	margin: 100px 130px;
}


	.title-arch {
		text-align: center;
		margin: 50px 0;
		font-size: 22px;
		letter-spacing: 2px;
		text-transform: uppercase;
	}
.project {
	width: 100%;
	height: 500px;
	background-image: url(https://s-media-cache-ak0.pinimg.com/originals/28/8b/01/288b016eb2dc4835ddc4153a37de41cc.jpg);
	background-size: cover;
	background-position: center;
	padding: 0 !important;
	float:left;
}

.project-2 {
	background-image: url(https://scontent-ort2-1.cdninstagram.com/t51.2885-15/e35/c154.0.621.621/22280618_2089151737777353_3883153810046058496_n.jpg);
}

.project-3 {
	background-image: url(https://media.istockphoto.com/vectors/wedding-invitation-with-flowers-cherry-blossom-vector-id534536419);
}

.project-4 {
	background-image: url(https://s-media-cache-ak0.pinimg.com/originals/2f/52/14/2f5214816debb9392d1872dee0378263.jpg);
}

.project-hover {
	width: 100%;
	height: 100%;
	color: #fff;
	opacity: 0;
	-webkit-transition: all 0.5s ease;
	-moz-transition: all 0.5s ease;
	-o-transition: all 0.5s ease;
	transition: all 0.5s ease;
	background-color: pink;
	padding: 40% 30px !important;
	
}

.project-hover hr {
	height: 30px;
	width: 0;
	-webkit-transition: all 0.5s ease;
	-moz-transition: all 0.5s ease;
	-o-transition: all 0.5s ease;
	transition: all 0.5s ease;
	background-color: rgba(255, 255, 255, 1);
	border: 0;
}

.project-hover a {
	color: rgba(255, 255, 255, 1);
	padding: 2px 22px;
	line-height: 40px;
	border: 2px solid rgba(255, 255, 255, 1);
	-webkit-transition: all 0.5s ease-in-out;
	-moz-transition: all 0.5s ease-in-out;
	-o-transition: all 0.5s ease-in-out;
	transition: all 0.5s ease-in-out;
}

.project-hover a:hover {
	border-color: rgba(51, 51, 51, 1);
	color: rgba(51, 51, 51, 1);
	background-color: #FFF;
}

.project:hover .project-hover {
	opacity: 1;
}

.project:hover .project-hover hr {
	width: 100%;
	height: 5px;
}
#con{
margin: 0px auto;

}
</style>
<script>
	var index = 0;
	$(document).ready(function() {
		slideshow();
	});
	function slideshow() {
		var cd = document.getElementsByClassName("bgimg");
		for (var i = 0; i < cd.length; i++) {
			cd[i].style.display = "none";
		}
		index++;
		if (index > cd.length) {
			index = 1
		}
		cd[index - 1].style.display = "block";
		setTimeout(slideshow, 2000);
	}
</script>
</head>
<body>
	<div id="mask"></div>
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

	<div id="fh5co-wrapper">
		<div id="fh5co-page">

			<div class="fh5co-hero" data-section="home">

				<div class="fh5co-cover text-center"
					data-stellar-background-ratio="0.5"
					style="background-image: url(https://freehtml5.co/demos/nuptial/images/cover_bg_1.jpg);">
					<div class="display-t">
						<div class="display-tc">
							<div class="container">
								<div class="col-md-10 col-md-offset-1">
									<div class="animate-box">
										<img alt="zz" src="images/p.png" width="250" height="200"
											style="margin-bottom: 205px;">
									</div>


								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<%@include file="/header.jsp"%>

			<!-- end:header-top -->
			<div>
				<div class="bgimg"
					style="background-image: url('/finalproject/img/main/1.jpg'); display: block;"
					onclick="location.href='hallInfo.we?idx=1';">
					<div class="bgtext">
						<p style="font-size: 50px; margin-bottom: 10px; color: #393939;">
							<strong>호텔프리마</strong>
						</p>
						<p
							style="width: 560px; background-color: #393939; height: 1px; margin: 0px;"></p>
						<p style="font-size: 20px; color: #393939;">이국적인 정취의 로맨틱한 야외
							정원 세련된 인테리어로 멋을 더한 호텔프리마!</p>
					</div>
				</div>
				<div class="bgimg"
					style="background-image: url('/finalproject/img/main/2.jpg');"
					onclick="location.href='hallInfo.we?idx=2';">
					<div class="bgtext">
						<p style="font-size: 50px; margin-bottom: 10px; color: white;">
							<strong>한강호텔웨딩홀</strong>
						</p>
						<p
							style="width: 550px; background-color: white; height: 1px; margin: 0px;"></p>
						<p style="font-size: 20px; color: white;">전 층 전면 통유리로 한강 전망을
							바라보는 웨딩이 펼쳐지는 한강호텔웨딩홀!</p>
					</div>
				</div>
				<div class="bgimg"
					style="background-image: url('/finalproject/img/main/4.jpg');"
					onclick="location.href='hallInfo.we?idx=4';">
					<div class="bgtext">
						<p style="font-size: 50px; margin-bottom: 10px; color: #393939;">
							<strong>프레지던트호텔</strong>
						</p>
						<p
							style="width: 365px; background-color: #393939; height: 1px; margin: 0px;"></p>
						<p style="font-size: 20px; color: black;">프라이빗한 패밀리웨딩이 펼쳐지는
							프레지던트호텔!</p>
					</div>
				</div>
				<div class="bgimg"
					style="background-image: url('/finalproject/img/main/33.jpg');"
					onclick="location.href='hallInfo.we?idx=33';">
					<div class="bgtext">
						<p style="font-size: 50px; margin-bottom: 10px; color: white;">
							<strong>베르가모</strong>
						</p>
						<p
							style="width: 435px; background-color: white; height: 1px; margin: 0px;"></p>
						<p style="font-size: 20px; color: white;">사랑의 맹세가 시작되는 감동의 순간이
							탄생하는 베르가모!</p>
					</div>
				</div>
			</div>
			<!--세번째 블록 메인   -->
			<div id="con">
				<div
					class="col-xl-3 col-lg-3 col-md-3 col-sm-3 project wow animated animated4 fadeInLeft">
					<div class="project-hover">
						<h2>웨딩홀</h2>

						<hr />
						
						<a href="#">See Project</a>
					</div>
				</div>
				<div
					class="col-xl-3 col-lg-3 col-md-3 col-sm-3 project project-2 wow animated animated3 fadeInLeft">
					<div class="project-hover">
						<h2>신혼여행</h2>
						<hr />
						
						<a href="#">See Project</a>
					</div>
				</div>
				<div
					class="col-xl-3 col-lg-3 col-md-3 col-sm-3 project project-3 wow animated animated2 fadeInLeft">
					<div class="project-hover">
						<h2>청첩장</h2>
						<hr />
						
						<a href="#">만들러 가기 뀨?</a>
					</div>
				</div>
				<div
					class="col-xl-3 col-lg-3 col-md-3 col-sm-3 project project-4 wow animated fadeInLeft">
					<div class="project-hover">
						<h2>드레스</h2>
						<hr />
						
						<a href="#">See Project</a>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>

			<div id="fh5co-started"
				style="background-image: url(images/cover_bg_2.jpg);"
				data-stellar-background-ratio="0.5">
				<div class="overlay"></div>
				<div class="container">
					<div class="row animate-box">
						<div class="col-md-8 col-md-offset-2 text-center heading-section">
							<h2>Are You getting married?</h2>
							<p>Please Fill-up the form to notify you that you're
								attending. Thanks.
						</div>
					</div>
					
				</div>
			</div>

			<%@include file="/footer.jsp"%>



		</div>
		<!-- END fh5co-page -->

	</div>
	<!-- END fh5co-wrapper -->

	<!-- Google Map -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script>
	<!-- jQuery -->
	<script src="dist/scripts.min.js"></script>
</body>
</html>
