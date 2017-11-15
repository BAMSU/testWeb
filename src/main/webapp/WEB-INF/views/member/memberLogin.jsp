<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js" charset="utf-8"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="jquery-3.2.1.min.js"></script>
  
  <style type="text/css">
  
  html, div, body,h3{
  	margin: 0;
  	padding: 0;
  }
  h3{
  	display: inline-block;
  	padding: 0.6em;
  }
  </style>

</head>
<body>

	<h2>로 그 인</h2>
	<form name="fm" action="loginForm.we">
		<fieldset>
			<table align="center">

				<tr>
					<th>ID</th>
					<td><input type="text" name="id" value="${cookie.saveid.value }"></td>
					
				</tr>
				<tr>
					<th>Password</th>
					<td><input type="password" name="pwd"></td>
				</tr>
				
				<tr>
					<td colspan="2" align="center"><input type="checkbox"
						name="saveid" value="on" ${empty cookie.saveid.value?'':'checked'}>ID
						기억하기 <input type="submit" value="로그인"></td>
				</tr>
				
				<tr>
				<td><a href="memberidFind.we">아이디</a>/<a href="memberpwdFind.we">비밀번호</a>찾기</td>
				</tr>


			</table>
			</form>
			<div id="naver_id_login"><a href="${url}"><img width="223" src="/finalproject/img/naver.login.png" style="width: 240px;"/></a></div>
<!-- login btn -->

<a href="facebook.we" style="text-align:center">
<div class="fb-login-button" data-size="large"
 data-show-faces="false" 
 data-use-continue-as="false" id="loginBtn"style="width: 245px;" ></div></a>

    
<script>
function getUserData() {
    /* FB.api('/me', function(response) {
        document.getElementById('response').innerHTML = 'Hello ' + response.name;
        console.log(response);
    }); */
    FB.api('/me', {fields: 'name,email,gender,birthday'}, function(response) {
        console.log(JSON.stringify(response));
     
        
    	var name = response.name;
		var birthday = response.birthday;
		var id = response.id;
	
		$("#name2").html("환영합니다. "+name+"님");
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
        appId      : '1410871772365225',
        cookie     : true,  // enable cookies to allow the server to access
                // the session
        xfbml      : true,  // parse social plugins on this page
        version    : 'v2.8' // use graph api version 2.8
    });
  
    //check user session and refresh it
    FB.getLoginStatus(function(response) {
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
(function(d, s, id){
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) {return;}
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.com/ko_KR/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
  
//add event listener to login button
document.getElementById('loginBtn').addEventListener('click', function() {
    //do the login
    FB.login(function(response) {
        if (response.authResponse) {
            access_token = response.authResponse.accessToken; //get access token
            user_id = response.authResponse.userID; //get FB UID
            console.log('access_token = '+access_token);
            console.log('user_id = '+user_id);
            $("#access_token").text("접근 토큰 : "+access_token);
            $("#user_id").text("FB UID : "+user_id);
            //user just authorized your app
            //document.getElementById('loginBtn').style.display = 'none';
            getUserData();
        }
    }, {scope: 'email,public_profile,user_birthday',
        return_scopes: true});
}, false);
getUserData();
</script>
<form name="facebookLogin" action ="facebookLoginOk.we">
<h2>페이스북 로그인 정보</h2>
<div id="name2"></div>
<div  id="birthday2"></div>
<input type="hidden" name="names" id="name">
<input type="hidden" name="birthdays" id="birthday">
<input type="hidden" name="ids" id="id">
<input type="submit" id="submitBtn" value="해당정보로 로그인">
</form>
	
	 


<br>
			
		</fieldset>
	

</body>
</html>