<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=EUC-KR">
<title>Insert title here</title>
<style>
	#page{
		width:100%;
		text-align: center;
		text-decoration: none;
	}
	#align{
		
	}
	body{
		margin-left: 100px;
		margin-right: 100px;
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
<div id="align">
<a href="cardMain.we">인기순</a> / <a href="">최신순</a>
</div>
<br>
<hr>

  <c:forEach var="i" items="${list}" >
		 <a href="cardMake.we?idx=${i.card_idx }"><div class="gallery_content">
           <img src="card_img/${i.card_img}">
            <div class="content">
                <h1>${i.card_name }</h1>
                <p>${i.card_price }원</p>
            </div>
            <div class="overlay darkBlue"></div>
        </div></a>
  </c:forEach>
<div id="page">${pageStr}</div>
</body>
</html>
