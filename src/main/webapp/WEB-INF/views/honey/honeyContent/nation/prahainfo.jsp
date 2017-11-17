<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://bootswatch.com/4/journal/bootstrap.css"/>
<style type="text/css">
section {
	width: 1000px;margin: 0px auto;
}

table {
	width: 800px;margin: 0px auto;
}

#banner {
	width: 800px;
}

#imgbig {
	width: 790px;
}

#imgsmall {
	width: 390px;
}
</style>
</head>
<body>
<%@include file="/header.jsp" %>
	<section>
		<table border="1" id="banner">
			<tr>
				<th><font size="5" color="#F29661">발리<em>Bali</em>
				</font><font size="4">지역정보</font></th>
			</tr>
			<tr>
				<td colspan="2"><img id="imgbig" src="../honey/imgeu/praha.jpg" /></td>
			</tr>
			<tr>
				<td><img id="imgsmall" src="../honey/imgeu/praha2.jpg" /></td>
				<td><img id="imgsmall" src="../honey/imgeu/praha3.jpg" /></td>
			</tr>
		</table>
		<!-- //상품 info end -->

		<!-- 지역특징 -->
		<table border="1">
			<tr>
				<th>지역 특징</th>
			</tr>
			<tr>
				<td>체코는 북쪽으로 수데티산맥, 서북쪽으로는 에르츠산맥, 서남쪽으로는 보헤미아산맥, 동쪽으로는 베스키트산맥
					등과 같은 1,000~1,600m의 높은 산지로 둘러싸여 있다. 따라서 산지가 대부분이다. 체코의 국토는 다시 프라하를
					중심으로 하는 북쪽의 보헤미아(또는 체스케)지방과 동남부의 모라비아(또는 모라바) 지방으로 구분된다. 보헤미아지방은 다시
					해발 200~400m 높이의 분지와 해발 700~900m에 이르는 고원지대로 나뉘는데, 분지에는 엘베강(江)이 북쪽으로
					흐르고 블타바강·사자바강·베로운카강·엘베강·오흐르제강 등의 지류가 엘베강으로 흘러든다. 모라비아지방의 북·동·서부는 산지
					및 구릉지대로 되어 있으나, 남부에는 도나우강의 지류인 모라바강이 남쪽으로 흐르면서 좁고 긴 평야지대를 이루고 있다.
					최저지점은 엘베강(115m)이고 최고지점은 스네츠카(1,602m)이다. 체코는 해안선이 전혀 없는 완전한 내륙국가이지만
					북부 유럽의 폴란드 평원에서 중부유럽의 다뉴브강 유역으로 통하는 관문이 모라비아지방에 놓여 있어 지리적으로 중요하다.
					전국토의 경작가능지는 38.82%, 농경지는 3%, 삼림 및 기타 58.18%(2005년)이다.</td>
			</tr>
			<!-- //지역특징 end -->
		</table>
		<!-- 관광 즐길거리 -->
		<table border="1">
			<tr>
				<th>관광 &amp; 즐길거리</th>
			</tr>
			<tr>
				<td>프라하는 체코의 수도이자 문화, 경제의 중심 도시!<br>
				<br>
				블타바강을 가로지르는 까를교를 기점으로 프라하성 지구와 구시가지가 나눠지는데 특히 예술가와 건축가들이 사랑한 문화중심지였던 만큼 다양한 건축물들이 한 곳에 있다.</td>
			</tr>

			<!-- //관광 즐길거리 end -->
		</table>
		<!-- 주요호텔 & 리조트 -->
		<table border="1">
			<tr>
				<th>주요 호텔 &amp; 리조트</th>
			</tr>
			<tr>
				<td>알릴라 울루와뜨 리조트, 반얀트리 리조트, W리조트, 더스미냑 리조트, 불가리 리조트, 더 발레
					세인트레지스 리조트, 물리아 리조트, 사마베 리조트 등이며 이외에 대규모 고급 리조트들이 너무 많아 전부 열거하기 힘들
					정도 입니다.</td>
			</tr>

			<!-- //주요호텔 & 리조트 end -->
		</table>
		<!-- 추천 여행 기간 & 날씨 -->

		<table border="1">
			<tr>
				<th>추천 여행 기간 &amp; 날씨</th>
			</tr>
			<tr>
				<td>기후는 국토의 대부분이 서안해양성 기후에 속해 연평균기온 약 7~10℃로 온화한 편이다. 프라하의 경우
					최한월(1월) 평균기온이 -1.9℃이고, 최난월(7월)의 평균기온은 17.5℃를 나타낸다. 연평균 강수량은
					500~700mm 정도이나 산악지대가 조금 많은 편이며, 계절적으로는 여름철에 강수량이 많다. 자연재해로는 홍수가 자주
					발생한다.</td>
			</tr>
		</table>
		<!-- //추천 여행 기간 & 날씨 end -->

		<!-- 여행상품 결정 TIP -->
		<table border="1">
			<tr>
				<th>여행상품 결정 <em>TIP</em></th>
			</tr>

			<tr>
				<td>발리 신혼여행은 뭐니뭐니해도 풀빌라의 선택이 가장 중요 합니다. 발리의 풀빌라를 선택할 때는 위치를 먼저
					파악하고 풀빌라내에 어떤 부대시설이 있는 지도 체크해 보는 것이 좋습니다. 발리 풀빌라의 대부분은 너무 나도 엉뚱한
					위치에 자리잡고 있으며 그 어떤 부대시설도 없는 풀빌라들도 즐비합니다. 신혼여행일 경우에는 풀빌라의 선택만큼 먼저 투숙을
					하는 리조트의 선택도 아주 중요하다. 대다수의 허니무너들은 풀빌라의 선택에만 시간 투자를 하고 있으나, 도착하자마자 먼저
					투숙을 하는 리조트의 선택이야말도 발리 풀빌라와 조합이 되는지를 파악해야 할 것입니다. 또한 발리 신혼여행 상품은
					여행사마다 일정이 전부 같은 것으로 보일 수 있습니다. 하지만 식사의 종류 및 일정을 꼼꼼하게 체크해보면 다소 차이점이
					있는 것을 발견할 수 있습니다.</td>
			</tr>
		</table>
		<!-- //여행상품 결정 TIP end -->



	</section>
	<%@include file="/footer.jsp" %>
</body>
</html>