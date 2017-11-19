<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Insert title here</title>

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
.bgimg{
      width: 100%;
      height: 480px;
      position: relative;
      cursor: pointer;
      display: none;
      background-repeat: no-repeat;
      background-size: 100%;
   }
.bgtext{ 
      position: absolute; 
      z-index: 1; 
      margin: 100px 130px;
   }
</style>
<script>
   var index = 0;
   $(document).ready(function(){
	   slideshow();
   });
   function slideshow() {
       var cd = document.getElementsByClassName("bgimg");
       for (var i = 0; i < cd.length; i++) {
          cd[i].style.display = "none"; 
       }
       index++;
       if (index > cd.length) {index = 1} 
       cd[index-1].style.display = "block"; 
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
<div class="bgimg" style="background-image: url('/finalproject/img/main/1.jpg'); display: block;" 
   onclick="location.href='hallInfo.we?idx=1';">
   <div class="bgtext">
      <p style="font-size: 50px; margin-bottom: 10px; color: #393939;"><strong>호텔프리마</strong></p>
      <p style="width: 560px; background-color: #393939; height: 1px; margin: 0px;"></p>
      <p style="font-size: 20px; color: #393939;">이국적인 정취의 로맨틱한 야외 정원 세련된 인테리어로 멋을 더한 호텔프리마!</p>
   </div>
</div>
<div class="bgimg" style="background-image: url('/finalproject/img/main/2.jpg');"
   onclick="location.href='hallInfo.we?idx=2';">
   <div class="bgtext">
      <p style="font-size: 50px; margin-bottom: 10px; color: white;"><strong>한강호텔웨딩홀</strong></p>
      <p style="width: 550px; background-color: white; height: 1px; margin: 0px;"></p>
      <p style="font-size: 20px; color: white;">전 층 전면 통유리로 한강 전망을 바라보는 웨딩이 펼쳐지는 한강호텔웨딩홀!</p>
   </div>
</div>
<div class="bgimg" style="background-image: url('/finalproject/img/main/4.jpg');"
   onclick="location.href='hallInfo.we?idx=4';">
   <div class="bgtext">
      <p style="font-size: 50px; margin-bottom: 10px; color: #393939;"><strong>프레지던트호텔</strong></p>
      <p style="width: 365px; background-color: #393939; height: 1px; margin: 0px;"></p>
      <p style="font-size: 20px; color: black;">프라이빗한 패밀리웨딩이 펼쳐지는 프레지던트호텔!</p>
   </div>
</div>
<div class="bgimg" style="background-image: url('/finalproject/img/main/33.jpg');"
   onclick="location.href='hallInfo.we?idx=33';">
   <div class="bgtext">
      <p style="font-size: 50px; margin-bottom: 10px; color: white;"><strong>베르가모</strong></p>
      <p style="width: 435px; background-color: white; height: 1px; margin: 0px;"></p>
      <p style="font-size: 20px; color: white;">사랑의 맹세가 시작되는 감동의 순간이 탄생하는 베르가모!</p>
   </div>
</div>
</div>
			<div id="fh5co-countdown">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center animate-box">
						<p class="countdown">
							<span id="days"></span> <span id="hours"></span> <span
								id="minutes"></span> <span id="seconds"></span>
						</p>
					</div>
				</div>
			</div>

			<div id="fh5co-started"
				style="background-image: url(images/cover_bg_2.jpg);"
				data-stellar-background-ratio="0.5">
				<div class="overlay"></div>
				<div class="container">
					<div class="row animate-box">
						<div class="col-md-8 col-md-offset-2 text-center heading-section">
							<h2>Are You Attending?</h2>
							<p>Please Fill-up the form to notify you that you're
								attending. Thanks.
						</div>
					</div>
					<div class="row animate-box">
						<div class="col-md-10 col-md-offset-1">
							<form class="form-inline">
								<div class="col-md-4 col-sm-4">
									<div class="form-group">
										<label for="name" class="sr-only">Name</label> <input
											type="name" class="form-control" id="name" placeholder="Name">
									</div>
								</div>
								<div class="col-md-4 col-sm-4">
									<div class="form-group">
										<label for="email" class="sr-only">Email</label> <input
											type="email" class="form-control" id="email"
											placeholder="Email">
									</div>
								</div>
								<div class="col-md-4 col-sm-4">
									<button type="submit" class="btn btn-primary btn-block">I
										am Attending</button>
								</div>
							</form>
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
