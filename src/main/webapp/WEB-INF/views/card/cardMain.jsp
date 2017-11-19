<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Love is staying</title>
<link rel="stylesheet" href="https://bootswatch.com/4/journal/bootstrap.css"/> 
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<style> #topMenu { height: 30px; /* 메인 메뉴의 높이 */ width: 850px; /* 메인 메뉴의 넓이 */ } #topMenu ul { /* 메인 메뉴 안의 ul을 설정함: 상위메뉴의 ul+하위 메뉴의 ul */ list-style-type: none; /* 메인 메뉴 안의 ul 내부의 목록 표시를 없애줌 */ margin: 0px; /* 메인 메뉴 안의 ul의 margin을 없앰 */ padding: 0px; /* 메인 메뉴 안의 ul의 padding을 없앰 */ } #topMenu ul li { /* 메인 메뉴 안에 ul 태그 안에 있는 li 태그의 스타일 적용(상위/하위메뉴 모두) */ color: white; /* 글씨 색을 흰색으로 설정 */ background-color: #F69D9D; opacity:0.7; /* 배경 색을 RGB(2D2D2D)로 설정 */ float: left; /* 왼쪽으로 나열되도록 설정 */ line-height: 30px; /* 텍스트 한 줄의 높이를 30px로 설정 */ vertical-align: middle; /* 세로 정렬을 가운데로 설정 */ text-align: center; /* 텍스트를 가운데로 정렬 */ position: relative; /* 해당 li 태그 내부의 top/left 포지션 초기화 */ } .menuLink, .submenuLink { /* 상위 메뉴와 하위 메뉴의 a 태그에 공통으로 설정할 스타일 */ text-decoration:none; /* a 태그의 꾸밈 효과 제거 */ display: block; /* a 태그의 클릭 범위를 넓힘 */ width: 150px; /* 기본 넓이를 150px로 설정 */ font-size: 12px; /* 폰트 사이즈를 12px로 설정 */ font-weight: bold; /* 폰트를 굵게 설정 */ font-family: "Trebuchet MS", Dotum; /* 기본 폰트를 영어/한글 순서대로 설정 */ } .menuLink { /* 상위 메뉴의 글씨색을 흰색으로 설정 */ color: white; } .topMenuLi:hover .menuLink { /* 상위 메뉴의 li에 마우스오버 되었을 때 스타일 설정 */ color: black; /* 글씨 색 빨간색 */ background-color: white; /* 배경색을 밝은 회색으로 설정 */ } .submenuLink { /* 하위 메뉴의 a 태그 스타일 설정 */ color: #2d2d2d; /* 글씨 색을 RGB(2D2D2D)로 설정 */ background-color: white; /* 배경색을 흰색으로 설정 */ border: solid 1px black; /* 테두리를 설정 */ margin-top: -1px; /* 위 칸의 하단 테두리와 아래칸의 상단 테두리가 겹쳐지도록 설덩 */ } .longLink { /* 좀 더 긴 메뉴 스타일 설정 */ width: 190px; /* 넓이는 190px로 설정 */ } .submenu { /* 하위 메뉴 스타일 설정 */ position: absolute; /* html의 flow에 영향을 미치지 않게 absolute 설정 */ height: 0px; /* 초기 높이는 0px로 설정 */ overflow: hidden; /* 실 내용이 높이보다 커지면 해당 내용 감춤 */ transition: height .2s; /* height를 변화 시켰을 때 0.2초간 변화 되도록 설정(기본) */ -webkit-transition: height .2s; /* height를 변화 시켰을 때 0.2초간 변화 되도록 설정(구버전 크롬/사파라ㅣ) */ -moz-transition: height .2s; /* height를 변화 시켰을 때 0.2초간 변화 되도록 설정(구버전 파폭) */ -o-transition: height .2s; /* height를 변화 시켰을 때 0.2초간 변화 되도록 설정(구버전 오페라) */ } .topMenuLi:hover .submenu { /* 상위 메뉴에 마우스 모버한 경우 그 안의 하위 메뉴 스타일 설정 */ height: 93px; /* 높이를 93px로 설정 */ } .submenuLink:hover { /* 하위 메뉴의 a 태그의 마우스 오버 스타일 설정 */ color: red; /* 글씨색을 빨간색으로 설정 */ background-color: #dddddd; /* 배경을 RGB(DDDDDD)로 설정 */ } </style>
<style>
   #page{
      width:100%;
      text-align: center;
      text-decoration:none;
   }
   a{
   text-decoration:none;
    color: black;
   }
   #align{
      
   }
   section{
      text-align: center;
      margin-left: 100px;
      margin-right: 100px;
      width: 1000px;
   }
        
      div{
      padding: 20px 20px 20px 20px;
      }
        body {
            font-family: "Nanum Barun Gothic", "Ubuntu Condensed", "Noto Sans Korean";;
        }
        .gallery_content:hover .overlay.right {
            top: 0;
        }

        #gallery_layout {
            width: 1000px;
            margin: 0 auto;
        }

        #gallery_layout:after {
            content: "";
            display: block;
            clear: both;
        }

        .gallery_content {
            position: relative;
            float: left;
            width: 25%;
            height: 250px;
            overflow: hidden;
        }

        .gallery_content img {
            width: 100%;
            height: 100%;
            display: block;
            margin: 0 auto;
            transition: all 1s ease-in-out;
        }

        .content {
            z-index: 1;
            display: none;
            color: #fff;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
        
        .content h1 {
            font-size: 1.2em;
            text-transform: uppercase;
            text-align: center;
        }
        .content p {
            padding: 2px 0;
            font-size: 0.8em;
            text-align: center;
        }        
        .gallery_content:hover .content {
            display: block;
            transition: all 1s ease-in-out;
        }

        .gallery_content:hover img {
            transform: scale(1.2);
            transition: all 1s ease-in-out;
        }

        .overlay {
            display: none;
            width: 100%;
            height: 100%;
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            transition: top 0.3s, right 0.3s, bottom 0.3s, left 0.3s;
        }

        /* overlay color */
        .overlay.darkBlue {
            background-color:rgba(31, 50, 99, 0.6);
        }
        .overlay.gold {
            background-color:rgba(216, 177, 126, 0.5);
        }  
        .overlay.pink {
            background-color:rgba(255, 113, 181, 0.7);
        }  
        .overlay.black {
            background-color: rgba(0, 0, 0, 0.5);
        }  
        .overlay.yellow {
            background-color: rgba(103, 58, 183, 0.5);
        }
        .overlay.red {
            background-color: rgba(244, 67, 54, 0.5);
        }      

        .gallery_content:hover .overlay {
            display: block;
            transition: all 0.5s ease-in-out;
        }
        
        @media all and (min-width: 1000px) {
            #gallery_layout {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
            }  
        }

        @media all and (max-width: 1000px) {
        #gallery_layout {
            width: 100%;
        }
        .gallery_content {
            width: 50%;
        }

        }
        @media all and (max-width: 500px) {
        #gallery_layout {
            width: 100%;
        }
        .gallery_content {
            width: 100%;
        }
        }
