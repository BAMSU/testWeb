<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
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
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  
  function qnaSubmit(ymd){
	  var year = ymd.subString(6,9);
	  var mt = ymd.subString(0,1);
	  var day = ymd.subString(3,4);
	  //ymd=00/00/0000 01/(2)34/(5)6789
	  var wedding = document.getElementById("datepicker");
	  var year2 = wedding.subString(6,9);
	  var mt2 = ymd.subString(0,1);
	  var day2= ymd.subString(3,4);
	  if(year>year2){
		  window.alert('잘못된 날짜선택입니다.');
	  }else if(year<year2&&mt>mt2){
		  window.alert('잘못된 날짜선택입니다.');
	  }else if(year<year2&&mt<mt2&&day>day2){
		  window.alert('잘못된 날짜선택입니다.');
	  }else{
		  window.alert('문의가 성공적으로 완료 되었습니다.\n 빠른 시일 내로 최적의 답변을 드리겠습니다.');
		  document.honeyQna.submit();
	  }
  };
  </script>

<style type="text/css">
section {
	width: 1000px;
	margin: 0px auto;
}

table {
	width: 800px;
	margin: 0px auto;
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
<%@include file="/header.jsp"%>
	<section>
		<table border="1">
			<tr>
				<th colspan="4"><img style="width: 100%;"
					src="honeyimg/imgeu/benetia2.jpg"></th>
			</tr>
			<tr>
				<td colspan="3" align="center"><font
					style="font-size: xx-large;"><strong>☆ 물의 도시 베네티아
							6박 7일로 완전 정복! ☆ </strong></font></td>
				<td><img style="width: 100%;"
					src="http://ifamily.co.kr/image/iFamily/product_service/rehoney_detail_btn01.jpg"
					alt="상품상담문의" /></td>
			</tr>
			<tr>
				<th class="table-active" width="172">판매기간</th>
				<td width="230" style="text-align: center;">2017-11-04 ~
					2018-06-26</td>
				<th class="table-active" width="172">상품가격</th>
				<td width="230" style="text-align: center;">2,797,000원 ~
					2,997,000원</td>
			</tr>
			<tr>
				<th class="table-active">국가</th>
				<td style="text-align: center;">유럽</td>
				<th class="table-active">여행지역</th>
				<td style="text-align: center;">이탈리아</td>
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
				<th class="table-active" colspan="2" align="left"
					style="line-height: 24px; padding: 12px 10px 12px 10px;">리조트
					정보</th>
			</tr>
			<tr>
				<td><img src="honeyimg/imgeu/italy_benetia.jpg" style="width: 100%;"
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
											style="COLOR: #008000"><STRONG>◆ 로마
													예정호텔&lt;준특급&gt; ◆</STRONG></SPAN><BR> <SPAN style="COLOR: #000000"><U>출발
													3일전까지 유선 또는 이메일을 통해 확정호텔 안내드립니다.</U><BR> <BR>SHERATON
												GOLF HOTEL<BR>MELIA ROMA AURELIA ANTICA</SPAN></SPAN><BR> <BR>
										<SPAN style="FONT-FAMILY: 돋움; FONT-SIZE: 9pt"><SPAN
											style="COLOR: #008000"><STRONG>◆&nbsp;베니스
													예정호텔&lt;준특급&gt; ◆</STRONG></SPAN><BR> <SPAN style="COLOR: #000000"><U>출발
													3일전까지 유선 또는 이메일을 통해 확정호텔 안내드립니다.</U><BR> <BR>PLAZA
												VENICE<BR>QUALITY HOTEL DELPINO VENE</SPAN></SPAN>
									</P>
								</TD>
							</TR>
						</TBODY>
					</TABLE>

				</td>
			</tr>
			<tr>
				<th class="table-active" style="line-height: 24px; padding: 12px 10px 12px 10px;">포함
					조항</th>
				<th class="table-active" style="line-height: 24px; padding: 12px 10px 12px 10px;">불포함
					조항</th>
			</tr>
			<tr>
				<td
					style="line-height: 24px; padding: 12px 10px 12px 10px; width: 50%">
					<font style="font-size: small;">왕복 항공권 및 유류할증료 <BR> ☆
						인천공항세, 현지공항세, 관광진흥개발기금, 전쟁보험료 <BR> ☆ 준특급 호텔 6박 및 호텔조식 <BR>☆
						일정에 포함된 차량 관광 및 한국인 가이드 <BR> (기차 이동 및 자유일정 시 제외) <BR>☆
						구간별 열차 및 예약비(2등석) <BR> ☆ 일정에 포함된 식사 및 관광 입장료(바티칸 박물관) <BR>
						☆ 로마 야경투어 (전용차량 행사) <BR>☆ 로마 스냅 포함 <BR> ☆ 이태리 남부투어 포함 <BR>☆
						베네치아 곤돌라 탑승 <BR> ☆ 공항 -&gt; 호텔 간 미팅 서비스 <BR>☆ 가이드 경비 포함
						<BR> <BR>● 완납 후 제공해 드리는 롯데관광만의 특별한 사은품 ● <BR>1. 고급
						여행용 가방 or 동화면세점 10만원 상품권 中 선택 1가지 (커플당 증정). <BR>① 여행용가방 선택시 :
						택배로만 수령 가능합니다. <BR>② 상품권 선택시 : 동화면세점은 롯데관광 광화문 본사 1층에 위치하며<br>
						인천공항 및 타지역에는 없습니다. 쇼핑시는 여권(또는복사본)을<br> 꼭 지참하셔야 하며, 롯데관광 광화문
						본사 5층에서 <br>상품권 수령 후 1층에서 쇼핑하시면 됩니다.
				</font>
				</td>

				<td
					style="line-height: 24px; padding: 12px 10px 12px 10px; width: 50%;">
					<font style="font-size: small;"> ☆ 로마 스냅촬영 시, 사진작가 팁 현지
						지불(1인 20€) <BR> ☆ 가이드경비(식당 물값 및 테이블경비) - 1인 1회당 3유로씩 총 18유로 <BR>☆
						호텔 체크인 시, Tourist Tax 약 4~5€ (1인 1박 기준) 현지에서 지불해야 합니다. <BR> ☆
						피렌체 짐 유인 보관함 비용 (1인 1회 약 9€) <BR> ☆ 자유일정 시 교통비, 관광지 입장료, 식사,
						테이블 TIP <BR> ☆ 매너팁 : 객실 ROOM TIP, 포터사용시 포터비 및 포터 TIP <BR>
						※ 매너팁은 소비자의 자율 적 선택으로 지불여부에 따른 불이익은 없습니다.
				</font>
				</td>
			</tr>
		</table>
		<br>

		<table border="1">
			<tr>
				<th class="table-active" colspan="2" align="left"
					style="line-height: 24px; padding: 12px 10px 12px 10px;">허니문
					일정</th>
			</tr>
			<tr>
				<td colspan="2" align="left"
					style="line-height: 24px; padding: 12px 10px 12px 10px;"><font
					style="font-size: small;">
						<p>
							<strong>-1일차<strong>&nbsp; 
						</p>
						<p>
							◆ 알이탈리아항공 : AZ759 ICN(13:50 인천국제공항 출발)-FCO(19:05: 레오나르도다빈치(로마)
							도착)<BR>◆ 비행시간, 약 12시간 35분
						</p>
						<P>
							<STRONG>로마&nbsp;도착 후 한국인 or 현지인 픽업 가이드와 만나 호텔 이동</STRONG>
						</P>
						<P>
							<STRONG></STRONG>&nbsp;
						</P>
						<P>
							<STRONG>-2일차</STRONG>
						</P>
						<P>
							호텔 조식 후 <SPAN style="COLOR: #0000ff"><STRONG>가이드와
									만나 폼페이로 이동 후 관광<BR> <STRONG>[GroupTour</STRONG><STRONG>♬]
										이태리 남부투어 조인</STRONG>
							</STRONG></SPAN>
						</P>
						<P>&nbsp;</P> <SPAN style="COLOR: #0000ff"><STRONG><STRONG></STRONG></STRONG></SPAN>
						<P>
							베수비오스 화산 폭발로 인해서 도시 전체가 화산재에 덮힌<BR>비운의 도시<STRONG> <SPAN
								style="COLOR: #0000ff">폼페이 유적지</SPAN></STRONG><BR> <BR> <SPAN
								style="COLOR: #008000"><STRONG>피자의 원조 고장에서 즐기는 </STRONG><STRONG>이탈리아
									정통 피자를~♪</STRONG></SPAN><BR>남부 이탈리아에서 수제로 바로 만드는 도우와 화덕에 굽는 피자로 어디서도<BR>비교
							할수 없는 맛을 느껴보세요~♪
						</P>
						<P>&nbsp;</P>
						<P>
							유럽 3대 해안도로 중 하나인 아말피 코스트의 가장 하이라이트 코스인<BR> <SPAN
								style="COLOR: #0000ff"><STRONG>절벽위의 포시타노 드라이브
									즐기기</STRONG></SPAN>
						</P>
						<P>&nbsp;</P>
						<P>
							돌아오라~ 소렌토!의 아기자기 예쁜 <STRONG><SPAN style="COLOR: #0000ff">소렌토
									시가지에서<BR>레몬, 올리브의 향기를 맡으며 자유시간을
							</SPAN>~</STRONG><BR> <BR> <BR> <STRONG>-3일차</STRONG>
						</P>
						<P>
							호텔 조식 후 호텔 로비 앞 <SPAN style="COLOR: #0000ff"><STRONG>가이드와
									만나 로마 관광</STRONG></SPAN><BR> <BR>르네상스 시대의 거장들의 작품을 볼 수 있는<STRONG>
							</STRONG><A href="javascript:showinfo('SPOT','1749')"><SPAN
								style="COLOR: red" id=SPOT_1749_바티칸박물관 title=LTEIP_SCDL><STRONG>바티칸
										박물관</STRONG></SPAN></A><STRONG>&nbsp;<BR></STRONG>미켈란젤로의 ‘천지 창조, 최후의 심판’을 볼 수
							있는<STRONG> </STRONG><A href="javascript:showinfo('SPOT','142')"><SPAN
								style="COLOR: red" id=SPOT_142_시스티나예배당 title=LTEIP_SCDL><STRONG>시스티나
										예배당</STRONG></SPAN></A><STRONG>&nbsp;<BR></STRONG>세계 카톨릭교의 본산지이자 세계에서 가장 큰 <A
								href="javascript:showinfo('SPOT','1748')"><SPAN
								style="COLOR: red" id=SPOT_1748_산피에트로대성당(성베드로성당)
								title=LTEIP_SCDL><STRONG>산 피에트로 대성당(성 베드로 성당)</STRONG></SPAN></A><STRONG>&nbsp;<BR></STRONG>로마
							귀족들이 즐겨본 전차경기가 열리던<STRONG>&nbsp;</STRONG><A
								href="javascript:showinfo('SPOT','31732')"><SPAN
								style="COLOR: red" id=SPOT_31732_대전차경기장 title=LTEIP_SCDL><STRONG>대전차
										경기장</STRONG></SPAN></A><BR>로마의 상징이자 2000여년전 고대 원형경기장인<STRONG>&nbsp;&nbsp;</STRONG><A
								href="javascript:showinfo('SPOT','1750')"><SPAN
								style="COLOR: red" id=SPOT_1750_콜로세움 title=LTEIP_SCDL><STRONG>콜로세움</STRONG></SPAN></A><STRONG>&nbsp;<BR></STRONG>고대
							로마의 정치 중심지<STRONG> </STRONG><A
								href="javascript:showinfo('SPOT','20515')"><SPAN
								style="COLOR: red" id=SPOT_20515_포로로마노 title=LTEIP_SCDL><STRONG>포로
										로마노</STRONG></SPAN></A><BR> <BR> <SPAN style="COLOR: #ff0000">※
								바티칸 휴관일에는&nbsp;콜로세움 &amp; 포로로마노 내부관람으로 대체됩니다.</SPAN><BR> <BR>
							<SPAN style="COLOR: #008000"><STRONG>♡ </STRONG>전문 포토그래퍼와
								함께하는 <STRONG>로마 허니문 스냅 포함 ♡</STRONG><BR> <STRONG>셀렉
									및 색보정컷 기준 15장 제공 / 사진작가 팁 현지 지불(1인 20€)</STRONG></SPAN><BR> <BR>호텔 휴식
						</P>
						<P>&nbsp;</P>
						<P>
							<STRONG>-4일차</STRONG>
						</P>
						<P>
							호텔 조식 후<STRONG> 가이드와 만나 기차역 이동 </STRONG>(Tiburtina 역)<BR> <STRONG><SPAN
								style="COLOR: #0000ff">[출발예정-08:55]</SPAN> 로마 출발(Tiburtina 역)
								&nbsp;<BR> <SPAN style="COLOR: #0000ff">[도착예정-10:17)</SPAN>
								피렌체 중앙역(Firenze S.M.N.) 도착&nbsp;</STRONG>
						</P>
						<P>
							<SPAN style="COLOR: #0000ff"><STRONG>(반일) 가이드와 함께
									피렌체&nbsp;관광</STRONG></SPAN><BR> <BR>피렌체의 상징 <A
								href="javascript:showinfo('SPOT','160')"><SPAN
								style="COLOR: red" id=SPOT_160_꽃의성모마리아성당[두오모] title=LTEIP_SCDL><STRONG>꽃의
										성모마리아 성당[두오모]</STRONG></SPAN></A><STRONG>&nbsp;<BR></STRONG>피렌체를 한눈에 바라볼 수 있는<STRONG>&nbsp;</STRONG><A
								href="javascript:showinfo('SPOT','152')"><SPAN
								style="COLOR: red" id=SPOT_152_미켈란젤로언덕 title=LTEIP_SCDL><STRONG>미켈란젤로
										언덕</STRONG></SPAN></A><STRONG>&nbsp;<BR></STRONG>단테가 베아트리체와 사랑에 빠진<STRONG>
							</STRONG><A href="javascript:showinfo('SPOT','28815')"><SPAN
								style="COLOR: red" id=SPOT_28815_베키오다리 title=LTEIP_SCDL><STRONG>베키오
										다리</STRONG></SPAN></A><STRONG>&nbsp;<BR></STRONG>르네상스 시대의 조각상을 볼 수 있는 <A
								href="javascript:showinfo('SPOT','28808')"><SPAN
								style="COLOR: red" id=SPOT_28808_시뇨리아광장 title=LTEIP_SCDL><STRONG>시뇨리아
										광장</STRONG></SPAN></A><STRONG>&nbsp;<BR></STRONG>‘천국의 문’으로 유명한 싼죠반니 세례당 관광<BR>
							<BR> <STRONG>가이드 투어 종료 후 오후 피렌체 자유 일정<BR> <BR>
								<SPAN>♡ 추천! FIRENZE 웨딩스냅 촬영 ♡</SPAN></STRONG><BR>단 한번뿐인 허니문을 좀 더
							특별하게 기념하고자 한다면~<BR>사진작가와 2시간 단독촬영으로 사진 퀄리티를 필수 비교!<BR>(1인
							15만원 추가 _ <A href="http://www.mariagedereve.co.kr/">www.mariagedereve.co.kr</A>
							)<BR> <BR> <BR> <STRONG>기차역으로 개별 이동 후
								고속열차를 타고 베네치아로 이동<BR> <SPAN style="COLOR: #0000ff">[출발예정-20:25]
							</SPAN>
							</STRONG>피렌체 중앙역(Firenze S.M.N.역)출발
						</P>
						<P>
							<SPAN style="COLOR: #0000ff"><STRONG>[도착예정-22:23]</STRONG></SPAN>
							베네치아 메스트레(MESTRE)역 도착 후 <STRONG>개별 호텔 이동</STRONG><BR>(기차역 바로
							앞에 호텔이 있어 찾아가기 어렵지 않습니다)<BR> <BR>호텔 휴식
						</P>
						<P>&nbsp;</P>
						<P>
							<STRONG>-5일차</STRONG>
						</P>
						<P>
							호텔 조식 후 호텔 로비 앞 <SPAN style="COLOR: #0000ff"><STRONG>가이드와
									만나 베니스(=베네치아) 관광</STRONG></SPAN><BR>베니스의 활기를 느낄 수 있는 <STRONG>어시장<BR></STRONG>대운하에서
							가장 아름다운 <STRONG>리알토 다리<BR></STRONG>동서양의 절묘한 양식의 조화 <STRONG>싼마르코
								성당&amp;광장에서<BR>
							</STRONG>자유시간~ 카페에서 흐르는 음악선율과 함께 산책을 즐겨보자!<BR>플레이보이의 대명사 카사노바가 들어간 <STRONG>탄식의
								다리<BR>
							</STRONG>바로크 양식의 대표적인 <STRONG>살루떼 성당(외관)<BR></STRONG>베네치아의 명물이자 로맨틱함의
							절정 <STRONG>곤돌라 탑승</STRONG>
						</P>
						<P>
							<STRONG></STRONG>&nbsp;
						</P>
						<P>
							<STRONG>-6일차</STRONG>
						</P>
						<P>
							호텔 조식 후 <SPAN style="COLOR: #0000ff"><STRONG>베네치아
									자유 관광</STRONG></SPAN><BR> <BR> <SPAN style="COLOR: #008000"><STRONG>추천!!
									노벤타 아울렛 쇼핑(NOVENTA OUTLET)</STRONG></SPAN><BR> <SPAN
								style="COLOR: #000000">약 120여개 최고급 명품 브랜드를 30-70% 할인된 가격에
								추가로<BR> <STRONG>10% D/C&nbsp; </STRONG><STRONG>단독
									제공+ TAX REFUND 12%</STRONG> 까지 !!<BR>상상 이상의 최저 가격으로 쇼핑 할 수 있습니다.<BR>-
								최근 신상품 다량 확보<BR>- 수준 높은 명품 브랜드가 다양<BR>- 로마, 피렌체 아울렛에
								비해 가방, 구두, 의류 등 물량 확보가<BR>많고 관광객이 적어 여유로운 쇼핑이 가능
							</SPAN><BR> <SPAN style="COLOR: #000000"><BR>호텔 휴식</SPAN>
						</P>
						<P>
							<STRONG></STRONG>&nbsp;
						</P>
						<P>
						<DD>&nbsp;</DD>
						<P>&nbsp;</P>
						<P>
							<STRONG>-7일차</STRONG>
						</P>
						<P>
							호텔 조식 후 <STRONG><SPAN style="COLOR: #0000ff">베네치아
									자유 관광 </SPAN><BR> <SPAN style="COLOR: #000000">항공출발 약 3시간
									전까지 공항 개별 이동</SPAN><BR> <BR></STRONG>알이탈리아항공 : VCE( 베니스 출발)-FCO(
							레오나르도다빈치(로마) 도착)<BR>◆ AZ1466 베니스 (12:10) - 로마 (13:25)<BR>◆
							로마 도착 후 환승, 대기연결시간 약 1시간 45분
						</P>
						<P>
							◆ AZ758 FCO(15:05: 레오나르도다빈치(로마) 출발)-ICN(09:25 인천국제공항 도착)<BR>◆
							비행시간, 약 11시간 25분
						</P>

				</font></td>
			</tr>
		</table>
		<table border="1">
			<tr>
				<td colspan="2" align="left"
					style="line-height: 24px; padding: 12px 10px 12px 10px;"><font
					style="font-size: small;"><SPAN style="COLOR: #000000"><STRONG>[상품특전]</STRONG></SPAN><BR>
						<BR>
						<OL>
							<LI><SPAN style="COLOR: #000000">엄선된 호텔로 준비한 <STRONG>준특급
										호텔 이용</STRONG></SPAN></LI>
							<LI><SPAN style="COLOR: #000000"><STRONG>가이드
										일정 5년차 이상의 전문 가이드 &amp; 전용 차량 행사 (<SPAN style="COLOR: #ff0000">대표도시
											로마 4쌍 기준</SPAN>)
								</STRONG></SPAN></LI>
							<LI><SPAN style="COLOR: #000000">전문 포토그래퍼와 함께하는 <SPAN
									style="COLOR: #ff0000"><STRONG>로마 스냅촬영 포함 </STRONG></SPAN>(팁 1인
									20€ 현지 지불)
							</SPAN></LI>
							<LI><SPAN style="COLOR: #000000">유럽에서 손꼽히는 아름다운 <STRONG>로마
										야경 투어 포함 </STRONG>(약 50유로 상당/차량행사)
							</SPAN></LI>
							<LI><SPAN style="COLOR: #000000">죽기 전에 꼭 가봐야 할 곳으로
									선정된 <SPAN style="COLOR: #ff0000"><STRONG>아말피
											해안을 포함한 이태리 남부투어</STRONG></SPAN>
							</SPAN></LI>
							<LI><SPAN style="COLOR: #000000">이태리 <STRONG>토스카나
										지역의 정수, 꽃의 도시 <SPAN style="COLOR: #ff0000">피렌체 </SPAN>관광
								</STRONG></SPAN></LI>
							<LI><SPAN style="COLOR: #000000">베니스의 명물 곤돌라 탑승</SPAN></LI>
							<LI><SPAN style="COLOR: #000000">가이드 경비 포함 </SPAN></LI>
						</OL> <BR> <SPAN style="COLOR: #000000"><STRONG><STRONG><STRONG>♥
										4쌍 행사 ♥</STRONG></STRONG></STRONG></SPAN><BR> <SPAN style="COLOR: #000000"><STRONG><STRONG>유럽
									허니문의 대표도시인 </STRONG></STRONG></SPAN><SPAN style="COLOR: #000000"><STRONG><STRONG><SPAN
									style="COLOR: #ff0000"><STRONG>파리, 로마 일정을 4쌍
											소규모로 진행해 드립니다.</STRONG></SPAN></STRONG></STRONG></SPAN><BR> <SPAN style="COLOR: #000000"><STRONG><STRONG>-
									편안하고 고급스러운 행사 및 이동시간 단축으로 허니문다운 여행이 가능합니다.<BR>여행객 최다도시 파리,
									로마에서 소규모 인원으로 가성비 최고의 일정을<BR>즐겨보세요~!
							</STRONG></STRONG></SPAN><BR> <BR> <BR> <SPAN style="COLOR: #000000"><STRONG><STRONG><STRONG>♥
										남부투어 ♥ </STRONG><STRONG>Where ? </STRONG><STRONG>아말피 &amp; 소렌토<BR>
										<STRONG>‘</STRONG><STRONG>죽기 전에 꼭 가봐야 할 곳’ 1위로 선정되어
											더욱 유명해진 아말피(Amalfi)</STRONG></STRONG></STRONG></STRONG><BR>아름다운 해안 도시와 마을들로 인해 1997년 유네스코에서
							세계문화유산으로 지정한 곳이다.<BR>깎아 놓은듯한 해안 절벽을 따라 늘어선 하얀 지붕의 집들로 인해 유럽의
							낭만을 느낄 수 있다.<BR>세계 3대 미항이라는 나폴리에서 동남쪽으로 70km 떨어져 있으며, 매년
							여름이면 세계 여러 부자들과 유명<BR>인사들이 자주 찾는 비밀스러운 휴양지이다.</SPAN><BR></td>
			</tr>
		</table>
		<table border="1">
			<tr>
				<td width="235"><a href="countryContent.we?country=italy">
						<img src="honeyimg/imgeu/benetia2.jpg" width="235" height="100" />
				</a></td>
				<td width="170">
					<div
						onclick="javascript:location.href='countryContent.we?country=italy'"
						style="cursor: pointer;">
						<font size="5" color="#F29661">이탈리아<br></font>
						<font size="4"> 지역정보<br> 보러가기</font> <em> <img
								src="http://ifamily.co.kr/image/iFamily/product_service/rehoney_detail_arrow02_ico.png" />
						</em>
						
					</div>
				</td>
				<td width="235"><a href="honeyPackage.we?nation=eu">
						<img
						src="http://ifamily.co.kr/center/website/travel/1408691829_2.jpg"
						width="235" height="100" />
				</a></td>
				<td width="170">
					<div
						onclick="javascript:location.href='honeyPackage.we?nation=eu'"
						style="cursor: pointer;">
						<font size="5" color="#F29661">유럽
						<br></font><font size="4">패키지<br>보러가기
						</font> <em> <img
							src="http://ifamily.co.kr/image/iFamily/product_service/rehoney_detail_arrow02_ico.png"
							 />
						</em>
					</div>
				</td>
			</tr>
		</table>
		<hr>
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
	<%@include file="/footer.jsp"%> 
</body>
</html>