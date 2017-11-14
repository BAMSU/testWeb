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
	width: 1000px;
}

table {
	width: 800px;
}

#box {
	width: 100%;
}
</style>
</head>
<body>
	<section>
		<table border="1">
			<tr>
				<th colspan="4"><img style="width: 100%;"
					src="honeyimg/imgeu/swis1.jpg"></th>
			</tr>
			<tr>
				<td colspan="3" align="center"><font
					style="font-size: xx-large;"><strong>☆스위스의 속살 9일 풀
							패키지 ☆ </strong></font></td>
				<td><img style="width: 100%;"
					src="http://ifamily.co.kr/image/iFamily/product_service/rehoney_detail_btn01.jpg"
					alt="상품상담문의" /></td>
			</tr>
			<tr>
				<th width="172">판매기간</th>
				<td width="230" style="text-align: center;">2017-10-20 ~
					2018-06-30</td>
				<th width="172">상품가격</th>
				<td width="230" style="text-align: center;">2,990,000원 ~
					3,000,000원</td>
			</tr>
			<tr>
				<th>국가</th>
				<td style="text-align: center;">유럽</td>
				<th>여행지역</th>
				<td style="text-align: center;">스위스</td>
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
				<td><img src="honeyimg/imgeu/swis2.jpg" style="width: 100%;"
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
											style="COLOR: #008000"><STRONG>◆ 스위스
													예정호텔&lt;준특급&gt; ◆</STRONG></SPAN><BR> <SPAN style="COLOR: #000000">
												<BR>Adelboden The Cambrian
										</SPAN> <BR> <BR> 전세계 10대 수영장 호텔로 선정된 아델보덴의 더 캠브리안 호텔은 스위스를
											가장 잘 이해하기 좋은 호텔입니다. 아름다운 전경과 그 전경을 함께 즐길 수 있는 온천 시설 그리고 세심한
											서비스와 최고의 시설까지 모든 것을 다 갖춘 더 캠브리안 호텔로 초대합니다. 산토리니 이메로비글리 지역에
											위치하고 있습니다. </span>
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
					size="2">1. 유럽왕복항공권<br> 2. 항공텍스 및 유류할증료 : 481,100원 <br>&nbsp;-&nbsp;2017.10.24
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
							별로 적립율은 상이합니다.<br>
						<br>
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
						<p>
							<span style="font-family: 돋움, dotum;"><strong>1일차</strong></span><span
								style="font-family: 돋움, dotum;">&nbsp;</span>&nbsp;
						</p>
						<p>
							<span style="font-family: 돋움, dotum;">인천공항 출발 취리히 도착</span>&nbsp;
						</p>
						<p>&nbsp;</p>
						<p>&nbsp;</p>
						<p>
							<span style="font-family: 돋움, dotum;"><strong>2일차</strong></span>&nbsp;
						</p>
						<p>취리히&nbsp;인터라켄&nbsp;자유일정 (투리스타 컨설팅 진행)</p>
						<p>하르더 쿨럼 등반열차 탑승</p>
						<p>
							<img title="1417078818_1794406420.jpg"
								src="http://www.ifamily.co.kr/center/website/travel/enterprise_product/editor/1417078818_1794406420.jpg"><br
								style="clear: both;">&nbsp;
						</p>
						<p>
							<strong>3일차</strong>
						</p>
						<p>
							융프라우요흐 등반열차 탑승&nbsp;+&nbsp; 융프라우요흐 트레킹 코스 1&nbsp;(투리스타 컨설팅 진행)<span
								style="font-family: 돋움, dotum;"></span>&nbsp;
						</p>
						<p>
							<img title="1417078892_1794406420.jpg"
								src="http://www.ifamily.co.kr/center/website/travel/enterprise_product/editor/1417078892_1794406420.jpg">&nbsp;
						</p>
						<p>&nbsp;</p>
						<p>
							<strong><br></strong>
						</p>
						<p>
							<strong>4일차</strong>
						</p>
						<p>
							피르스트 오르기 + 융프라우요흐 트레킹 코스 2&nbsp;(투리스타 컨설팅 진행)<span
								style="font-family: 돋움, dotum;"></span>&nbsp;
						</p>
						<p>융프라우요흐 엑티비티 즐기기</p>
						<p>
							<img title="1417078909_1794406420.jpg"
								src="http://www.ifamily.co.kr/center/website/travel/enterprise_product/editor/1417078909_1794406420.jpg">&nbsp;
						</p>
						<p>&nbsp;</p>
						<p>&nbsp;</p>
						<p>
							<strong>5일차</strong>
						</p>
						<p>렌터카로 알프스 드라이빙 코스(수수텐 그림잴 푸르카 패스) 즐기기 (투리스타 컨설팅 진행)</p>
						<p>
							<img title="1417078969_1794406420.jpg"
								src="http://www.ifamily.co.kr/center/website/travel/enterprise_product/editor/1417078969_1794406420.jpg"><br
								style="clear: both;">&nbsp;
						</p>
						<p>&nbsp;</p>
						<p>
							<strong>6일차</strong>
						</p>
						<p>스위스의 온천 체험 아델보덴 더 캠브리안 호텔 투숙 (투리스타 컨설팅 진행)</p>
						<p>
							<img title="1417079029_1794406420.jpg"
								src="http://www.ifamily.co.kr/center/website/travel/enterprise_product/editor/1417079029_1794406420.jpg">&nbsp;
						</p>
						<p>&nbsp;</p>
						<p>
							<strong><br></strong>
						</p>
						<p>
							<strong>7일차</strong>
						</p>
						<p>스위스 치즈 마을 그뤼에르 자유일정 (투리스타 컨설팅 진행)</p>
						<p>아름다운 호반 도시 몽트뢰 자유일정 (투리스타 컨설팅 진행)</p>
						<p>
							<img title="1417078864_1794406420.jpg"
								src="http://www.ifamily.co.kr/center/website/travel/enterprise_product/editor/1417078864_1794406420.jpg">
						</p>
						<p>&nbsp;</p>
						<p>
							<strong><br></strong>
						</p>
						<p>
							<strong>8일차</strong>
						</p>
						<p>제네바 이동 후 차량 반납</p>
						<p>제네바 공항 출발</p>
						<p>
							<span style="font-family: 돋움, dotum;"><strong><img
									title="1417078777_1794406420.jpg"
									src="http://www.ifamily.co.kr/center/website/travel/enterprise_product/editor/1417078777_1794406420.jpg"></strong></span>
						</p>
						<p>&nbsp;</p>
						<p>&nbsp;</p>
						<p>&nbsp;</p>
						<p>
							<strong>9일차</strong>
						</p>
						<p>인천 공항 도착</p>
						<p>
							<span style="font-family: 돋움, dotum;">&nbsp;</span>
						</p></td>
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
				<td width="235"><a href="countryContent.we?country=swis">
						<img src="honeyimg/imgeu/swis3.jpg" width="235" height="100" />
				</a></td>
				<td width="170">
					<div
						onclick="javascript:location.href='countryContent.we?country=swis'"
						style="cursor: pointer;">
						<font size="5" color="#F29661">스위스<br></font> <font size="4">
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
		<table border="1">
			<tr>
				<th>문의 하기</th>
			</tr>
			<tr>
				<td>*이름</td>
				<td><input type="text" name="name" id="name"></td>
				<td rowspan="4"><textarea rows="20" cols="20"
						readonly="readonly" style="resize: none;">이용약관</textarea></td>
			</tr>
			<tr>
				<td>*휴대폰</td>
				<td><input type="text" name="tel" id="tel"></td>
			</tr>
			<tr>
				<td>*이메일</td>
				<td><input type="text" name="email" id="email">@ <select
					name="email">
						<option value="naver.com" selected>naver.com</option>
						<option value="nate.com" selected>nate.com</option>
						<option value="hanmail.net" selected>hanmail.net</option>
						<option value="hotmail.com" selected>hotmail.com</option>
						<option value="gmail.com" selected>gmail.com</option>
				</select></td>
			</tr>
			<tr>
				<td>*결혼 예정일</td>
				<td><input type="text" id="datepicker"></td>
			</tr>
			<tr>
				<td rowspan="2" valign="top">*문의 내용</td>
				<td rowspan="2"><textarea rows="10" cols="10"
						style="resize: none;"></textarea></td>
				<td><input type="checkbox" value="ygcheck" id="ygcheck">
					이용약관에 동의합니다</td>
			</tr>
			<tr>
				<td align="center"><input type="button" value="문의하기"></td>
			</tr>
		</table>
	</section>
</body>
</html>