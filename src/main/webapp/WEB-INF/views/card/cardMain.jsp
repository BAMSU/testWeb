<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=EUC-KR">
<title>Insert title here</title>
<%@include file="/header.jsp" %>
<style> #topMenu { height: 30px; /* ���� �޴��� ���� */ width: 850px; /* ���� �޴��� ���� */ } #topMenu ul { /* ���� �޴� ���� ul�� ������: �����޴��� ul+���� �޴��� ul */ list-style-type: none; /* ���� �޴� ���� ul ������ ��� ǥ�ø� ������ */ margin: 0px; /* ���� �޴� ���� ul�� margin�� ���� */ padding: 0px; /* ���� �޴� ���� ul�� padding�� ���� */ } #topMenu ul li { /* ���� �޴� �ȿ� ul �±� �ȿ� �ִ� li �±��� ��Ÿ�� ����(����/�����޴� ���) */ color: white; /* �۾� ���� ������� ���� */ background-color: rgba(255, 113, 181, 0.5); /* ��� ���� RGB(2D2D2D)�� ���� */ float: left; /* �������� �����ǵ��� ���� */ line-height: 30px; /* �ؽ�Ʈ �� ���� ���̸� 30px�� ���� */ vertical-align: middle; /* ���� ������ ����� ���� */ text-align: center; /* �ؽ�Ʈ�� ����� ���� */ position: relative; /* �ش� li �±� ������ top/left ������ �ʱ�ȭ */ } .menuLink, .submenuLink { /* ���� �޴��� ���� �޴��� a �±׿� �������� ������ ��Ÿ�� */ text-decoration:none; /* a �±��� �ٹ� ȿ�� ���� */ display: block; /* a �±��� Ŭ�� ������ ���� */ width: 150px; /* �⺻ ���̸� 150px�� ���� */ font-size: 12px; /* ��Ʈ ����� 12px�� ���� */ font-weight: bold; /* ��Ʈ�� ���� ���� */ font-family: "Trebuchet MS", Dotum; /* �⺻ ��Ʈ�� ����/�ѱ� ������� ���� */ } .menuLink { /* ���� �޴��� �۾����� ������� ���� */ color: white; } .topMenuLi:hover .menuLink { /* ���� �޴��� li�� ���콺���� �Ǿ��� �� ��Ÿ�� ���� */ color: black; /* �۾� �� ������ */ background-color: white; /* ������ ���� ȸ������ ���� */ } .submenuLink { /* ���� �޴��� a �±� ��Ÿ�� ���� */ color: #2d2d2d; /* �۾� ���� RGB(2D2D2D)�� ���� */ background-color: white; /* ������ ������� ���� */ border: solid 1px black; /* �׵θ��� ���� */ margin-top: -1px; /* �� ĭ�� �ϴ� �׵θ��� �Ʒ�ĭ�� ��� �׵θ��� ���������� ���� */ } .longLink { /* �� �� �� �޴� ��Ÿ�� ���� */ width: 190px; /* ���̴� 190px�� ���� */ } .submenu { /* ���� �޴� ��Ÿ�� ���� */ position: absolute; /* html�� flow�� ������ ��ġ�� �ʰ� absolute ���� */ height: 0px; /* �ʱ� ���̴� 0px�� ���� */ overflow: hidden; /* �� ������ ���̺��� Ŀ���� �ش� ���� ���� */ transition: height .2s; /* height�� ��ȭ ������ �� 0.2�ʰ� ��ȭ �ǵ��� ����(�⺻) */ -webkit-transition: height .2s; /* height�� ��ȭ ������ �� 0.2�ʰ� ��ȭ �ǵ��� ����(������ ũ��/���Ķ��) */ -moz-transition: height .2s; /* height�� ��ȭ ������ �� 0.2�ʰ� ��ȭ �ǵ��� ����(������ ����) */ -o-transition: height .2s; /* height�� ��ȭ ������ �� 0.2�ʰ� ��ȭ �ǵ��� ����(������ �����) */ } .topMenuLi:hover .submenu { /* ���� �޴��� ���콺 ����� ��� �� ���� ���� �޴� ��Ÿ�� ���� */ height: 93px; /* ���̸� 93px�� ���� */ } .submenuLink:hover { /* ���� �޴��� a �±��� ���콺 ���� ��Ÿ�� ���� */ color: red; /* �۾����� ���������� ���� */ background-color: #dddddd; /* ����� RGB(DDDDDD)�� ���� */ } </style>
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
	body{
		text-align: center;
		margin-left: 100px;
		margin-right: 100px;
		width: 1100px;
	}
        * {
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            margin: 0;
            padding: 0;
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
</script>
</head>
<body>
<nav id="topMenu" style="margin-left: 20px;">
<ul class="nav nav-tabs">
			  <li class="topMenuLi">
			    <a class="menuLink" data-toggle="tab" href="cardList.we?type=1">�α��</a>
			  </li>
			  <li class="topMenuLi">
			    <a class="menuLink" data-toggle="tab" href="cardList.we?type=2">�ֽż�</a>
			  </li>
			  <li class="topMenuLi">
			    <a class="menuLink" data-toggle="tab" href="cardList.we?type=3">�������ݼ�</a>
			  </li>
			  <li class="topMenuLi">
			    <a class="menuLink" data-toggle="tab" href="cardList.we?type=4">�������ݼ�</a>
			  </li>
			</ul>

</nav>
<br><br>
  <c:forEach var="i" items="${list}" >
		 <a href="cardMake.we?idx=${i.card_idx }"><div class="gallery_content">
           <img src="card_img/${i.card_img}" width="300px" height="150px">
            <div class="content">
                <h1>${i.card_name }</h1>
                <p>${i.card_price }��</p>
            </div>
            <div class="overlay darkBlue"></div>
        </div></a>
  </c:forEach>
  <div>
  <ul class="pagination">
    <li class="page-item disabled">
      <a class="page-link" href="#">&laquo;</a>
    </li>
    <li class="page-item active">
      <a class="page-link" href="#">1</a>
    </li>
    <li class="page-item">
      <a class="page-link" href="#">2</a>
    </li>
    <li class="page-item">
      <a class="page-link" href="#">3</a>
    </li>
    <li class="page-item">
      <a class="page-link" href="#">4</a>
    </li>
    <li class="page-item">
      <a class="page-link" href="#">5</a>
    </li>
    <li class="page-item">
      <a class="page-link" href="#">&raquo;</a>
    </li>
  </ul>
</div>
<div id="page">${pageStr}</div>
</body>
</html>