</style>
<script>
   function test(){
       window.open('test.we','ordertest',"width=300,height=800");
   }
   $(document).ready(function(){
      var type = '${type}';
      for(var i=0;i<4;i++){
         $('.nav-link:eq('+i+')').attr('class','nav-link');
      }
      $('.nav-link:eq('+type+')').addClass('active');
   });
</script>
</head>

<body>
<%@include file="/header.jsp" %>
<br><br> 
<section>
<div style="">
<ul class="nav nav-tabs" style="margin-left: 20px;">
  <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="cardList.we?type=1">인기순</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="cardList.we?type=2">최신순</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="cardList.we?type=3">낮은가격순</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="cardList.we?type=4">높은가격순</a>
  </li>
</ul>
<br><br>
  <c:forEach var="i" items="${list}" >
       <a href="cardMake.we?idx=${i.card_idx }"><div class="gallery_content">
           <img src="card_img/${i.card_img}" width="300px" height="150px">
            <div class="content">
                <h1>${i.card_name }</h1>
                <p style="color:white;">${i.card_price }원</p>
            </div>
            <div class="overlay darkBlue"></div>
        </div></a>
  </c:forEach>
  </div>
<div id="page">${pageStr}</div>
</section>
</body>
<%@include file="/footer.jsp" %>
</html>