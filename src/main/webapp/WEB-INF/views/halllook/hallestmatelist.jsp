<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
div {
	border: 0;
	word-break: break-all;
	display: block;
}

li {
	display: inline-block;
	margin-right: 5px;
}
</style>
<title>Insert title here</title>
<script>

	$(function() {
		$("#listButton").click(function() {
			$.ajax({
				type : 'post',
				url : 'hallestList.do',
				/* dataType : 'do', */
				success : function(data) {
					$("#listDiv").do(data);
				}
			});
		})
	})
</script>
</head>
<body>
<div id="search">
		<div id="menum_box">
			<div class="menu_br">
				<ul id="menu">
					<li><a href="hallsearch.do">웨딩홀 검색</a></li>
					<li><a href="hallrankingForm.do">홀 랭킹</a></li>
					<li><a>홀vs홀</a></li>
					<li><a href="hallsearchlist.do">불러오기확인</a></li>
					<li><a href="hallestmatelist.do">홀 견적내기</a></li>
					<li><a href="hallestmate.do">견적</a></li>
					<li><a href="hallmode.do">견적 수정</a></li>
					<li><a href="hallmode2.do">견적 작성</a></li>

				</ul>
			</div>
		</div>

</div>
	<h2>홀 견적내기</h2>

	
<a href="hallestList.do">혹시나</a>
	
	
	<form name="estList" action="hallestmatelist.do">
	<div class="estmate_search">
		<ul>
			<li>
				<div>
					<div>지역별</div>
				
					<select name="opt_box">
						<option value="">시/도</option>
						<option value="서울">서울</option>
					</select>
				</div>
			</li>

			<li>
				<div>
					<div>홀 타입</div>
					<select name="hall_box">
						<option value="">전체</option>
						<option value="채플">채플</option>
						<option value="호텔">호텔</option>
						<option value="채플">일반형</option>
						<option value="기타">기타</option>
					</select>
				</div>
			</li>

			<li>
				<div>
					<div>하객수</div>
					<select name="gest_box">
						<option value="">전체</option>
						<option value="100명 미만">100명 미만</option>
						<option value="100명~200명">100명~200명</option>
						<option value="200명~300명">200명~300명</option>
						<option value="300명~400명">300명~400명</option>
						<option value="400명~500명">400명~500명</option>
						<option value="500명 이상">500명 이상</option>
					</select>

				</div>
			</li>


			<li>
				<div>
					<div>총 견적대</div>
					<select name="estmate_box">
						<option value="">전체</option>
						<option value="500만원 이하">500만원 이하</option>
						<option value="500~1,000만원">500~1,000만원</option>
						<option value="1,000~1,500만원">1,000~1,500만원</option>
						<option value="1,500~2,000만원">1,500~2,000만원</option>
						<option value="2,000~2,500만원">2,000~2,500만원</option>
						<option value="2,500~3,000만원">2,500~3,000만원</option>
						<option value="3,000~3,500만원">3,000~3,500만원</option>
						<option value="3,500~4,000만원">3,500~4,000만원</option>
						<option value="4,000~4,500만원">4,000~4,500만원</option>
						<option value="4,500~5,000만원">4,500~5,000만원</option>
						<option value="5,000만원 이상">5,000만원 이상</option>
					</select>
				</div>
			</li>
			<li>검색:<input type="text"></li>
			<li><input type="button" id="listButton" value="리스트출력" />
<br/>
<div id="listDiv"></div>
</li>
			
			<li	style="display: table-cell; width: 90px; height: 100%; border: 0; margin: 0; padding: 0; vertical-align: middle; float: none;">
				
			</li>
		</ul>
		
	</div>

	</form>
	
	<div>
	<ul>
	<li>추천 웨딩홀</li>
	</ul>
	<ul>
	<li><img src="wldur.jpg" width="100" height="100"></li>
	<li>설명은 뭐</li>
	</ul>
	</div>
	

	<label style="text-align: center; width: 30px; margin-right: 10px;">결과</label>
	<br>
	<table border="1">
		<c:if test="${empty estlist }a">

						<td>검색 결과가 없습니다.</td>
					</c:if>

					<c:forEach var="est" items="${estlist}">
			<tr>

							<!-- <td>'/finalproject/img/hall/'+idx+'/r1.jpg'</td> -->
							<td>${est.hall_name }</td>
							<td>${est.hall_type}</td>
							<td>${est.gestalt}</td>
							<td>${est.guest}</td>
							<td>${est.interval }</td>
							<td>${est.hall_product }</td>
							<td>${est.hall_price }</td>
							<td>${est.hall_note }</td>
							<td>${est.hall_content }</td>
							<td>${est..meal }</td>
							<td>${est.meal_price }</td>
							<td>${est.meal_content }</td>
							<td>${est.drink_type }</td>
							<td>${est.drink_price }</td>
							<td>${est.volume }</td>
						</tr>
		</c:forEach>
	</table>

</body>
</html>