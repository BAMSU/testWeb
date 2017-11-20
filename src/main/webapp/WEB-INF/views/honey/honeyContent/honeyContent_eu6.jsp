<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html>
<head>
<meta charset="UTF-8">
<title>Love is staying</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<link rel="stylesheet" href="https://bootswatch.com/4/journal/bootstrap.css"/>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		$("#datepicker").datepicker();
	});

	function qnaSubmit(ymd) {
		var year = ymd.subString(6, 9);
		var mt = ymd.subString(0, 1);
		var day = ymd.subString(3, 4);
		//ymd=00/00/0000 01/(2)34/(5)6789
		var wedding = document.getElementById("datepicker");
		var year2 = wedding.subString(6, 9);
		var mt2 = ymd.subString(0, 1);
		var day2 = ymd.subString(3, 4);
		if (year > year2) {
			window.alert('잘못된 날짜선택입니다.');
		} else if (year<year2&&mt>mt2) {
			window.alert('잘못된 날짜선택입니다.');
		} else if (year < year2 && mt<mt2&&day>day2) {
			window.alert('잘못된 날짜선택입니다.');
		} else {
			window.alert('문의가 성공적으로 완료 되었습니다.\n 빠른 시일 내로 최적의 답변을 드리겠습니다.');
			document.honeyQna.submit();
		}
	};
</script>

<style type="text/css">
section {
	width: 1000px;margin: 0px auto;
}

table {
	width: 800px;margin: 0px auto;
}

#box {
	width: 100%;
}
#t_div{
	margin: 0px auto;
	padding-left: 170px;
	padding-right: 170px;
	}
