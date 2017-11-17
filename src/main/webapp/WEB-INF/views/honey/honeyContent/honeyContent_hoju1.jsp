<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
					src="honeyimg/imghoju/호주1.jpg"></th>
			</tr>
			<tr>
				<td colspan="3" align="center"><font
					style="font-size: xx-large;"><strong>☆시드니 골드코스트 /
							호주 <br> 5박 7일 by LotteGG ☆
					</strong></font></td>
				<td><img style="width: 100%;"
					src="http://ifamily.co.kr/image/iFamily/product_service/rehoney_detail_btn01.jpg"
					alt="상품상담문의" /></td>
			</tr>
			<tr>
				<th width="172">판매기간</th>
				<td width="230" style="text-align: center;">2017-10-20 ~
					2018-06-30</td>
				<th width="172">상품가격</th>
				<td width="230" style="text-align: center;">2,290,000원 ~
					2,490,000원</td>
			</tr>
			<tr>
				<th>국가</th>
				<td style="text-align: center;">호주</td>
				<th>여행지역</th>
				<td style="text-align: center;">호주</td>
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
				<td><img src="../imghoju/호주4.jpg" style="width: 100%;"
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
											style="COLOR: #008000"><STRONG>◆ 호주
													예정호텔&lt;준특급&gt; ◆</STRONG></SPAN><BR> <SPAN style="COLOR: #000000">
												<BR>HOLIDAY INN PARRAMATTA 동급/ Mercure gold coast reso
										</SPAN> <BR> <BR>▶HOLIDAY INN PARRAMATTA 이 호텔은 시드니의 중심부에
											위치해 있으며 패러매타 기차역에서 걸어서 올 수 있는 거리에 있습니다. 뿐만 아니라 대연회장, 실외 풀,
											24시간 룸서비스도 갖춰져 있습니다. 현대적인 이 호텔은 내부에 피트니스센터를 운영하고 있으며 카페, 회의실
											등을 이용하실 수 있습니다. 환전과 아이돌봄 서비스를 제공하고 있으며 리셉션도 항시 운영하고 있습니다. 이
											호텔에서는 4.5성급의 현대적인 객실을 제공하며 i-Pod 도킹 스테이션 등이 갖춰져 있어 편리합니다.
											냉장고, 미니 바, 전용 욕실도 이용하실 수 있습니다. 내부의 레스토랑에서 간편하게 식사를 드실 수 있습니다.
											저녁에 한가롭게 술 한잔과 함께 휴식을 즐기실 수 있는 아늑한 라운지 바가 있습니다. 그 밖에도 부근에는
											수많은 레스토랑과 분위기 좋은 카페가 많이 있습니다. 이 호텔은 해리스 파크 기차역에서 가깝기 때문에 시드니
											주변 지역을 편리하게 구경하실 수 있습니다. 주변 지역에는 유명한 쇼핑가도 많이 있습니다 <br>
											▶mercure gold coast resort 골드코스트에 머무시는 동안 이 리조트에서 여유로움이 느껴지는
											객실 및 시설을 이용하실 수 있습니다. 데이 스파, 사우나, 온수 수영장, 야외 테니스코트도 갖춰져 있습니다.
											리조트 내 객실에서는 배후지, 호수 전망이 바라다 보이며 편안한 숙박에 필요한 모든 시설이 갖춰져 있습니다.
											다리미 시설, 전용 욕실, 주문형 영화 서비스도 이용하실 수 있습니다. 내부의 Chelos에서 간편하게 식사를
											드실 수 있습니다. 저녁에 한가롭게 술 한잔과 함께 휴식을 즐기실 수 있는 편안한 느낌의 라운지 바가
											있습니다. 이 리조트에서 골드코스트 공항까지는 자동차로 25분 정도 걸립니다. Q1, Warner Bros.
											Movie World, 웻앤와일드워터월드까지 운전해서 가실 수 있습니다.</span>
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
					size="2"><P>
							<SPAN style="BACKGROUND-COLOR: #777777"><SPAN
								style="BACKGROUND-COLOR: #ffffff; COLOR: #000000">﻿▣ 국제선
									왕복 항공료,각종항공 TAX(전쟁보험료, 인천공항세, 관광진흥개발기금, 현지공항세),</SPAN></SPAN>
						</P>
						<P>
							<SPAN style="BACKGROUND-COLOR: #777777"><SPAN
								style="BACKGROUND-COLOR: #ffffff; COLOR: #000000">▣ 관광지
									입장료</SPAN></SPAN>
						</P>
						<P>
							<SPAN style="BACKGROUND-COLOR: #777777"><SPAN
								style="BACKGROUND-COLOR: #ffffff; COLOR: #000000"><SPAN
									style="BACKGROUND-COLOR: #777777"><SPAN
										style="BACKGROUND-COLOR: #ffffff; COLOR: #000000">▣ 전일정
											식사, 호텔 숙박비</SPAN></SPAN></SPAN></SPAN>
						</P>
						<P>
							<SPAN style="BACKGROUND-COLOR: #777777"><SPAN
								style="BACKGROUND-COLOR: #ffffff; COLOR: #000000"><SPAN
									style="BACKGROUND-COLOR: #777777"><SPAN
										style="BACKGROUND-COLOR: #ffffff; COLOR: #000000"><SPAN
											style="BACKGROUND-COLOR: #777777"><SPAN
												style="BACKGROUND-COLOR: #ffffff; COLOR: #000000"><SPAN
													style="BACKGROUND-COLOR: #777777"><SPAN
														style="BACKGROUND-COLOR: #ffffff; COLOR: #000000">▣전용
															차량비</SPAN></SPAN></SPAN></SPAN></SPAN></SPAN></SPAN></SPAN>
						</P>
						<P>
							<SPAN style="BACKGROUND-COLOR: #777777"><SPAN
								style="BACKGROUND-COLOR: #ffffff; COLOR: #000000"><SPAN
									style="BACKGROUND-COLOR: #777777"><SPAN
										style="BACKGROUND-COLOR: #ffffff; COLOR: #000000"><SPAN
											style="BACKGROUND-COLOR: #777777"><SPAN
												style="BACKGROUND-COLOR: #ffffff; COLOR: #000000"><SPAN
													style="BACKGROUND-COLOR: #777777"><SPAN
														style="BACKGROUND-COLOR: #ffffff; COLOR: #000000"><SPAN
															style="BACKGROUND-COLOR: #777777"><SPAN
																style="BACKGROUND-COLOR: #ffffff; COLOR: #000000"><SPAN
																	style="BACKGROUND-COLOR: #777777"><SPAN
																		style="BACKGROUND-COLOR: #ffffff; COLOR: #000000"><SPAN
																			style="BACKGROUND-COLOR: #777777"><SPAN
																				style="BACKGROUND-COLOR: #ffffff; COLOR: #000000"><SPAN
																					style="BACKGROUND-COLOR: #777777"><SPAN
																						style="BACKGROUND-COLOR: #ffffff; COLOR: #000000">▣</SPAN></SPAN></SPAN></SPAN></SPAN></SPAN></SPAN></SPAN>2억원
															여행자보험</SPAN></SPAN></SPAN></SPAN></SPAN></SPAN></SPAN></SPAN>
						</P>
						<P>
							<SPAN style="BACKGROUND-COLOR: #777777"><SPAN
								style="BACKGROUND-COLOR: #ffffff; COLOR: #000000"><SPAN
									style="BACKGROUND-COLOR: #777777"><SPAN
										style="BACKGROUND-COLOR: #ffffff; COLOR: #000000"><SPAN
											style="BACKGROUND-COLOR: #777777"><SPAN
												style="BACKGROUND-COLOR: #ffffff; COLOR: #000000"><SPAN
													style="BACKGROUND-COLOR: #777777"><SPAN
														style="BACKGROUND-COLOR: #ffffff; COLOR: #000000">▣
															완납 후 제공해드리는 롯데관광만의 특별한 사은품 <BR>[ 고급 여행용 가방 or 동화면세점
															10만원 상품권 中 선택 1가지 (커플당 증정) ] <BR>
													</SPAN></SPAN></SPAN></SPAN></SPAN></SPAN></SPAN></SPAN><SPAN style="BACKGROUND-COLOR: #777777"><SPAN
								style="BACKGROUND-COLOR: #ffffff; COLOR: #000000"></SPAN></SPAN>
						</P> </font>

				</td>

				<td
					style="line-height: 24px; padding: 12px 10px 12px 10px; width: 50%;">
					<font face="돋움체"><font color="#0021b0" size="2">▣
							개인경비 <BR> <BR>▣ 국토해양부의 '국제선 항공요금과 유류할증료 확대방안' 또는 'IATA의
							ROE 인상 발표'에 따라 국외여행 표준약관에 준하여 여행비용이 예고없이 인상되거나, 또는 인하된 금액으로 반영될수
							있습니다. <BR> <BR>▣ 물값 등 기타 개인경비 <BR>▣ 매너팁 <BR>
							※ 매너팁이란? 식당, 가이드/기사 등 서비스에 대한 단순 감사의 표시로, <BR> 소비자(여행자)의 의사에
							따라 자율적으로 지불하는 비용입니다. <BR>- 호텔종사원(포터 등)/객실청소/현지투어/스파&amp;마사지
							등에 대한 매너팁 <BR>- 매너팁은 소비자의 자율적 선택으로 지불여부에 따른 불이익은 없습니다. <BR>▣
							당사는 급격한 환율변동으로 선택하신 허니문 여행상품에 <BR> "국외여행 표준약관 제 12조에 의거"하여
							변동 될 수 있음을 고지합니다. <BR>▣ 일반적으로 약 출발 45일이후 취소시 호텔룸에 대한 풀차지가
							적용됩니다. <BR> ※ 담당자가 객실파이널에 대한 안내 이후, 약관외 별도 취소수수료 부과.
					</font></font>&nbsp;
				</td>
			</tr>
		</table>
		<br>

		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tbody>
				<tr>
					<td height="27" align="left" bgcolor="#c2d3e1" colspan="2"><P>
							<STRONG>-1일차&nbsp;</STRONG>
						</P>
						<P>
							<BR>
							<IMG id=DAM_0201200811222899900181195 border=0
								src="http://ltassc.lottetour.com/LAMS_CONTENTS/REV/2008/11/22/IMG/SRC/0201200811222899900181195012457.GIF"
								height=25>대한항공 : KE121 ICN(18:45 인천국제공항 출발)-SYD(06:55: 시드니
							도착)
						</P>
						<P>&nbsp;</P>
						<P>
							<STRONG>-2일차</STRONG>
						</P>
						<P>
							<STRONG>[07:10] 시드니 도착</STRONG> 후 가이드 미팅<BR>
							<BR>
							<SPAN style="COLOR: #0000ff"><SPAN style="COLOR: #0000ff"><STRONG>▶
										유칼리잎으로 둘러싸인 웅대한 산악지대&nbsp;</STRONG></SPAN><SPAN style="COLOR: #0000ff"><A
									href="javascript:showinfo('SPOT','1395')"><SPAN
										style="COLOR: red" id=SPOT_1395_블루마운틴 title=LTEIP_SCDL>블루마운틴</SPAN></A><FONT
									color=#222222>&nbsp;</FONT>&nbsp;<STRONG>관광&nbsp;</STRONG></SPAN></SPAN><BR>
							<BR>- 유칼립투스로 덮여 있는 블루마운틴은 나무에서 분비되는 수액이 태양빛에 반사되어&nbsp;주위의
							대기가 푸르러 보이게 되어 블루마운틴이라 불리우는 곳<BR>- 에코포인트에서 원주민 전설에 따라 세자매봉이라
							부르는 블루마운틴 대표절경 감상<BR>- 삼림욕을 하며 숲속을 걸어 블루마운틴을 제대로 감상해보기&nbsp;<BR>-
							블루마운틴 전경을 감상하며 <STRONG><U>시닉케이블웨이 탑승 (Scenic
									Cableway)</U></STRONG><BR>시드니로 귀환<BR>
							<STRONG><SPAN style="COLOR: #0000ff"><SPAN
									style="COLOR: #9900ff">▶ <STRONG>호주 PUB 분위기인
											레스토랑에서 무제한 샐러드바와 직접 구워 맛있는 스테이크 석식</STRONG></SPAN></SPAN></STRONG><BR>
							<BR>호텔로 이동하여 투숙
						</P>
						<P>&nbsp;</P>
						<P>
							-<STRONG>3일차</STRONG>
						</P>
						<P>
							호텔 조식 후<BR>
							<SPAN style="COLOR: #0000ff"><STRONG>♥</STRONG> 호주의 현대사가
								시작 된 록스에서 즐기는 자유시간</SPAN><BR>- 록스거리를 걸으며 둘만의 로맨틱하고 자유로운 자유시간을
							만들어보세요!<BR>- 곳곳에 남아있는 시드니 역사를 찾거나, 카페거리에서 여유로운 시간을 보내보세요!<BR>
							<BR>
							<SPAN style="COLOR: #800080">★ 조기 예약자 특전 ★</SPAN><BR>오페라하우스
							배경으로 도스포인트 (Dawes point) 에서 록스까지 <SPAN style="COLOR: #0000ff">스냅
								촬영! <STRONG>&lt;포함&gt;</STRONG>
							</SPAN><BR>낭만 가득한 시드니에서의 추억을 허니문 스냅사진에 담아드립니다!<SPAN
								style="COLOR: #ff0000"> *촬영작가 팁 불포함 1인 A$30*</SPAN><BR>
							<BR>
							<SPAN style="COLOR: #0000ff"><STRONG>♥</STRONG> <STRONG>시드니
									동부해안 관광</STRONG></SPAN><BR>- 스페인풍의 대저택이 늘어서있고, 멀리 보이는 오페라하우스와 하버브릿지가 한장의
							그림엽서같은 곳<BR>
							<A href="javascript:showinfo('SPOT','2123')"><SPAN
								style="COLOR: red" id=SPOT_2123_더들리페이지 title=LTEIP_SCDL>더들리
									페이지</SPAN></A><BR>&nbsp;- 단애의 절경이 펼쳐지는 곳 영화 빠삐용 촬영지인 <A
								href="javascript:showinfo('SPOT','4980')"><SPAN
								style="COLOR: red" id=SPOT_4980_갭팍 title=LTEIP_SCDL>갭팍</SPAN></A><BR>-
							본다이비치 해변가에서의 낭만의 산책<BR>
							<SPAN style="COLOR: #6666ff"><STRONG>♥</STRONG> <STRONG>수많은
									유명인사가 다녀간 64년 전통의 해리스카페에서의 미트파이 &amp; 핫도그 중식 </STRONG></SPAN><BR>
							<BR>
							<STRONG><SPAN style="COLOR: #3333cc">♥</SPAN></STRONG><SPAN
								style="COLOR: #3333cc"> <STRONG>시드니 시내관광</STRONG></SPAN><BR>-
							수많은 관광객들의 기념사진 속 배경이 되는 <A
								href="javascript:showinfo('SPOT','2122')"><SPAN
								style="COLOR: red" id=SPOT_2122_미세스맥콰리의자 title=LTEIP_SCDL>미세스
									맥콰리 포인트</SPAN></A>&nbsp;<BR>- 세계 3대 건축물의 하나인 <A
								href="javascript:showinfo('SPOT','4975')"><SPAN
								style="COLOR: red" id=SPOT_4975_오페라하우스 title=LTEIP_SCDL>오페라
									하우스</SPAN></A>&nbsp;<BR>- 오페라하우스와 더불어 시드니 상징인 <A
								href="javascript:showinfo('SPOT','1267')"><SPAN
								style="COLOR: red" id=SPOT_1267_하버브리지HarbourBridge
								title=LTEIP_SCDL>하버브리지 Harbour Bridge&nbsp;</SPAN></A>&nbsp;&nbsp;
						</P>
						<P>
						<TABLE
							style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-COLLAPSE: collapse; BORDER-TOP: medium none; BORDER-RIGHT: medium none; mso-border-alt: solid black .5pt; mso-border-themecolor: text1; mso-yfti-tbllook: 1184; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt"
							border=1 cellSpacing=0 cellPadding=0 width=500>
							<TBODY>
								<TR
									style="HEIGHT: 48.7pt; mso-yfti-irow: 0; mso-yfti-firstrow: yes; mso-yfti-lastrow: yes">
									<TD
										style="BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: black 1pt solid; PADDING-BOTTOM: 0cm; PADDING-LEFT: 5.4pt; WIDTH: 461.2pt; PADDING-RIGHT: 5.4pt; BACKGROUND: #99ccff; HEIGHT: 48.7pt; BORDER-TOP: black 1pt solid; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0cm; mso-border-alt: solid black .5pt; mso-border-themecolor: text1"
										width=615>
										<P style="TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt"
											class=MsoNormal align=left>
											<BR>&nbsp;<SPAN style="COLOR: #6600ff"><STRONG>♥
													디너크루즈 탑승</STRONG></SPAN><BR>
											<BR>- 낭만가득한 항구도시에서 시드니미항을 감상하며 즐기는 디너크루즈<BR>- <STRONG>샐러드
												+ &nbsp;스테이크&nbsp; + 디저트. 3코스 석식</STRONG>&nbsp;<BR>
											<BR>♥ <STRONG>추천옵션 - 디너크루즈 시 랍스타 반마리 추가 쌍당 A$30
												<SPAN style="COLOR: #9933ff"><U>(조기예약자에 한하여 무료)</U></SPAN>
											</STRONG><BR>&nbsp;
										</P>
									</TD>
								</TR>
							</TBODY>
						</TABLE>
						</P>
						<P>
							<BR>석식 후 호텔 투숙
						</P>
						<P>&nbsp;</P>
						<P>
							<STRONG>-4일차</STRONG>
						</P>
						<P>
							<IMG id=DAM_0201200811232901100181219 border=0
								src="http://ltassc.lottetour.com/LAMS_CONTENTS/REV/2008/11/23/IMG/SRC/0201200811232901100181219012529.GIF"
								height=25>콴타스항공 : SYD( 시드니 출발)-BNE( 브리즈번 도착)<BR>
							<BR>호텔 기상 후 공항으로 이동 <BR>시드니 출발 / 브리스베인 향발
						</P>
						<P>
							브리스베인 도착 후 <U>가이드 미팅</U><BR>눈부시게 멋진 해변과 신나는 테마파크, 하늘과 닿을 듯한
							아름다운 마을을 자랑하는 지상 최고의 파라다이스 골드코스트로 이동<BR>
							<BR>
							<SPAN style="COLOR: #ff0000"><STRONG>&lt; 아래 3가지
									일정중 1가지 선택. 예약시 선택이 안되면 자동 커럼빈 야생동물 보호구역으로진행! &gt;</STRONG></SPAN><BR>&nbsp;
						</P>
						<P>
						<TABLE
							style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-COLLAPSE: collapse; BORDER-TOP: medium none; BORDER-RIGHT: medium none; mso-border-alt: solid black .5pt; mso-border-themecolor: text1; mso-yfti-tbllook: 1184; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt"
							border=1 cellSpacing=0 cellPadding=0 width=500>
							<TBODY>
								<TR
									style="HEIGHT: 48.7pt; mso-yfti-irow: 0; mso-yfti-firstrow: yes; mso-yfti-lastrow: yes">
									<TD
										style="BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: black 1pt solid; PADDING-BOTTOM: 0cm; PADDING-LEFT: 5.4pt; WIDTH: 461.2pt; PADDING-RIGHT: 5.4pt; BACKGROUND: #99ccff; HEIGHT: 48.7pt; BORDER-TOP: black 1pt solid; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0cm; mso-border-alt: solid black .5pt; mso-border-themecolor: text1"
										width=615>
										<P style="TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt"
											class=MsoNormal align=left>
											<BR>♥<STRONG> 선택 1 </STRONG>- <A
												href="javascript:showinfo('SPOT','2049')"><SPAN
												style="COLOR: red" id=SPOT_2049_커럼빈야생동물보호구역 title=LTEIP_SCDL>커럼빈
													야생 동물 보호구역</SPAN></A>&nbsp;<STRONG>- 추천 </STRONG><BR>도심속에서 리얼 자연을
											만나러 떠나자~<BR>GoGo !! 커럼빈 야생 동물 공원!!<BR>- 호주의 야생 동물을
											보호하는 넓은 공간의 자연 속에서 자유롭게 뛰노는 야생동물과 마음껏 소통 할 수 있는 커럼빈 야생 동물
											공원!!<BR>- 호주의 대표 동물인 캥거루, 코알라 뿐만 아니라 앵무새, 펠리컨, 타조등 다양한
											야생 동물들에게 &lt;먹이주기 체험&gt; 직접 할 수 있으며, 가까이에서 볼 수 도 있다.<BR>-
											규모가 굉장히 큰 공원으로 &lt;무료로 운행되는 꼬마 열차&gt;를 타야만 하루안에 돌아 볼 수 있는데 이
											꼬마 열차를 타는 재미 또한 쏠쏠 하다<BR>- <STRONG>양들의 천국 호주!
												커럼빈에서 즐기는 양털깍기쇼 관람 가능 </STRONG><BR>당신 머리위에 야생 앵무새가 스스럼없이 사뿐이 앉는
											곳.<BR>사람과 야생 동물이 함께 공존 할 수 있는 곳.<BR>한번뿐인 신혼여행을 리얼
											자연에서 특별하게 만들고 싶다면 &lt;커럼빈 야생 동물 공원&gt;으로 지금 당장 떠나자~!!<BR>&nbsp;<BR>♥
											<STRONG>선택 2 - 호주에서 가장 사랑받는 테마파크 </STRONG><A
												href="javascript:showinfo('SPOT','36537')"><SPAN
												style="COLOR: red" id=SPOT_36537_드림월드 title=LTEIP_SCDL>드림월드</SPAN></A>&nbsp;<STRONG>관광</STRONG><BR>-
											자연 야생동물원인 와일드라이프 익스피리언스 야생체험<BR>&nbsp; (양털깍기, 양몰이 개 쇼 등
											호주전통농장 체험 및 캥거루, 코알라 등 호주희귀동물 관람)<BR>- 세계에서 가장 빠른
											타워오브테러, 세계에서 가장 긴 자이언트드롭 등 각종 놀이기구탑승<BR>
											<BR>♥<STRONG> 선택 3 헐리우드를 경험 할 수 있는 곳 </STRONG><A
												href="javascript:showinfo('SPOT','4968')"><SPAN
												style="COLOR: red" id=SPOT_4968_워너브라더스무비월드 title=LTEIP_SCDL>워너브라더스
													무비월드</SPAN></A><STRONG>&nbsp;방문</STRONG><BR>- 폴리스아카데미, 배트맨, 카사블랑카
											등에 등장했던 세트관람 및 스튜디오 견학<BR>- 스턴트쇼와 특수효과 무대, 4차원의 모험, 각종
											영화 촬영소 관광 및 놀이기구 탑승<BR>&nbsp;
										</P>
									</TD>
								</TR>
							</TBODY>
						</TABLE>
						</P>
						<P>
							<BR>
							<SPAN style="COLOR: #800080"><STRONG>♥ 본고장의 맛 호주
									정통 스테이크 석식 </STRONG></SPAN><BR>호텔로 이동하여 투숙
						</P>
						<P>&nbsp;</P>
						<DIV
							style="POSITION: absolute; WIDTH: 1px; HEIGHT: 1px; OVERFLOW: hidden; TOP: 448px; LEFT: -1000px"
							id=cke_pastebin>&nbsp;</DIV>
						<P>&nbsp;</P>
						<P>&nbsp;</P>
						<P>
							-<STRONG>5일차</STRONG>
						</P>
						<P>
							호텔 조식 후<BR>
							<BR>
							<SPAN style="COLOR: #40e0d0"><STRONG>♥ </STRONG></SPAN><A
								href="javascript:showinfo('SPOT','35197')"><SPAN
								style="COLOR: #40e0d0"><SPAN id=SPOT_35197_시다클릭와이너리
									title=LTEIP_SCDL>시다클릭 와이너리&nbsp;</SPAN></SPAN></A><SPAN
								style="COLOR: #40e0d0">&nbsp;<STRONG>방문&nbsp;</STRONG></SPAN><BR>
							<STRONG>- </STRONG>와인으로 유명한 호주와인 향기에 빠지는 시간 !!<BR>
							<STRONG>-</STRONG> 산속 깊숙이 자리잡은 전원의 모습을 그대로 들어낸 시다크릭와이너리에서 와인 시음<BR>
							<BR>
							<SPAN style="COLOR: #33cccc"><STRONG>♥</STRONG> <STRONG>거대한
									산속의 예술마을&nbsp;</STRONG>&nbsp;</SPAN><A
								href="javascript:showinfo('SPOT','36493')"><SPAN
								style="COLOR: #33cccc"><SPAN id=SPOT_36493_마운틴탬버린스카이워크
									title=LTEIP_SCDL>마운틴 탬버린 스카이 워크</SPAN></SPAN></A><SPAN
								style="COLOR: #33cccc">&nbsp;</SPAN><BR>- 자연과 예술의 조화를 느낄 수
							있는 진솔한 호주인의 삶이 녹아 있는 예술마을. 엽서속에서 방금 튀어나온 듯한 예쁜 집들과 명상 음악들이 흘러나오는
							갤러리숍을 둘러보며 관광<BR>
							<BR>
							<SPAN style="COLOR: #3399ff"><STRONG>♥ 퍼시픽파인공원으로
									이동하여 아름답게 조성된 골드코스트 신도시를 조망 </STRONG></SPAN><BR>
							<BR>
							<SPAN style="COLOR: #3333ff">♥ <STRONG>로맨틴</STRONG> <STRONG>샴페인
									크루즈&nbsp;</STRONG></SPAN><BR>- 아름다운 보트 정박장에서 크루즈 승선하여 샴페인 한잔의 여유로움과 남태평양
							유람<BR>
							<BR>
							<STRONG><SPAN style="COLOR: #9900ff">♥ 세계적인 관광
									휴양지인 골드코스트 명소 관광 </SPAN></STRONG><BR>- 요트 선착장인 이국적인 풍경 마리나미라지 주변 관광<BR>-
							세계에서 제일 긴 목조 다리인 스핏브릿지<BR>- 잊지 못 할 추억의 <A
								href="javascript:showinfo('SPOT','20603')"><SPAN
								style="COLOR: red" id=SPOT_20603_서퍼스파라다이스비치 title=LTEIP_SCDL>서퍼스
									파라다이스 비치</SPAN></A>&nbsp;, 메인비치의 40Km가 넘게 펼쳐진 환상적인 해변을&nbsp; 따라 산책을 ~<BR>
							<BR>
							<SPAN style="COLOR: #3399ff">♥<STRONG> </STRONG></SPAN><A
								href="javascript:showinfo('SPOT','2705')"><SPAN
								style="COLOR: #3399ff"><SPAN id=SPOT_2705_골드코스트
									title=LTEIP_SCDL>골드 코스트</SPAN></SPAN></A><SPAN style="COLOR: #3399ff">&nbsp;<STRONG>의
									특별한 전경을 감상 할 수 있는 </STRONG></SPAN><A href="javascript:showinfo('SPOT','39230')"><SPAN
								style="COLOR: #3399ff"><SPAN id=SPOT_39230_헬기투어(골드코스트)
									title=LTEIP_SCDL>헬기투어(골드코스트)</SPAN></SPAN></A><SPAN style="COLOR: #3399ff">&nbsp;</SPAN><BR>-
							해안을 따라 펼쳐진 골드코스트를 둘러보는 가장 탁월한 선택 !! 헬기탑승은 놓쳐서는 안될 골드코스트의 특별한 전경으로
							모셔다 드립니다 !!<BR>
							<BR>
							<SPAN style="COLOR: #ff0000">♥ <STRONG>PIZZA
									&amp; PASTA 석식</STRONG></SPAN>
						</P>
						<P>
							<SPAN style="COLOR: #ff0000"><STRONG></STRONG></SPAN>&nbsp;
						</P>
						<P>
							<SPAN style="COLOR: #ff0000"><STRONG><SPAN
									style="COLOR: #000000">-6일차</SPAN></STRONG></SPAN>
						</P>
						<SPAN style="COLOR: #ff0000"><SPAN style="COLOR: #000000">
								<P>
									호텔 조식 후<BR>
									<BR>
									<STRONG><SPAN style="COLOR: #ff0000">&lt; 관광 or
											휴양 일정 중 택 1 / 예약시 선택이 없으면 자동 관광일정으로 진행 !! &gt;</SPAN><BR></STRONG>
								</P>
								<P>
								<TABLE
									style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-COLLAPSE: collapse; BORDER-TOP: medium none; BORDER-RIGHT: medium none; mso-border-alt: solid black .5pt; mso-border-themecolor: text1; mso-yfti-tbllook: 1184; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt"
									border=1 cellSpacing=0 cellPadding=0 width=500>
									<TBODY>
										<TR
											style="HEIGHT: 48.7pt; mso-yfti-irow: 0; mso-yfti-firstrow: yes; mso-yfti-lastrow: yes">
											<TD
												style="BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: black 1pt solid; PADDING-BOTTOM: 0cm; PADDING-LEFT: 5.4pt; WIDTH: 461.2pt; PADDING-RIGHT: 5.4pt; BACKGROUND: #99ccff; HEIGHT: 48.7pt; BORDER-TOP: black 1pt solid; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0cm; mso-border-alt: solid black .5pt; mso-border-themecolor: text1"
												width=615>
												<P style="TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt"
													class=MsoNormal align=left>
													<BR>
													<STRONG>♥ 선택 1 - 호텔 부대시설 이용하며 휴식&nbsp; <SPAN
														style="COLOR: #ff0000">&lt; 중,석식 불포함 &gt;</SPAN><BR>&nbsp;<BR>
													<BR>♥ 선택 2 - 골드코스트 명소 관광 <BR>
													<BR></STRONG>* 세계적으로 유명한 써핑의 메카 팜비치 관광 <BR>- sbs런닝맨 호주인
													어드벤처 방송에 나온 고급 휴양 홀리데이하우스가 즐비한곳<BR>&nbsp; ( 런닝맨 출연진들이
													묵은 호주 고급휴양주택이 있는곳 )<BR>- 아름다운 휴양지를 배경으로 사진 한 장!!!!!<BR>*&nbsp;
													호주 퀸스랜드가 자랑하는 유명인들이 많이사는 인공 섬 소버린 아일랜드 관광<BR>- 자연속에
													자리하고 있는 최고급 워터프론트 주택, 각각의 주택들은 유명 건축가와 디자이너에 의해 지어진 특별한
													소버린아일랜드<BR>- 골드코스트 만의 고급스러운 주택 양식을 알수있는 인공 운하와 섬으로 된 곳<BR>-
													차량으로 섬을 일주하면서 세계 유명인의 집 감상<BR>* 호주전통 MEAT PIE <BR>-
													호주인들이 가장 사랑하는 먹거리인 미트파이전문점에서 파이와 음료로 중식<BR>* 호주 최대 아울렛
													쇼핑 타운 <A href="javascript:showinfo('SPOT','36526')"><SPAN
														style="COLOR: red" id=SPOT_36526_하버타운 title=LTEIP_SCDL>하버
															타운</SPAN></A>&nbsp;아울렛 쇼핑센터 방문 <BR>- 서퍼스파라다이스 북쪽에 위치한 대형 하버타운에서
													저렴하고 품격있는 다양한 제품 만나보기 !! 백여개가 넘는 다양한 브랜드를 구경할 수 있는 곳으로 유명
													브랜드를 최고 60% 까지 할인해서 판매하는 곳<BR>* HARLEY PARK ( IAN
													DIPPLE LAGOON :일명 펠리칸 비치)<BR>- 하루 한번 비치에 있는 "CHARIS
													SEA FOOD"에서 주는 먹이를 먹으러 몰려오는<BR>&nbsp; 펠리칸을 사진에 담는
													시간!!!!!!<BR>*&nbsp; 퀸즈랜드 최대의 <A
														href="javascript:showinfo('SPOT','20599')"><SPAN
														style="COLOR: red" id=SPOT_20599_콘래드쥬피터카지노
														title=LTEIP_SCDL>콘래드 쥬피터 카지노</SPAN></A>&nbsp;관광 <BR>-
													브로드비치에 있는 세계적인 호텔 체인 콘래드 계열로 주피터 카지노로 더욱 유명한곳<BR>
													<STRONG>&nbsp;</STRONG>
												</P>
											</TD>
										</TR>
									</TBODY>
								</TABLE>
								</P>
								<P>
									<STRONG>&nbsp;&nbsp;<BR></STRONG>석식 후 호텔 투숙<STRONG>
									</STRONG>
								</P>
								<P>
									<STRONG></STRONG>&nbsp;
								</P>
								<P>
									<STRONG>-7일차</STRONG>
								</P>
								<P>호텔 기상 후 공항으로 이동 &nbsp;</P>
								<P>
									대한항공 : KE124 BNE(08:25: 브리즈번 출발)-ICN(17:35 인천국제공항 도착)<BR>-
									운항 소요시간 : 약 10시간 예상<BR>&nbsp;
								</P>
						</SPAN></SPAN>
						<P>&nbsp;</P>
						<STRONG></STRONG>
						<P>&nbsp;</P></td>
				</tr>
			</tbody>
		</table>
		<table border="1">
			<tr>
				<td colspan="2" align="left"
					style="line-height: 24px; padding: 12px 10px 12px 10px;"><font
					style="font-size: small;"><p>
							특전 1] 타사 비교 필수&nbsp;<BR>
							<FONT size=2>① <FONT color=#000000>동부화재</FONT><FONT
								color=#006ae3> 여행자보험 2억원</FONT></FONT><FONT size=2><FONT
								color=#000000> 가입</FONT></FONT><BR>
							<BR>
							<SPAN style="FONT-FAMILY: 돋움; FONT-SIZE: 9pt"><SPAN
								style="FONT-FAMILY: 돋움; FONT-SIZE: 9pt">[특전 2] <SPAN><FONT
										size=2><FONT color=#006ae3>허니무너들에게 각광받는 </FONT></FONT><FONT
										size=2><FONT color=#006ae3>4성급 호텔 사용</FONT></FONT></SPAN><BR>
								<SPAN style="FONT-FAMILY: 돋움; FONT-SIZE: 9pt">- 골드코스트 : <FONT
										face=돋움>Mercure Goldcoast Resort </FONT>or Crown Plaza l
										Surfers Paradise&nbsp;or&nbsp;Watermark Hotel&nbsp;&nbsp;또는 동급<BR>-
										시드니 :&nbsp;Holiday INN paramatta&nbsp;or&nbsp;Mantra
										Parramatta Hotel 또는 동급
								</SPAN></SPAN></SPAN>
						<P style="TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt" class=MsoNormal
							align=left>
							<BR>
							<FONT color=#656565 size=2 face=돋움><FONT color=#000000><SPAN
									style="FONT-FAMILY: 돋움; FONT-SIZE: 9pt">[특전 3] 오감만족
										100%&nbsp;일정 </SPAN></FONT></FONT>
						</P>
						<P style="TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt" class=MsoNormal
							align=left>
							<FONT color=#656565 size=2 face=돋움><FONT color=#000000><SPAN
									style="FONT-FAMILY: 돋움; FONT-SIZE: 9pt">1.&nbsp;<FONT
										color=#006ae3>3가지 선택일정 中 택1. </FONT><BR>&nbsp;&nbsp;<FONT
										color=#444444> [선택1]&nbsp;도심속에서&nbsp;만나는 리얼 자연&nbsp;<FONT
											color=#ff4e14>커럼빈 야생 동물 공원</FONT>&nbsp;관광<BR>&nbsp;&nbsp;
											[선택2] 호주에서 가장 사랑받는 테마파크 <FONT color=#ff4e14>드림월드</FONT>
											관광&nbsp;<BR>&nbsp;&nbsp; [선택3] 헐리우드를 경험할 수 있는 <FONT
											color=#ff4e14>무비월드</FONT> 방문
									</FONT></SPAN></FONT></FONT><BR>
							<FONT color=#656565 size=2 face=돋움><FONT color=#000000><SPAN
									style="FONT-FAMILY: 돋움; FONT-SIZE: 9pt"><FONT
										color=#444444>2. 퀸즈랜드 최대의 콘래드 쥬피터 카지노 관광<BR>
										<FONT color=#444444 face=돋움>3. </FONT><STRONG><FONT
												color=#444444 face=돋움>조기예약자 : 선상디너 시, 커플당&nbsp;랍스타
													반마리 포함</FONT></STRONG></FONT></SPAN></FONT></FONT><BR>
							<BR>
							<SPAN style="COLOR: #800080"><FONT size=2 face=돋움><SPAN
									style="FONT-FAMILY: 돋움; FONT-SIZE: 9pt">[특전 4] 2017년 2월
										28일 까지 조기예약시!!!</SPAN></FONT></SPAN><BR>
							<BR>
							<FONT color=#656565 size=2 face=돋움><FONT color=#000000><SPAN
									style="FONT-FAMILY: 돋움; FONT-SIZE: 9pt"><FONT
										color=#444444>&nbsp;</FONT></SPAN></FONT></FONT><SPAN style="COLOR: #0000ff"><FONT
								size=2 face=돋움><SPAN
									style="FONT-FAMILY: 돋움; FONT-SIZE: 9pt">시드니 스냅사진
										촬영&nbsp; 포함 진행&nbsp; (단,촬영작가 팁 불포함 1인&nbsp;A$30) </SPAN></FONT></SPAN>&nbsp;
						</P></td>
			</tr>
		</table>
		<table border="1">
			<tr>
				<td width="235"><a href="countryContent.we?country=hoju">
						<img src="../imghoju/호주2.jpg" width="235" height="100" />
				</a></td>
				<td width="170">
					<div
						onclick="javascript:location.href='countryContent.we?country=hoju'"
						style="cursor: pointer;">
						<font size="5" color="#F29661">호주<br></font> <font size="4">
							지역정보<br> 보러가기
						</font> <em> <img
							src="http://ifamily.co.kr/image/iFamily/product_service/rehoney_detail_arrow02_ico.png" />
						</em>

					</div>
				</td>
				<td width="235"><a href="honeyPackage.we?nation=hoju"> <img
						src="../imghoju/호주3.jpg" width="235" height="100" />
				</a></td>
				<td width="170">
					<div
						onclick="javascript:location.href='honeyPackage.we?nation=hoju'"
						style="cursor: pointer;">
						<font size="5" color="#F29661">호주 <br></font><font size="4">패키지<br>보러가기
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