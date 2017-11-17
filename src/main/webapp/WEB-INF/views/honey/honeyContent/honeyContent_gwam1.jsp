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
					src="honeyimg/imggwam/gwam1.jpg"></th>
			</tr>
			<tr>
				<td colspan="3" align="center"><font
					style="font-size: xx-large;"><strong>☆오션뷰 힐튼 메인타워/
							괌 <br> 5일 by LotteGG ☆
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
				<td width="230" style="text-align: center;">1,590,000원 ~
					1,790,000원</td>
			</tr>
			<tr>
				<th>국가</th>
				<td style="text-align: center;">미국</td>
				<th>여행지역</th>
				<td style="text-align: center;">괌</td>
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
				<td><img src="../imgeu/spain2.jpg" style="width: 100%;"
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
											style="COLOR: #008000"><STRONG>◆ 힐튼 리조트&스파
													&gt; ◆</STRONG></SPAN><BR> <SPAN style="COLOR: #000000"> <BR>Hilton
												Guam Resort & Spa
										</SPAN> <BR> <BR> Hilton Guam Resort & Spa에서 언더워터 월드까지 쉽게
											이동하실 수 있습니다. 수도 아가냐와 앤토니오 B 윈팻 국제공항까지는 차로 10분이면 가실 수 있습니다.
											하갓냐 베이, 파이파이 비치까지는 차로 20분이 걸립니다. 투몬 만 백사장에 자리한 이 리조트에서는 5개의
											풀과 워터 슬라이드가 있는 리소파 워터파크를 이용하실 수 있습니다. 또한 데이 스파, 시설이 완비된
											피트니스센터, 조명등이 달린 5개의 코트가 있는 테니스 클럽과 같은 최고급 시설을 갖추고 있습니다. 이
											리조트에는 2개의 채플뿐만 아니라 키즈풀과 키즈 파라다이스 놀이방을 비롯한 다양한 어린이 놀이 시설도 마련되어
											있습니다. 게다가 스노클링 등을 포함한 다양한 야외 활동에 참여하실 수 있기 때문에 온 가족이 즐거운 시간을
											보내실 수 있습니다. 관광지로 이동하시는 경우 무료 셔틀 서비스도 제공하고 있습니다. 리조트 내 넓은
											객실에서는 바다와 정원 전경을 즐기실 수 있습니다. 객실의 안락한 거실에서 무료로 제공되는 차/커피로 따뜻한
											음료 즐기실 수 있습니다. 전용 욕실, 전용 발코니 및 냉장고도 이용하실 수 있습니다. 리조트 내부에 마련된
											Fisherman's Cove에서 해산물 요리를 드시면서 즐거운 식사를 하실 수 있습니다. 언제든지 이용
											가능한 룸서비스를 제공하고 있을 뿐만 아니라 주변에 다양한 레스토랑과 카페가 있습니다. </span>
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
					size="2">
						<P>▣ 국제선 왕복항공료&nbsp;각종항공 TAX(전쟁보험료, 인천공항세, 관광진흥개발기금, 현지공항세),
							유류할증료 &nbsp;</P>
						<P>▣ 관광지 입장료</P>
						<P>▣&nbsp;&nbsp;전일정 조식 호텔 숙박비</P>
						<P>▣ 전용 차량</P>
						<P>
							▣&nbsp;&nbsp;2억원 여행자보험,&nbsp;<BR>▣&nbsp;가이드/기사경비, 유류할증료 <BR>▣
							사은품 안내 <BR> - 고급 여행용 가방 또는 동화면세점 10만원 상품권 중 택1 (완납시 커플당 1개
							제공) &nbsp;
						</P>
				</font>
				<td
					style="line-height: 24px; padding: 12px 10px 12px 10px; width: 50%;">
					<font face="돋움체"><font color="#0021b0" size="2">▣
							중/석식및 개인여비, 매너팁 <BR>▣ 개인경비 <BR>▣ 국토해양부의 '국제선 항공요금과
							유류할증료 확대방안' 또는 'IATA의 ROE 인상 발표'에 따라 <BR> 국외여행 표준약관에 준하여
							여행비용이 예고없이 인상되거나, 또는 인하된 금액으로 반영될 수 있습니다.<br>
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

						<P>
							<STRONG>-1일차</STRONG>
						</P>
						<P>
							대한항공 : KE113 ICN(10:00 인천국제공항 출발)-GUM(15:30: 괌 도착)<BR>가이드 미팅
							후 리조트로 이동<BR>체크-인 후 자유시간
						</P>
						<P>&nbsp;</P>
						<P>
							<STRONG>-2일차</STRONG>
						</P>
						<P>리조트에서 조식 후 가이드 미팅</P>
						<P>
							<STRONG>아일랜드 시내관광</STRONG> 【약 2시간 30분 ~ 3시간】<BR> - 슬픈 사랑의
							전설이 있는&nbsp;<A href="javascript:showinfo('SPOT','619')"><SPAN
								style="COLOR: red" id=SPOT_619_사랑의절벽>사랑의 절벽&nbsp;</SPAN></A>&nbsp;<BR>
							- 남태평야의&nbsp;푸른바다가 내려다 보이는 <A
								href="javascript:showinfo('SPOT','2522')"><SPAN
								style="COLOR: red" id=SPOT_2522_주지사관저>주지사 관저</SPAN></A>&nbsp;<BR>
							- 초콜렛 하우스로 유명한 <A href="javascript:showinfo('SPOT','641')"><SPAN
								style="COLOR: red" id=SPOT_641_스페인광장>스페인 광장&nbsp;</SPAN></A>&nbsp;<BR>호텔&nbsp;투숙&nbsp;
						</P>
						<P>&nbsp;</P>
						<P>
							<STRONG>-3일차</STRONG>
						</P>
						<P>
							호텔&nbsp;조식 후<BR>*선택관광<STRONG> (불포함)</STRONG><BR>①&nbsp;원주민
							민속 BBQ디너쇼<BR>&nbsp;- 석양이 물든 야외 무대에서 펼쳐지는 멋진 원주민들의 민속공연 + BBQ<BR>②&nbsp;샌드캐슬
							라스베가스쇼<BR>&nbsp;- 전용극장 샌드캐슬에서 펼쳐지는 화려하고 웅장한 환상의 매직쇼<BR>③
							파라세일링<BR>&nbsp;- 스피드 보트가 전용 낙하산에 줄을 이어 바다 위를 질주하는 수상 승포츠<BR>④
							원주민 전통 마사지<BR>&nbsp;- 오일 또는 지압 마사지를 선택. 말끔히 풀 수 있는 전통 마사지<BR>&nbsp;리조트&nbsp;귀환
							후 휴식&nbsp;
						</P>
						<P>&nbsp;</P>
						<P>
							<STRONG>-4일차&nbsp; </STRONG>
						</P>
						<P>리조트에서 조식 후 부대시설 이용 및 자유시간</P>
						<P>
							선택관광<STRONG> (불포함)</STRONG><BR>①&nbsp;원주민 민속 BBQ디너쇼<BR>&nbsp;-
							석양이 물든 야외 무대에서 펼쳐지는 멋진 원주민들의 민속공연 + BBQ<BR>②&nbsp;샌드캐슬
							라스베가스쇼<BR>&nbsp;- 전용극장 샌드캐슬에서 펼쳐지는 화려하고 웅장한 환상의 매직쇼<BR>③
							파라세일링<BR>&nbsp;- 스피드 보트가 전용 낙하산에 줄을 이어 바다 위를 질주하는 수상 승포츠<BR>④
							원주민 전통 마사지<BR>&nbsp;- 오일 또는 지압 마사지를 선택. 말끔히 풀 수 있는 전통 마사지<BR>&nbsp;리조트&nbsp;귀환
							후 휴식&nbsp;
						</P>
						<P>&nbsp;</P>
						<P>
							<STRONG>-5일차&nbsp;</STRONG>
						</P>
						<P>호텔 조식 후 체크아웃 후 자유시간</P>
						<P>
							2시간전까지 공항으로 이동
							<!--일자별 호텔정보 ST -->
						</P>
						<P>
							대한항공 : KE114 GUM(17:00: 괌 출발)-ICN(20:40 인천국제공항 도착)<BR>&nbsp;
						</P>
						<DL>
							<!--일자별 호텔정보 ST -->
							<DD class=hotel_meal>
								<UL></UL>
							</DD>
							<!--일자별 호텔정보 ED -->
							<DL>
								<DT>&nbsp;</DT>
							</DL>
						</DL></td>
			</tr>
		</table>
		<TABLE style="WIDTH: 570px; BORDER-COLLAPSE: collapse; HEIGHT: 64px"
			border=2 cellSpacing=0 borderColor=#99cc33 cellPadding=0 width=570
			height=64>
			<TBODY>
				<TR>
					<TD
						style="PADDING-BOTTOM: 12px; LINE-HEIGHT: 150%; PADDING-LEFT: 12px; PADDING-RIGHT: 12px; PADDING-TOP: 12px"
						bgColor=#f7fcec>
						<P>
							<SPAN style="COLOR: #0000ff"><STRONG>&nbsp;[롯데관광Event]</STRONG></SPAN><SPAN
								style="COLOR: #000000"> 동부화재 여행자보험 <STRONG>2억원 </STRONG>가입
							</SPAN><BR>
							<SPAN style="COLOR: #ff0000"><STRONG>[특전1]</STRONG></SPAN><SPAN
								style="COLOR: #008000"><STRONG> </STRONG></SPAN><SPAN
								style="COLOR: #663399"><STRONG>현지 가이드 &amp; 기사
									경비 포함</STRONG></SPAN><BR>
							<SPAN style="COLOR: #ff0000"><STRONG>[</STRONG></SPAN><SPAN
								style="COLOR: #ff0000"><STRONG>특전2]</STRONG></SPAN><SPAN
								style="COLOR: #008000"><STRONG> </STRONG></SPAN><SPAN
								style="COLOR: #6633cc"><STRONG>롯데관광 프로모션 Event</STRONG></SPAN><BR>
							① 괌 입국세 5$ 포함<BR> ②&nbsp;15인승 FORD VAN 차량 송영 (공항 -호텔간
							미팅&amp;샌딩 서비스)<BR>&nbsp;&nbsp;&nbsp; ③&nbsp; 가이드/기사팁
							포함&nbsp;<BR>&nbsp;&nbsp;&nbsp; ④&nbsp; 전일정 힐튼 리조트 메인 타워
							오션뷰룸&nbsp; 4박 이용 (2인 1실)<BR>&nbsp;&nbsp;&nbsp;
							⑤&nbsp;&nbsp;&nbsp;전일정 호텔 조식 4회 포함 (2인)<BR>
							<BR>
							<SPAN style="COLOR: #0000ff">※중,석식 - 현지식 or 한식으로 포함 원할경우
								(8회 식사 포함시)&nbsp; 1인당&nbsp; 150,000원 추가 금액 발생합니다. 단 패키지 식사처럼
								한테이블에 여럿히 같이 식사 하셔야 하오니 이점 양해 부탁드립니다. </SPAN><BR>
							<BR>
							<STRONG>[특전3]</STRONG> 괌의 다양한 즐길거리 체험<BR> ① 괌 시내관광
							포함&nbsp;(사랑의 절벽,파세오 공원,스페인 광장)<BR> <BR>&nbsp;<STRONG><FONT
								color=#ff0000>* 본 특전과 상품 가격은 리조트 사정상&nbsp;수시로 변경될 수 있습니다
							</FONT></STRONG><BR>
							<STRONG><FONT color=#ff0000>*&nbsp;괌은 실시간 호텔 예약
									상황이 적용 되므로, &nbsp;예약후 호텔및 항공권 확인 후 에 가능여부<BR>안내 드립니다. 또한,
									하와이는 예약가능 여부&nbsp; 확인후&nbsp;컨펌까지는 2-3일 정도 소요 되십니다. &nbsp;
							</FONT></STRONG>
						</P>
					</TD>
				</TR>
			</TBODY>
		</TABLE>
		<table border="1">
			<tr>
				<td width="235"><a href="countryContent.we?country=gwam">
						<img src="honeyimg/imggwam/gwam3.jpg" width="235" height="100" />
				</a></td>
				<td width="170">
					<div
						onclick="javascript:location.href='countryContent.we?country=gwam'"
						style="cursor: pointer;">
						<font size="5" color="#F29661">괌<br></font> <font size="4">
							지역정보<br> 보러가기
						</font> <em> <img
							src="http://ifamily.co.kr/image/iFamily/product_service/rehoney_detail_arrow02_ico.png" />
						</em>

					</div>
				</td>
				<td width="235"><a href="honeyPackage.we?nation=gwam"> <img
						src="honeyimg/imggwam/gwam4.jpg"
						width="235" height="100" />
				</a></td>
				<td width="170">
					<div
						onclick="javascript:location.href='honeyPackage.we?nation=gwam'"
						style="cursor: pointer;">
						<font size="5" color="#F29661">괌 <br></font><font size="4">패키지<br>보러가기
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