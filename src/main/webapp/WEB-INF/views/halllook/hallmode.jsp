<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function submit(){
	alert('확인');
}
	function close() {
		alert('닫기');
	}
</script>
</head>
<body>
<%@include file="/header.jsp" %>
	<div class="popup_title">견적내기</div>
	

		<c:if test="${empty hallestList}">
		<h3>해당 내용이 없습니다.</h3>
		</c:if>
			<c:forEach var="est" items="${hallestList}">
				<table>
					<tr>
						<th rowspan="6" align="center">${est.hall_name }</th>
					</tr>
				</table>

				<h3>하객수</h3>
				<table>
					<tr>
						<td><input type="text" name="guest">${est.est_guest }</td>
					</tr>
				</table>


				<h3>결혼 예정일</h3>
				<table>
					<tbody>
						<tr>
							<td><input type="text" name="wedding"> <select
								name="be">
									<option value="미정">미정</option>
									<option value="예정">예정</option>
									<option value="확정">확정</option>
							</select></td>
						</tr>
					</tbody>
				</table>

				<h3>홀 선택</h3>

				<table>
					<tbody>
						<tr>

						</tr>

						<tr>
							<th>선택</th>
							<th>홀명</th>
							<th>예식 간격</th>
						</tr>

						<tr>
							<td><input type="radio" name="hall_name" checked="checked">
							</td>
							<td>${est.room_type1 }</td>
						</tr>
					</tbody>
				</table>

				<h3>사용료</h3>
				<table>
					<tbody>
						<tr>
							<th>선택</th>
							<th>상품명</th>
							<th>가격</th>
							<th>비고</th>
							<th>내용</th>
						</tr>

						<tr>
							<td><input type="radio" name="hall_use" checked="checked"></td>
							<td>홀 대관비</td>
							<td>${es.hall_price1  }</td>
							<td>필수</td>
							<td>${es.hall_price1  }</td>
						</tr>
						<tr>
						<td><input type="radio" name="hall_use" checked="checked"></td>
							<td>꽃장식</td>
							<td>0원</td>
							<td>필수</td>
							<td>생화장식, 단상, 버진로드를 포함한 기본 꽃장식</td>
						</tr>
						
						<tr>
						<td><input type="radio" name="hall_use" checked="checked"></td>
							<td>폐백실 사용료</td>
							<td>0원</td>
							<td>필수</td>
							<td>폐백의상, 집기 포함한 폐백실 사용료</td>
						</tr>
						
						<tr>
						<td><input type="radio" name="hall_use" checked="checked"></td>
							<td>수모비</td>
							<td>${es.ourfit_price }</td>
							<td>필수</td>
							<td>폐백 도우미</td>
						</tr>
						
						
						<tr>
						<td><input type="radio" name="hall_use" checked="checked"></td>
							<td>혼구용품</td>
							<td>0원</td>
							<td>필수</td>
							<td>혼인서약서, 성혼선언문, 방명록, 장갑, 봉투 포함</td>
						</tr>
						
						
						
						<tr>
						<td><input type="radio" name="hall_use" checked="checked"></td>
							<td>연출비</td>
							<td>0원</td>
							<td>필수</td>
							<td>예식에 필요한 연출</td>
						</tr>
						
						
						
						<tr>
						<td><input type="radio" name="hall_use" checked="checked"></td>
							<td>${es.meal }</td>
							<td>${es.meal_price }</td>
							<td>필수</td>
							<td>${es.meal_content }</td>
						</tr>
						
						
						
						
					</tbody>
				</table>

				<h3>식사 메뉴</h3>
				<table>
					<tr>
						<th>선택</th>
						<th>메뉴</th>
						<th>단가</th>
						<th>내용</th>
					</tr>

					<tr>
						<td><input type="radio" name="hall_meal" checked="checked"></td>
						<td>${dto.meal }</td>
						<td>${dto.meal_price }</td>
						<td>${dto.meal_content }</td>
					</tr>
					<tr>
						<td><input type="radio" name="hall_meal" checked="checked"></td>
						<td>${dto.meal }</td>
						<td>${dto.meal_price2 }</td>
						<td>${dto.meal_content2 }</td>
					</tr>
				</table>

				<h3>음주류 선택</h3>
				<table>
					<tr>
						<th>선택</th>
						<th>음주류</th>
						<th>단가</th>
						<th>수량입력</th>
					</tr>

					<tr>
						<td><input type="radio" name="hall_drink" checked="checked"></td>
						<td>음료수</td>
						<td>3000원</td>
						<td><input type="text" name="drink_num"></td>
					</tr>
					
					
					<tr>
						<td>총 견적비용  : ${es.hall_price1+es.ourfit_price+es.meal_price}</td>
					</tr>
				</table>
</c:forEach>
				<input type="button" value="견적확인하기" onclick="submit();">
				<input type="button" value="닫기" onclick="colse()">
			
		
	
	<%@include file="/footer.jsp" %>
</body>
</html>