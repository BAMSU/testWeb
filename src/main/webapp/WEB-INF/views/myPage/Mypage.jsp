<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Love is staying</title>

<link rel="stylesheet" href="./css/normalize.css">
<link rel="stylesheet" href="./css/sidebar.css">
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js">
<script src="./js/jquery-1.11.3.min.js"></script>
<script src="./js/jquery-ui-1.11.4.custom.min.js"></script>
<script src="./js/sidebar.js"></script>

<link rel="stylesheet" href="css/style.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>


<link rel="stylesheet"
	href="https://bootswatch.com/4/journal/bootstrap.css" />
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>
a {
	cursor: pointer;
}

.hif th {
	color: gray;
}

table th {
	padding: 3px;
}

table td {
	padding: 3px;
}

table tfoot td {
	text-align: center;
}

#rvp {
	margin: 0px auto;
}

.thd {
	background-color: #e74742;
	color: #fff;
}
</style>

</head>
<body>

	<%@include file="/header.jsp"%>




	<div class="content"
		style="margin: auto auto; position: relative; top: 20%; width: 60%; background-color: white;">
		<div id="like">
			<table class="table table-striped table-hover table-bordered">
				<h2 style="text-align: center">My page Like !</h2>
				<thead>
					<tr class="thd">
						<th>홀 이름</th>
						<th colspan="3">주소</th>
						<th>홀 타입</th>
						<th>식사 가격</th>
						<th>메뉴 타입</th>
						<th>인원 수</th>
						<th>체크 포인트</th>
					</tr>
				</thead>

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

			<table class="table table-striped table-hover table-bordered">
				<thead>
				<h2 style="text-align: center">My page consult !</h2>
					<tr class="thd">
						<td>번호</td>
						<td>이름</td>
						<td>이메일</td>
						<td>문의 내용</td>
						<td>작성일</td>
						<td></td>
					</tr>
				</thead>
				<tfoot>
					<tr>
						<td colspan="6" align="center">${pageStr}</td>

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
							<td >${dto.name }</td>
							<td>${dto.context}</td>
							<td><a href="${contentUrl}">${dto.email }</a></td>
							
							<td>${dto.reservation }</td>
							<c:url var="consult_Update_Url" value="consultUpdateForm.we">
								<c:param name="idx">${dto.consult_idx}</c:param>

								<c:param name="name">${dto.name}</c:param>

								<c:param name="reservation">${dto.reservation}</c:param>
								<c:param name="context">${dto.context}</c:param>
							</c:url>
							<td><a href="${consult_Update_Url}"><input type="button"
									value="수정"></a> <a href="${contentUrl2}"><input
									type="button" value="삭제"></a>
									 <c:url var="hallreview" value="hallRevieForm.we">
									<c:param name="gubun">${dto.gubun2}</c:param>
								</c:url> 
             				<c:if test="${dto.gubun>=2||dto.review_ok==1}">
             				<script>
               			   document.getElementById('hallReview').style.display = 'none';
               			   </script>
               			</c:if>
               
               
               			<a href="${hallreview} "><input id="hallReview"
									type="button" value="홀후기 작성"></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>


		</div>

		<div id="review">

			<table class="table table-striped table-hover table-bordered">
			<h2 style="text-align: center;">My page Review !</h2>
			<thead>
				<tr class="thd">
					<td>번호</td>
					<th>제목</th>
					<th>내용</th>
					<th>이름</th>
					<th>날짜</th>
					<th>홀이름</th>
				</tr>
				</thead>
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
		<table class="table table-striped table-hover table-bordered">
			<h2 style="text-align: center;">청첩장</h2>
			<thead>
				<tr class="thd">
					<td>이미지</td>
					<th>상품코드</th>
					<th>봉투</th>
					<th>옵션</th>
					<th>금액</th>
					<th>모바일 청첩장</th>
				</tr>
				</thead>
				<c:if test="${empty list4}">
					<tr>
						<td colspan="6">구매하신 청첩장이 없습니다.</td>
					</tr>
				</c:if>

				<c:set var="dto" value="${list4}"/>
					<tr>
						<td></td>
						<td>${dto.o_code}</td>
						<td>${dto.o_env}</td>
						<td>${dto.o_option}</td>
						<td>
						${dto.o_sale}
						${dto.o_plus}
						${dto.o_price}</td>
						<td>
						<c:if test="${dto.ect==0}">
						 	<a href="mycard.we?filename=${dto.o_img}&idx=${dto.o_idx}&name=${dto.o_name}">청첩장 만들기</a>
						</c:if>
						<c:if test="${dto.ect!=0}">
							<img src="qr_img/${dto.ect }" width="50px" height="50px">
						</c:if>
						</td>
					</tr>

			</table>
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

	<%@include file="/footer.jsp"%>
</body>
</html>