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
<script>
	function openLogin() {
		var maskHeight = $(document).height(); 
		var maskWidth = $(window).width();
		//마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
		$('#mask').css({'width':maskWidth,'height':maskHeight});
		//마스크의 투명도 처리
		$('#mask').fadeTo("slow",0.8);
		var left = (screen.availWidth-1000)/2;
		var top = (screen.availHeight-590)/2;
		window.open('memberLogin.we', 'login', 'left='+left+',top='+top+', width=1000px,height=590px');
	}
</script>
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
               <li><a href="wdList.we">웨딩홀관리</a></li>
               <li><a href="acon.we?type=0">문의게시판</a></li>
               <li><a href="abelist.we?type=0">가입업체정보</a></li>
               
              <c:if test="${empty sessionScope.admin}">
                  <script>
                  window.alert('잘못된 접근입니다.');
                  location.href='index.we';
                  </script>
              </c:if>


               
            </ul>
         </nav>
      </div>
   </div>
</header>