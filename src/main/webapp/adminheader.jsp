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
	font-family: 'Jeju Hallasan'; 
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<header id="fh5co-header-section" class="sticky-banner" style="border-bottom: 5px solid pink;">
   <div class="container">
      <div class="nav-header">
         <a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
         <h1 id="fh5co-logo">
            <a href="index.we">Nuptial</a>
         </h1>
         <!-- START #fh5co-menu-wrap -->
         <nav id="fh5co-menu-wrap" role="navigation">
            <ul class="sf-menu" id="fh5co-primary-menu">
               <li><a href="#">청첩장</a></li>
               <li><a href="#">패키지</a></li>
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