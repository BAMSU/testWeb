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
	margin:0px auto;
	width: 800px;
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
	<!-- <img src="http://ifamily.co.kr/center/website/travel/1407890606_main_1.jpg" /></div>
                <div class="info_img02">
                	<div class="info_left"><img src="http://ifamily.co.kr/center/website/travel/1408601980_1.jpg" /></div>
                    <div class="info_right"><img src="http://ifamily.co.kr/center/website/travel/1408601980_2.jpg" /> -->
	<section>
	
		<table border="1" id="banner">
			<tr>
				<th><font size="5" color="#F29661">스위스<em>Swis</em>
				</font><font size="4">지역정보</font></th>
			</tr>
			<tr>
				<td colspan="2"><img id="imgbig"
					src="http://ifamily.co.kr/center/website/travel/1407890606_main_1.jpg" /></td>
			</tr>
			<tr>
				<td><img id="imgsmall"
					src="http://ifamily.co.kr/center/website/travel/1408601980_1.jpg" /></td>
				<td><img id="imgsmall"
					src="http://ifamily.co.kr/center/website/travel/1408601980_2.jpg" /></td>
			</tr>
		</table>
		<!-- //상품 info end -->

		<!-- 지역특징 -->
		<table border="1">
			<tr>
				<th>지역 특징</th>
			</tr>
			<tr>
				<td>국토의 2/3를 알프스산맥이 차지하고 있으며 알프스의 방하 덕분에 깨끗하고 아름다운 하천과 호수들로 인해
					어디를 돌아봐도 동화에나 나옴직한 풍경이 펼쳐지는 스위스!! 만년설을 보기 위한 융프라우가 있는 호수 사이의 마을
					인터라켄을 방문은 가장 기본코스로 이 작고 아름다운 마을을 방문하기 위해 중세의 소도시 같은 느낌의 호수와 카펠교의 도시
					루체른에서 Golden Pass Panoramic 열차를 타고 환상적인 절경을 감상하는 것이 여행의 포인트!!</td>
			</tr>
			<!-- //지역특징 end -->
		</table>
		<!-- 관광 즐길거리 -->
		<table border="1">
			<tr>
				<th>관광 &amp; 즐길거리</th>
			</tr>
			<tr>
				<td>융프라우 등반열차: 유네스코가 지정한 세계 자연유산인 융프라우요흐 등반열차를 타고 감상하는 스위스 절경!!
					레포츠: 아름다운 자연을 감상할 수 있는 페러 글라이딩, 스카이 다이빙, 번지점프 등</td>
			</tr>

			<!-- //관광 즐길거리 end -->
		</table>
		<!-- 주요호텔 & 리조트 -->
		<table border="1">
			<tr>
				<th>주요 호텔 &amp; 리조트</th>
			</tr>
			<tr>
				<td>스위스의 여행은 대도시 보다는 작은 시골마을단위의 여행이나 하루 하루 이동하는 동선이기 때문에 호텔등급은
					큰 의미가 없다 엔틱한 분위기의 소규모 호텔들이 대부분입니다.</td>
			</tr>

			<!-- //주요호텔 & 리조트 end -->
		</table>
		<!-- 추천 여행 기간 & 날씨 -->

		<table border="1">
			<tr>
				<th>추천 여행 기간 &amp; 날씨</th>
			</tr>
			<tr>
				<td>스위스의 기후는 지형에 따라서 대서양, 동부 유럽대륙, 지중해, 중부 유럽 순환기후 등 다양하게
					나타납니다. 여름철 평균 기온 역시 지역에 따라 10℃ 정도 차이가 나며 일교차도 큰 편이며, 특히 산간 지역은 다른
					곳에 비해서 여름에도 기온이 낮고 저녁때에는 급격히 기온이 떨어지므로 반드시 두꺼운 옷을 준비해야 합니다. 추천
					여행기간은 5~9월로 이후 날씨가 급격히 낮아 지기 때문에 다소 쌀쌀할 수 있습니다.</td>
			</tr>
		</table>
		<!-- //추천 여행 기간 & 날씨 end -->

		<!-- 여행상품 결정 TIP -->
		<table border="1">
			<tr>
				<th>여행상품 결정 <em>TIP</em></th>
			</tr>

			<tr>
				<td>파리와 이태리 사이에 위치한 스위스는 위치적인 장점, 그리고 파리와 이태리와는 다른 느낌의 풍경관광의
					차별성 때문에 파리 + 스위스 또는 스위스 + 이태리 형태로 준비하면 좋다. 유럽의 직항노선은 가격대가 부담스럽기 때문에
					대부분 경유노선을 주로 이용 하는데 허니문 특별요금을 활용하거나 직항편 조기예약 특별요금을 이용하면 보다 합리적으로
					이용할 수 있지만 예식 일이 많은 날은 해당되지 않거나 좌석이 없는 경우가 더 많다는 부분이 함정 입니다.</td>
			</tr>
		</table>
		<!-- //여행상품 결정 TIP end -->



	</section>
	<%@include file="/footer.jsp" %>
</body>
</html>