</style>
</head>
<body>
<%@include file="/header.jsp" %>
	<section>
		<table border="1">
			<tr>
				<th colspan="4"><img style="width: 100%;"
					src="honeyimg/imgeu/spain1.jpg"></th>
			</tr>
			<tr>
				<td colspan="3" align="center"><font
					style="font-size: xx-large;"><strong>☆정렬과 축제의 도시 /
							스페인 8일 완전 정복 ☆ </strong></font></td>
				<td><img style="width: 100%;"
					src="http://ifamily.co.kr/image/iFamily/product_service/rehoney_detail_btn01.jpg"
					alt="상품상담문의" /></td>
			</tr>
			<tr>
				<th width="172">판매기간</th>
				<td width="230" style="text-align: center;">2017-10-20 ~
					2018-06-30</td>
				<th width="172">상품가격</th>
				<td width="230" style="text-align: center;">2,080,000원 ~
					2,480,000원</td>
			</tr>
			<tr>
				<th>국가</th>
				<td style="text-align: center;">유럽</td>
				<th>여행지역</th>
				<td style="text-align: center;">스페인</td>
			</tr>

			<tr>
				<td colspan="4"
					style="line-height: 24px; padding: 12px 10px 12px 10px;">※ 해당
					정보는 전반적인 상품안내를 위한 내용이며, 고객님의 허니문 일정에 따라 호텔 객실, 항공 비용이 달라지므로 상담신청을
					해주시면 상세 상담을 드리도록 하겠습니다.</td>

			</tr>
		</table>

		<br>

		<table border="1">
			<tr>
				<th colspan="2" align="left"
					style="line-height: 24px; padding: 12px 10px 12px 10px;">리조트
					정보</th>
			</tr>
			<tr>
				<td><img src="honeyimg/imgeu/spain2.jpg" style="width: 100%;"
					height="200"></td>
				<td>
					<TABLE id="box"
						style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-COLLAPSE: collapse; BORDER-TOP: medium none; BORDER-RIGHT: medium none; mso-border-alt: solid black .5pt; mso-border-themecolor: text1; mso-yfti-tbllook: 1184; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt"
						border="1" cellSpacing="0" cellPadding="0" width="600"
						height="200">
						<TBODY>
							<TR
								style="HEIGHT: 48.7pt; mso-yfti-irow: 0; mso-yfti-firstrow: yes; mso-yfti-lastrow: yes">
								<TD
									style="BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: black 1pt solid; PADDING-BOTTOM: 0cm; PADDING-LEFT: 5.4pt; WIDTH: 461.2pt; PADDING-RIGHT: 5.4pt; BACKGROUND: #ffffcc; HEIGHT: 48.7pt; BORDER-TOP: black 1pt solid; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0cm; mso-border-alt: solid black .5pt; mso-border-themecolor: text1"
									width=615>
									<P style="TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt"
										class=MsoNormal align=left>
										<SPAN style="FONT-FAMILY: 돋움; FONT-SIZE: 9pt"><SPAN
											style="COLOR: #008000"><STRONG>◆ 마드리드
													예정호텔&lt;준특급&gt; ◆</STRONG></SPAN><BR> <SPAN style="COLOR: #000000">
												<BR>Vincci Madrid Centrum
										</SPAN> <BR> <BR> 본 호텔은 주요 관광지와 박물관, 푸에르타 델 솔과 그랑비아와 같은 주요
											쇼핑가에서 도보로 가까운 거리에 있는 도심에 위치해 있습니다. 공항은 지하철로 35분 거리에 있으며, 주요
											기차역인 챠마르틴 역은 지하철로 20분 거리에 있습니다. </span>
									</P>

								</TD>
							</TR>
						</TBODY>
					</TABLE>

				</td>
			</tr>
			<tr>
				<th style="line-height: 24px; padding: 12px 10px 12px 10px;">포함
					조항</th>
				<th style="line-height: 24px; padding: 12px 10px 12px 10px;">불포함
					조항</th>
			</tr>
			<tr>
				<td
					style="line-height: 24px; padding: 12px 10px 12px 10px; width: 50%">
					<font style="vertical-align: top;" color="#0021b0" face="돋움체"
					size="2">1. 유럽왕복항공권<br> 2. 항공텍스 및 유류할증료 : 501,100원 <br>&nbsp;-&nbsp;2017.10.24
						기준 항공텍스 및 유류할증료 <br>&nbsp;&nbsp; 입니다. <br>&nbsp;- 유류할증료
						및 항공 TAX 는 유가와 환율에 따라<br>&nbsp;&nbsp; 수시 요금 변동될 수 있습니다. <br>&nbsp;-
						항공권 발권시, 해당일의 정확한 TAX 및<br>&nbsp;&nbsp; 유류할증료를 재안내 해드립니다. <br>3.&nbsp;두브로브니크
						자그레브&nbsp;왕복 항공권
				</font>
					</p>
					<p>
						<font color="#0021b0" face="돋움체" size="2"> 4. 숙소 5박 및 조식<br>5.
							1억원 보장 여행자보험<br> 6. 여행정보 책자[2인 1권]<br>7. 멀티어뎁터/안전전대/목베개<br>8.
							아시아나 항공 마일리지 적립
						</font>
					</p>
					<p>
						<font color="#0021b0" face="돋움체" size="2"> &nbsp;- 발권 CLASS
							별로 적립율은 상이합니다.<br> <br>
						</font>
					</p>
					<p>
						<font color="#0021b0" face="돋움체" size="2">*숙소에 따른 금액은 상기
							요금표를 확인해주시기 바랍니다.</font>
				</td>

				<td
					style="line-height: 24px; padding: 12px 10px 12px 10px; width: 50%;">
					<font face="돋움체"><font color="#0021b0" size="2">1.
							일정에 명시되지 않은 개인경비</font></font>&nbsp;
					<p>
						<font face="돋움체"> <font color="#0021b0" size="2">2.&nbsp;유럽
								호텔 관광 CITY TAX<br>
						</font></font>&nbsp;
				</td>
			</tr>
		</table>
		<br>

		<table border="1">
			<tr>
				<th colspan="2" align="left"
					style="line-height: 24px; padding: 12px 10px 12px 10px;">허니문
					일정</th>
			</tr>
			<tr>
				<td colspan="2" align="left"
					style="line-height: 24px; padding: 12px 10px 12px 10px;"><font
					style="font-size: small;">
						<p
							style="font: 12px/18px 돋움, Dotum, Helvetica, sans-serif; margin: 0px; padding: 0px; color: rgb(0, 0, 0); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; font-size-adjust: none; font-stretch: normal; -webkit-text-stroke-width: 0px;">
							<strong>※ 기본 일정 :
								인천-[항공]-마드리드(2박)-세비야(1박)-그라나다-바르셀로나(2)-인천<br
								style="margin: 0px; padding: 0px;">※ 항공사 : 네덜란드 항공
							</strong><strong><br></strong>
						</p>
						<p
							style="font: 12px/18px 돋움, Dotum, Helvetica, sans-serif; margin: 0px; padding: 0px; color: rgb(0, 0, 0); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; font-size-adjust: none; font-stretch: normal; -webkit-text-stroke-width: 0px;">&nbsp;</p>
						<p
							style="font: 12px/18px 돋움, Dotum, Helvetica, sans-serif; margin: 0px; padding: 0px; color: rgb(0, 0, 0); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; font-size-adjust: none; font-stretch: normal; -webkit-text-stroke-width: 0px;">
							<strong>▶ 1 일 ◀ 인천 / 암스테르담 / 마드리드</strong>
						</p>
						<font face="돋움체"
						style="color: rgb(59, 59, 59); text-transform: none; line-height: 20px; text-indent: 0px; letter-spacing: normal; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; -webkit-text-stroke-width: 0px;"><font
							face="돋움체"><p>
									인천공항 출국수속(항공출발 3시간 전)<br>[KL 856 00시 55분]인천 국제공항 출발 <br>[04시
									55분] 암스테르담 도착<br>[KL1699 06시 50분] 암스테르담 출발<br>[09시
									25분] 바르셀로나 도착 후 호텔투숙 &nbsp;
								</p>
								<p style="margin: 0px; padding: 0px; -ms-word-break: break-all;">&nbsp;</p>
								<p>
									숙소&nbsp;체크인 후 자유여행<br>
									<font color="#ff6600"><strong>▒ 추천일정 ▒</strong></font><br>구시가지,
									람블라스 거리, 피카소미술관, 대성당, 역사박물관등&nbsp;
								</p>
								<p style="margin: 0px; padding: 0px; -ms-word-break: break-all;">&nbsp;</p>
								<p>
									<font color="#0084a0"><span
										style="color: rgb(0, 117, 200);">*항공 출발 3시간전 인천공항에 도착하여
											해당 항공사 카운터에서 출국수속</span><br>
									<span style="color: rgb(0, 117, 200);">*군미필자는 출국장 A와B카운터
											사이에 병무신고 (국외여행허가서 지참) </span><br>
									<span style="color: rgb(0, 117, 200);">*수화물 보내실때는 필히
											BAGGAGE TAG을 보관해야함.</span><br>
									<span style="color: rgb(0, 117, 200);">*기내에서 Immigration
											Card 영문으로 작성하기 (숙소란은 호스텔명을 기입)</span><br>
									<span style="color: rgb(0, 117, 200);">*메트로 8호선
											Aeropuerto역 탑승 30분 소요 € 1</span><br>
									<span style="color: rgb(0, 117, 200);">*Aerobus 시내까지 30분
											소요 €2.5</span></font>
								</p></font>
						<p style="margin: 0px; padding: 0px; -ms-word-break: break-all;">
								<font color="#0084a0"><br></font>
							</p></font>
					<p
							style="font: 12px/18px 돋움, Dotum, Helvetica, sans-serif; margin: 0px; padding: 0px; color: rgb(0, 0, 0); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; font-size-adjust: none; font-stretch: normal; -webkit-text-stroke-width: 0px;">
							<strong>▶ 2 일 ◀ 마드리드</strong>
						</p>
						<font face="돋움체"><p>
								숙소 조식 후 자유여행<br>
								<font color="#ff6600"><strong>▒ 추천일정 ▒</strong></font><br>그랑비아,
								에스파냐 광장, 마요르 광장, 레알 왕궁, 캄포 델 모로레티로 공원<br>시벨레스 광장, 국립 고고학
								박물관, 벼룩시장 등<br>톨레도: 비사그라 문, 소코도베르 광장, 대사원, 산토토메 교회 등 &nbsp;
							</p>
							<p
								style="font: 12px/20px dotum; margin: 0px; padding: 0px; color: rgb(59, 59, 59); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; font-size-adjust: none; font-stretch: normal; -webkit-text-stroke-width: 0px;">&nbsp;</p>
							<p>
								<font color="#0084a0"><span
									style="color: rgb(0, 117, 200);">*톨레도: Atocha 역에서1시간 30분
								</span><br>
								<span style="color: rgb(0, 117, 200);">*10회권 Metrobus
										10Viajes €6.7</span><br>
								<span style="color: rgb(0, 117, 200);">*하몽:스페인식 햄으로 돼지의
										뒷다리를 소금에 절여서 장기간 공기중에 말린것</span><br>
								<span style="color: rgb(0, 117, 200);">*빠에야 : 스페인 전통의
										지중해식 요리. 쌀에 버터와 야채 그리고 해산물을 넣</span><br>
								<span style="color: rgb(0, 117, 200);">어 함께 볶은 음식. 마늘과 양파
										등이 많이 들어가 우리 입맛에 잘 맞음.</span></font>
							</p></font>
					<p
							style="font: 12px/20px dotum; margin: 0px; padding: 0px; color: rgb(59, 59, 59); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; font-size-adjust: none; font-stretch: normal; -webkit-text-stroke-width: 0px;">&nbsp;</p>
						<p
							style="font: 12px/18px 돋움, Dotum, Helvetica, sans-serif; margin: 0px; padding: 0px; color: rgb(0, 0, 0); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; font-size-adjust: none; font-stretch: normal; -webkit-text-stroke-width: 0px;">
							<strong>▶ 3 일 ◀ 마드리드 / 세비야 / 코르도바</strong>
						</p>
						<font face="돋움체"
						style="color: rgb(59, 59, 59); text-transform: none; line-height: 20px; text-indent: 0px; letter-spacing: normal; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; -webkit-text-stroke-width: 0px;"><font
							face="돋움체"><p>
									숙소 조식 후 자유여행<br>
									<font color="#ff6600"><strong>▒ 추천일정 ▒</strong><br></font>마드리드:
									프라도 미술관, 카스티요 광장, 낭만주의 미술관, 고야의 판테온, <br>페르난도미술관, 구겐하임
									미술관, 소피아 왕비센터 등<br>코르도바: 알까사르, 메스끼다, 유대인지구, 작은 꽃길, 뽀뜨로 광장,
									깔라오<br>라 탑 등<br>
									<br>
									<font color="#79c101" face="돋움체"><strong>▒&nbsp;이동여정
											▒</strong></font>
								</p></font></font>
					<p
							style="font: 12px/20px dotum; margin: 0px; padding: 0px; color: rgb(59, 59, 59); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; font-size-adjust: none; font-stretch: normal; -webkit-text-stroke-width: 0px;">열차를
							이용하여 세비야로 이동</p>
						<p
							style="font: 12px/20px dotum; margin: 0px; padding: 0px; color: rgb(59, 59, 59); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; font-size-adjust: none; font-stretch: normal; -webkit-text-stroke-width: 0px;">
							<br style="margin: 0px; padding: 0px;">
							<strong>▶ 4 일 ◀ 세비야 / 그라나다</strong>
						</p>
						<font face="굴림"><p
								style="font: 12px/20px dotum; margin: 0px; padding: 0px; color: rgb(59, 59, 59); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; font-size-adjust: none; font-stretch: normal; -webkit-text-stroke-width: 0px;">
								<font color="#000000">숙소 조식 후 자유여행</font><br>
								<font color="#ff6600"><strong>▒ 추천일정 ▒</strong><br></font><font
									color="#000000">세비야: 누에바광장(대성당과 히랄다 탑, 알카사르, 세비야대학),
									스페인광장(산<br>타 크루즈 거리, 투우장, 삘라토의 집) 등<br>그라나다: 알함브라 궁전,
									알바이신 지구, 대성당, 왕실예배당, 사끄로몬떼 언덕<br>
								</font><br>
								<font color="#79c101" face="돋움체"><strong>▒&nbsp;이동여정
										▒</strong></font>
							</p>
							<p>
								<font color="#800000"><font color="#000000">야간열차를
										이용하여 바르셀로나로 이동[Granada 21:55]</font></font>
							</p></font>
					<p
							style="font: 12px/20px dotum; margin: 0px; padding: 0px; color: rgb(59, 59, 59); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; font-size-adjust: none; font-stretch: normal; -webkit-text-stroke-width: 0px;">
							<font color="#0084a0" face="돋움체"><br></font>
						</p>
						<p
							style="font: 12px/18px 돋움, Dotum, Helvetica, sans-serif; margin: 0px; padding: 0px; color: rgb(0, 0, 0); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; font-size-adjust: none; font-stretch: normal; -webkit-text-stroke-width: 0px;">
							<strong>▶ 5 일 ◀ 바르셀로나</strong>
						</p>
						<p>
							바르셀로나 도착(도착역: Barcelona Sants)&nbsp;후 자유여행<br>
							<font color="#ff6600"><strong>▒ 추천일정 ▒</strong></font><br>구시가지,
							람블라스 거리, 피카소미술관, 대성당, 역사박물관, 왕의광장, 에스<br>파냐 광장, 스페인 왕궁(분수쇼),
							몬주익 언덕, 올림픽공원 등<br>&nbsp;
						</p>
						<p>
							<font color="#0084a0"><span
								style="color: rgb(0, 117, 200);">*10회권 €7.02 (1존기준)</span><br>
							<span style="color: rgb(0, 117, 200);">*투우:축제기간에는 거의 매일
									열리며 평소엔 5~10월 사이의 일요일마다 열린다</span><br>
							<span style="color: rgb(0, 117, 200);">가장 큰 투우 경기장 Plaza
									Monumental de Toros de las Ventas</span><br>
							<span style="color: rgb(0, 117, 200);">*플라멩고:스페인 안달루시안
									지방에서 전래된 민속음악과 무용</span></font>
						</p>
						<p
							style="font: 12px/18px 돋움, Dotum, Helvetica, sans-serif; margin: 0px; padding: 0px; color: rgb(0, 0, 0); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; font-size-adjust: none; font-stretch: normal; -webkit-text-stroke-width: 0px;">
							<br style="margin: 0px; padding: 0px;">
							<strong>▶ 6 일 ◀ 바르셀로나</strong>
						</p>
						<p>
							숙소 조식 후 자유여행<br>
							<font color="#ff6600"><strong>▒ 추천일정 ▒</strong></font><br>미로
							미술관, 카탈루냐 미술관, 구엘저택, 구엘공원, 가우디 박물관, 카사밀라<br>카사바트요, 성가족 성당 등
						</p>
						<p
							style="font: 12px/18px 돋움, Dotum, Helvetica, sans-serif; margin: 0px; padding: 0px; color: rgb(0, 0, 0); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; font-size-adjust: none; font-stretch: normal; -webkit-text-stroke-width: 0px;">
							<br style="margin: 0px; padding: 0px;">
							<strong>▶ 7 일 ◀ 바르셀로나 / 암스테르담</strong>
						</p>
						<p>
							바르셀로나공항 출국수속(항공출발 3시간 전)<br>[KL1674 16시 55분]바르셀로나공항 출발
						</p>
						<p>
							[19시 25분] 암스테르담 도착<br>[KL 855 21시 25분] 암스테르담 출발
						</p>
						<font color="#0075c8"
						style="font: 12px/20px dotum; text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; font-size-adjust: none; font-stretch: normal; -webkit-text-stroke-width: 0px;"><p
								style="font: 12px/20px dotum; margin: 0px; padding: 0px; color: rgb(59, 59, 59); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; font-size-adjust: none; font-stretch: normal; -webkit-text-stroke-width: 0px;">&nbsp;</p></font>
					<p
							style="font: 12px/20px dotum; margin: 0px; padding: 0px; color: rgb(59, 59, 59); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; font-size-adjust: none; font-stretch: normal; -webkit-text-stroke-width: 0px;">
							<strong>▶ 8 일 ◀ 인천</strong>
						</p>
						<p
							style="font: 12px/20px dotum; margin: 0px; padding: 0px; color: rgb(59, 59, 59); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; font-size-adjust: none; font-stretch: normal; -webkit-text-stroke-width: 0px;">[15시
							40분] 인천국제공항 도착</p>
						<p
							style="font: 12px/18px 돋움, Dotum, Helvetica, sans-serif; margin: 0px; padding: 0px; color: rgb(0, 0, 0); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; -ms-word-break: break-all; font-size-adjust: none; font-stretch: normal; -webkit-text-stroke-width: 0px;">&nbsp;</p></td>
			</tr>
		</table>
		<table border="1">
			<tr>
				<td colspan="2" align="left"
					style="line-height: 24px; padding: 12px 10px 12px 10px;"><font
					style="font-size: small;"><p>
							<span style="color: rgb(58, 50, 195);"> <strong>※
									일정변경을 내 마음대로, 나만의 여행 컨설팅!!</strong></span> <br>&nbsp;상품의 일정변경, 도시의 추가 및
							변경, 도시별 가이드투어 신청까지 고객님의 입맛에 맞춰 구성 및 변경을 해드립니다.
						</p>
						<p>&nbsp;</p>
						<p>
							<strong><span style="color: rgb(58, 50, 195);">※
									상세한 오리엔테이션 &amp; 24시간 비상연락망 운영 !!</span></strong><br>&nbsp; 패키지 여행과는 달리
							현지에서 대부분의 것을 혼자 해결해야 하는 자유여행은 현지 사정 및 문화 차이 등 수많은 돌발상황<br> 및
							변수가 있습니다. 유럽 자유여행시 미처 예측을 하지 못해 발생되는 여러가지의 문제들을 상세한 오리엔테이션을 통해 미<br>
							연에 방지해드리고 있으며, 해결이 안 되는 부분에 대해 24시간 비상연락망을 운영하여 최대한 신속하게 처리를 해드리고
							있<br>습니다. &nbsp;
						</p>
						<p>&nbsp;</p>
						<p>
							<span style="color: rgb(58, 50, 195);"><strong>※
									항공 안내</strong> </span><br>&nbsp;해당상품은 R 클래스 기준 요금이며, 해당 클래스의 좌석이 마감되었을 경우
							추가비용이 발생될 수 있습니다.
						</p>
						<p>&nbsp;</p>
						<p>
							<span style="color: rgb(58, 50, 195);"><strong>※
									행사진행 안내</strong></span><br> - 상품예약 및 일정의 변경 또는 추가요청 사항에 관해 상담.<br>-
							요청사항 관련하여 알려주신 이메일로 행사 일정표 및 견적서 발송.<br>- 예약 확정시 예약금 입금.<br>-
							항공권 발권<br>- 출발 1개월전 나머지 잔금 결제.<br>- 출발 전 1:1 개별 오리엔테이션
							진행. (주말 요청시에는 전화로 미리 가능여부를 확인해주세요.)<br>- 즐거운 허니문 출발~^^
						</p></font></td>
			</tr>
		</table>
		<table border="1">
			<tr>
				<td width="235"><a href="countryContent.we?country=spa">
						<img src="honeyimg/imgeu/spain3.jpg" width="235" height="100" />
				</a></td>
				<td width="170">
					<div
						onclick="javascript:location.href='countryContent.we?country=spa'"
						style="cursor: pointer;">
						<font size="5" color="#F29661">스페인<br></font> <font size="4">
							지역정보<br> 보러가기
						</font> <em> <img
							src="http://ifamily.co.kr/image/iFamily/product_service/rehoney_detail_arrow02_ico.png" />
						</em>

					</div>
				</td>
				<td width="235"><a href="honeyPackage.we?nation=eu"> <img
						src="http://ifamily.co.kr/center/website/travel/1408689961_1.jpg"
						width="235" height="100" />
				</a></td>
				<td width="170">
					<div
						onclick="javascript:location.href='honeyPackage.we?nation=eu'"
						style="cursor: pointer;">
						<font size="5" color="#F29661">유럽 <br></font><font size="4">패키지<br>보러가기
						</font> <em> <img
							src="http://ifamily.co.kr/image/iFamily/product_service/rehoney_detail_arrow02_ico.png" />
						</em>
					</div>
				</td>
			</tr>
		</table>
		<div id="t_div">
			<table 
			class="table table-striped table-hover table-bordered"
			border="1" id="qna" >
				<tr >
					<th colspan="3">문의 하기</th>
				</tr>
				<tr >
					<td><font size="2">*이름</font></td>
					<td><input type="text" name="name" id="name" style="width: 300px;"></td>
					
				</tr >
				<tr >
					<td><font size="2">*휴대폰</font></td>
					<td><input type="text" name="tel" id="tel" style="width: 300px;"></td>
				</tr>
				<tr >
					<td><font size="2">*이메일</font></td>
					<td><input type="text" name="email" id="email">@ <select
						name="email">
							<option value="naver.com" selected>naver.com</option>
							<option value="nate.com" selected>nate.com</option>
							<option value="hanmail.net" selected>hanmail.net</option>
							<option value="hotmail.com" selected>hotmail.com</option>
							<option value="gmail.com" selected>gmail.com</option>
					</select></td>
				</tr>
				<tr >
					<td><font size="2">*결혼 예정일</font></td>
					<td><input type="text" id="datepicker" style="width: 300px;"></td>
				</tr>
				<tr >
					<td rowspan="2" valign="top"><font size="2">*문의 내용</font></td>
					<td rowspan="2"><textarea rows="5" 
							style="resize: none;width: 300px;"></textarea></td>
					</tr>
				<tfoot >
				<tr >
				<td colspan="2" align="right">
				<button type="button" class="btn btn-info">문의하기</button>
				</td>
				</tr>
				</tfoot>
			</table>
			</div>
	</section>
	<%@include file="/footer.jsp" %>
</body>
</html>