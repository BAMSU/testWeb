<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="./css/normalize.css">
<link rel="stylesheet" href="./css/sidebar.css">
 
<script src="./js/jquery-1.11.3.min.js"></script>
<script src="./js/jquery-ui-1.11.4.custom.min.js"></script>
<script src="./js/sidebar.js"></script>

<style>
.wrapper {
	width: 100%;
	height: 500px;
	margin: 0px auto;
	border: 1px solid red;
}

.sidebar {
	width: 14%;
	border: 1px solid red;
	float: left;
	height: 100%;
}

.content {
	width:100%;
	height:100%;
}

.sidebar ul {
	list-style: none;
	text-align: left;
	margin: 50px 10px 50px 10px;
}

.sidebar ul li {
	margin: 15px;
}

.like {
	margin: 0px auto;
	border: 1px solid black;
	width: 50%;
	height: 50px;
	display: inline-block;
	position: absolute;
	left: -500px;
}

.ask {
	margin: 0px auto;
	border: 1px solid black;
	width: 500px;
	height: 50px;
	position: absolute;
}

.review {
	margin: 0px auto;
	border: 1px solid black;
	width: 50%;
	height: 50px;
	display: inline-block;
}

button {
    outline: none;
}
button .sidebar-btn {
    color: #fff;
    font-weight: bold;
}
.sidebar {
    background-color: #222;
    width: 270px;
    height: 100%;
    position: fixed;
    top: 0;
    left: -270px;
    z-index: 9999;
}
.sidebar > .sidebar-content {
    position: absolute;
    top: 20px;
    left: 90px;
    color: #fff;
}
.sidebar button {
    background-color: #222;
    display: block;
    position: absolute;
    top: 117px;
    left: 270px;
    width: 70px;
    height: 38px;
    line-height: 38px;
    text-align: center;
    margin: 0;
    padding: 0;
    border: none;
}
</style>

<script>
$(function(){
    var duration = 300;
 
    var $sidebar = $('.sidebar');
    var $sidebarButton = $sidebar.find('button').on('click', function(){
        $sidebar.toggleClass('open');
        if($sidebar.hasClass('open')){
            $sidebar.stop(true).animate({left: '-70px'}, duration, 'easeOutBack');
            $sidebarButton.find('span').text('CLOSE');
        }else{
            $sidebar.stop(true).animate({left: '-270px'}, duration, 'easeInBack');
            $sidebarButton.find('span').text('OPEN');
        };
    });
});
</script>
</head>
<body>

	<%@include file="/header.jsp"%>
	<aside class="sidebar">
        <div class="sidebar-content">
            내용입력
        </div>
        <button><span class="sidebar-btn">OPEN</span></button>
    </aside>
	<div class="wrapper">
		<!-- <div class="sidebar">
			<ul>

				<li>관심상품 리스트</li>
				<br>
				<br>
				<li>리뷰 리스트</li>
				<br>
				<br>
				<li>문의 리스트</li>
				<br>
				<br>
				<li>청첩장</li>
			</ul>
		</div>
 -->

		<div class="content">
			<div id="like">
				<table border="1">
					<tr>
						<th>홀 이름</th>
						<th colspan="3">주소</th>
						<th>홀 타입</th>
						<th>식사 가격</th>
						<th>메뉴 타입</th>
						<th>인원 수</th>
						<th>체크 포인트</th>
					</tr>


					<c:if test="${empty list1}">
						<tr>
							<td colspan="10">찜한 목록이 없습니다.</td>
						</tr>
					</c:if>
					<c:forEach var="dto" items="${list1}">
						<tr>

							<td>${dto.name}</td>
							<td colspan="3">${dto.si}${dto.gu}${dto.dong}${dto.addr}
								${dto.roadAddr}</td>
							<td>${dto.hallType}</td>
							<td>${dto.mealCost}</td>
							<td>${dto.menuType}</td>
							<td>${dto.guest}</td>
							<td>${dto.ckPoint}</td>

						</tr>
					</c:forEach>
				</table>
			</div>

			<div id="ask">

				<table border="1" cellspacing="0" width="450">

		<tr>
			<td>번호</td>
			<td>이메일</td>
			<td colspan="2" style="width: 100px;">이름</td>
			<td>작성일</td>
		</tr>

		<tfoot>
			<tr>
				<td colspan="5" align="center">${pageStr}</td>

			</tr>
		</tfoot>
		<tbody>
			<c:if test="${empty list}">
				<tr>
					<td colspan="5" align="center">등록된 개시글이 없습니다.</td>

				</tr>
			</c:if>
			<c:forEach var="dto" items="${list }">
				<tr>

					<td>${dto.consult_idx}</td>
					<c:url var="contentUrl" value="consultContent.we">
						<c:param name="idx">${dto.consult_idx}</c:param>
					</c:url>
					<c:url var="contentUrl2" value="consultDel.we">
						<c:param name="idx">${dto.consult_idx}</c:param>
					</c:url>
					<td><a href="${contentUrl}">${dto.email }</a></td>
					<td colspan="2">${dto.name }</td>
					<td>${dto.reservation }</td>
					<c:url var="consult_Update_Url" value="consultUpdateForm.we">
						<c:param name="idx">${dto.consult_idx}</c:param>

						<c:param name="name">${dto.name}</c:param>

						<c:param name="reservation">${dto.reservation}</c:param>
						<c:param name="context">${dto.context}</c:param>
					</c:url>
					<td><a href="${consult_Update_Url}"><input type="button"
							value="수정"></a> <a href="${contentUrl2}"><input
							type="button" value="삭제"></a> <c:url var="hallreview"
							value="hallReviewWrite.we">
							<c:param name="gubun">${dto.gubun2}</c:param>
						</c:url> <script>
               if(${dto.gubun}>=2){
                    document.getElementById('hallReview').style.display = 'none';
               }
               </script> <a href="${hallreview} "><input id="hallReview"
							type="button" value="홀후기 작성"></a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>


			</div>

			<div id="review">

				<table border="1">
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>내용</th>
						<th>이름</th>
						<th>날짜</th>
						<th>홀이름</th>
					</tr>

					<c:if test="${empty list3}">
						<tr>
							<td colspan="6">리뷰가 없습니다.</td>
						</tr>
					</c:if>

					<c:forEach var="dto" items="${list3}">
						<tr>
							<td>${dto.review_idx }</td>
							<td>${dto.subject}</td>
							<td>${dto.content}</td>
							<td>${dto.writer }</td>
							<td>${dto.writedate }</td>
							<td>${dto.name}</td>


						</tr>
					</c:forEach>

				</table>


			</div>
			<div id="card">
				<%-- </div>
		<c:url var="contentUrl" value="myPage_Like.we">
			<c:param name="name">${sname}</c:param>
		</c:url>
		<a href="${contentUrl}">관심상품 리스트</a>
		<c:url var="contentUrl2" value="myPage_Review.we">
			<c:param name="writer">${sname}</c:param>
		</c:url>
		<a href="${contentUrl2}">나의 리뷰 리스트</a>
		<c:url var="contentUrl3" value="myPage_Ask.we">
			<c:param name="name">${sname}</c:param>
		</c:url>
		<a href="${contentUrl3}">문의 리스트</a> <input type="button"
			value="청첩장 버튼">
	</div> --%>
			</div>
		</div>
	</div>




	<h2>나의 상담/문의 신청 리스트</h2>
	


	<%@include file="/footer.jsp"%>
</body>
</html>