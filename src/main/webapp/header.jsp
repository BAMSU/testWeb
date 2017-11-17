<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!-- Superfish -->
<link rel="stylesheet" href="css/superfish.css">


<link rel="stylesheet" href="css/style.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="css/bootstrap.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="css/magnific-popup.css">

<style>
@import url('//fonts.googleapis.com/earlyaccess/jejuhallasan.css');
header,footer,section,input,p,div,a,span,table,font,strong,small,h1,h2,h3,h4,h5{
	font-family: ''; 
}
a{
	text-decoration: none;
	
}
a:hover{
	text-decoration: none;
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<header id="fh5co-header-section" class="sticky-banner" style="border-bottom: 5px solid pink;">
   <div class="container">
      <div class="nav-header">
         <a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
         <h1 id="fh5co-logo">
            <a href="index.we">Love is staying</a>
         </h1>
         <!-- START #fh5co-menu-wrap -->
         <nav id="fh5co-menu-wrap" role="navigation">
            <ul class="sf-menu" id="fh5co-primary-menu">
               <li><a href="index.we">Home</a></li>
               <li><a href="#" class="fh5co-sub-ddown">웨딩홀</a>
						<ul class="fh5co-sub-menu">
							<li><a href="#">웨딩홀 검색</a></li>
							<li><a href="#">홀 랭킹</a></li>
							<li><a href="hallCompare.we">홀vs홀</a></li>
						</ul></li>
               <li><a href="itemList.we?category=dress">드레스</a></li>
               <li><a href="#">청첩장</a></li>
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
               <c:if test="${empty sessionScope.sname}">
                  <li><a href="javascript:openLogin()">LOGIN</a></li>
                  <li><a href="memberJoin.we">SIGN UP</a></li>
               </c:if>


               <c:if test="${!empty sname}">
                  <li><a href="mypage.we">MYPAGE</a></li>
                  <li><a href="memberLogout.we">LOGOUT</a></li>
               </c:if>
               
            </ul>
         </nav>
      </div>
   </div>
</header>