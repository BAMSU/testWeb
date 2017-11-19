<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title> 
</head>
<body>
<c:if test="${empty sname }">
	<script>
		window.alert('로그인후 이용이 가능합니다.');
		location.href='index.we';
		
	</script>
</c:if>
<h2>나의 상담/문의 신청 리스트</h2>
<table border="1" cellspacing="0" width="450">

		<tr>
			<td>번호</td>
			<td>이메일</td>
			<td colspan="2" style="width:100px; ">이름</td>
			<td >작성일</td>
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
		<c:forEach var="dto" items="${list }" >
			<tr>
		
				<td>${dto.consult_idx}</td>
				<c:url var="contentUrl" value="consultContent.we">
					<c:param name="idx" >${dto.consult_idx}</c:param>
				</c:url>
				<c:url var="contentUrl2" value="consultDel.we">
					<c:param name="idx" >${dto.consult_idx}</c:param>
				</c:url>
				<td><a href="${contentUrl}">${dto.email }</a></td>
				<td colspan="2">${dto.name }</td>
				<td>${dto.reservation }</td>
					<c:url var="consult_Update_Url" value="consultUpdateForm.we">
					<c:param name="idx" >${dto.consult_idx}</c:param>
					
					<c:param name="name" >${dto.name}</c:param>
			
					<c:param name="reservation" >${dto.reservation}</c:param>
					<c:param name="context" >${dto.context}</c:param>
			</c:url>
				<td><a href="${consult_Update_Url}"><input type="button" value="수정" ></a>
					<a href="${contentUrl2}"><input type="button" value="삭제"></a>
					<c:url var="hallreview" value="hallReviewWrite.we">
						<c:param name="gubun">${dto.gubun2}</c:param>
					</c:url>
					<script>
					if(${dto.gubun}>=2){
						  document.getElementById('hallReview').style.display = 'none';
					}
					</script>
				
					<a href="${hallreview} "><input id="hallReview" type="button" value="홀후기 작성"></a>
					
					</td>
			</tr>
		</c:forEach>
	</tbody>
</table>

</body>
</html>