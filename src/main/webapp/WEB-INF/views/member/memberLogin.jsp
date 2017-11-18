<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.min.css">
<link rel="stylesheet" href="/dist/bootsnipp.min.css">
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js"
	charset="utf-8"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="jquery-3.2.1.min.js"></script>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
$(document).ready(function(){
	

	
	$(.window .close).click(function (e) {  
	    
	    e.preventDefault();  
	    $('#mask, .window').hide();  
	});       
    
});
</script>

<script>
		function getUserData() {
			/* FB.api('/me', function(response) {
			    document.getElementById('response').innerHTML = 'Hello ' + response.name;
			    console.log(response);
			}); */
			FB.api('/me', {
				fields : 'name,email,gender,birthday'
			}, function(response) {
				console.log(JSON.stringify(response));

				var name = response.name;
				var birthday = response.birthday;
				var id = response.id;

				$("#name2").html("환영합니다. " + name + "님");
				$("#name").val(name);

				$("#id2").html(id);
				$("#id").val(id);

				$("#birthday2").html(birthday);
				$("#birthday").val(birthday);

			});
		}

		window.fbAsyncInit = function() {
			//SDK loaded, initialize it
			FB.init({
				appId : '1410871772365225',
				cookie : true, // enable cookies to allow the server to access
				// the session
				xfbml : true, // parse social plugins on this page
				version : 'v2.8' // use graph api version 2.8
			});

			//check user session and refresh it
			FB
					.getLoginStatus(function(response) {
						if (response.status === 'connected') {
							//user is authorized
							//document.getElementById('loginBtn').style.display = 'none';
							getUserData();
						} else {
							document.getElementById('submitBtn').style.display = 'none';
						}
					});
		};

		//load the JavaScript SDK
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id)) {
				return;
			}
			js = d.createElement(s);
			js.id = id;
			js.src = "//connect.facebook.com/ko_KR/sdk.js";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));

		//add event listener to login button
		document.getElementById('loginBtn').addEventListener('click',
				function() {
					//do the login
					FB.login(function(response) {
						if (response.authResponse) {
							access_token = response.authResponse.accessToken; //get access token
							user_id = response.authResponse.userID; //get FB UID
							console.log('access_token = ' + access_token);
							console.log('user_id = ' + user_id);
							$("#access_token").text("접근 토큰 : " + access_token);
							$("#user_id").text("FB UID : " + user_id);
							//user just authorized your app
							//document.getElementById('loginBtn').style.display = 'none';
							getUserData();
						}
					}, {
						scope : 'email,public_profile,user_birthday',
						return_scopes : true
					});
				}, false);
		getUserData();
	</script>
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
</style>
</head>
<body>
	<!--  style="overflow: hidden;" -->
	<form name="fm" action="loginForm.we">
		<section class="login-block">
		<div class="container">
			<div class="row">
				<div class="col-md-4 login-sec">
					<h2 class="text-center">Login Now</h2>
					<form class="login-form">
						<div class="form-group">
							<label for="exampleInputEmail1" class="text-uppercase">Userid</label>
							<input type="text" class="form-control" placeholder="" name="id"
								value="${cookie.saveid.value }">

						</div>
						<div class="form-group">
							<label for="exampleInputPassword1" class="text-uppercase">Password</label>
							<input type="password" class="form-control" placeholder=""
								name="pwd">
						</div>


						<div class="form-check">
							<label class="form-check-label"> <input type="checkbox"
								class="form-check-input" name="saveid" value="on"
								${empty cookie.saveid.value?'':'checked'}> <small>ID기억하기</small>
							</label><span style="margin-left: 115px;"></span><input type="submit"
								value="로그인" class="btn btn-login float-right"> 
								
								<br>
								&nbsp;<span id="naver_id_login"> <a href="${url}"><img
									src="/finalproject/img/naver.login.png"
									style="width: 230px;" /></a>
							</span> <span> <a href="facebook.we" style="text-align: center">
									<div class="fb-login-button" data-size="large"
										data-show-faces="false" data-use-continue-as="false"
										id="loginBtn" style="width: 245px;"></div>
							</a>
							</span>
							<form name="facebookLogin" action="facebookLoginOk.we">
								 <input type="submit"
									id="submitBtn" value="페이스북 로그인">
							</form>
							<br> <br> <label><a href="memberidFind.we">아이디</a>/<a
								href="memberpwdFind.we">비밀번호</a>찾기</label>

						</div>

					</form>
					<div class="copy-text">
						Will you marry me ?<i class="fa fa-heart"></i>
					</div>
				</div>
				<div class="col-md-8 banner-sec">
					<div id="carouselExampleIndicators" class="carousel slide"
						data-ride="carousel">

						<!-- 						<div class="carousel-inner" role="listbox">
							<div class="carousel-item active">
								<img class="d-block img-fluid"
									src="https://static.pexels.com/photos/33972/pexels-photo.jpg"
									alt="First slide">
								<div class="carousel-caption d-none d-md-block">
									<div class="banner-text">
										<h2>This is Heaven</h2>
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing
											elit, sed do eiusmod tempor incididunt ut labore et dolore
											magna aliqua. Ut enim ad minim veniam, quis nostrud
											exercitation</p>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<img class="d-block img-fluid"
									src="https://images.pexels.com/photos/7097/people-coffee-tea-meeting.jpg"
									alt="First slide">
								<div class="carousel-caption d-none d-md-block">
									<div class="banner-text">
										<h2>This is Heaven</h2>
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing
											elit, sed do eiusmod tempor incididunt ut labore et dolore
											magna aliqua. Ut enim ad minim veniam, quis nostrud
											exercitation</p>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<img class="d-block img-fluid"
									src="https://static.pexels.com/photos/497848/pexels-photo-497848.jpeg"
									alt="First slide">
								<div class="carousel-caption d-none d-md-block">
									<div class="banner-text">
										<h2>This is Heaven</h2>
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing
											elit, sed do eiusmod tempor incididunt ut labore et dolore
											magna aliqua. Ut enim ad minim veniam, quis nostrud
											exercitation</p>
									</div>
								</div>
							</div>
						</div>
 -->
					</div>
				</div>
			</div>
		</div>
		</section>

	</form>
</body>
</html>