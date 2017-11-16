<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
#search {
	text-align: center;
	display: inline-block;
	margin-left: 200px;
	margin-right: 200px;
	border: 5px solid red;
	padding: 100px;
}

li {
	display: inline-block;
	margin-right: 5px;
}

#menu_box {
	float: left;
	display: block;
	border: 5px solid red;
	width: 150px;
	height: 100px;
	padding-top: 300px;
}

.menu_br {
	display: inline-block;
	border: 5px solid red;
	margin: 0 auto;
}

#menu {
	float: left;
	margin-right: 5px;
	word-break: break-all;
}

#tab {
	margin: 0 auto;
}
</style>
<body>
<%@include file="/header.jsp" %>
	<h3>홀 랭킹 리스트</h3>
	<div id="search">
		<div id="#menu_box">
			<div class="menu_br">
				<ul id="menu">
					<li><a href="hallsearch.we">웨딩홀 검색</a></li>
					<li><a href="hallranking.we">홀 랭킹</a></li>
					<li><a>홀vs홀</a></li>
					<li><a href="hallsearchlist.we">불러오기확인</a></li>
					<li><a href="hallestimate.we">홀 견적내기</a></li>
					<li><a href="hallmode.we">견적 작성</a></li>
					<li><a href="hallranking.we">랭킹</a></li>

				</ul>
			</div>
		</div>
		
		<form name="frm">
			<c:forEach var="dto" items="${hallrank }">
				<div id="rank">
					<div>
						<a href="rank_img"> <img
							src="/finalproject/img/hall/${all.idx}/r1.jpg" alt="홀대표사진"
							style="width: 90px; height: 60px; float: left;" />
						</a>
					</div>
					<ul>
						<li>${dto.name }</li>
						<li><span
							style="border: 1px solid #BCA9F5; border-radius: 6px;"
							onclick="window.alert('halllist.do')">상세보기</span></li>
						<li><span
							style="border: 1px solid #BCA9F5; border-radius: 6px;"
							onclick="window.alert('hallstatistics.do')">홀 통계보기</span></li>
						
					</ul>
				</div>
			</c:forEach>
			
		</form>
	</div>
<%@include file="/footer.jsp" %>
</body>
</html>