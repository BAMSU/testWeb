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
					src="honeyimg/imgfuc/fucat2.jpg"></th>
			</tr>
			<tr>
				<td colspan="3" align="center"><font
					style="font-size: xx-large;"><strong>☆더 나카 아일랜드 /
							푸켓 <br> 6일 by EnjoyFu ☆
					</strong></font></td>
				<td><img style="width: 100%;"
					src="http://ifamily.co.kr/image/iFamily/product_service/rehoney_detail_btn01.jpg"
					alt="상품상담문의" /></td>
			</tr>
			<tr>
				<th width="172">판매기간</th>
				<td width="230" style="text-align: center;">2017-10-20 ~
					2018-02-28</td>
				<th width="172">상품가격</th>
				<td width="230" style="text-align: center;">1,440,000원 ~
					1,680,000원</td>
			</tr>
			<tr>
				<th>국가</th>
				<td style="text-align: center;">태국</td>
				<th>여행지역</th>
				<td style="text-align: center;">푸켓</td>
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
				<td><img src="honeyimg/imgfuc/fucat3.jpg" style="width: 100%;"
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
											style="COLOR: #008000"><STRONG>◆나카 아일랜드 ◆</STRONG></SPAN><BR>
											<SPAN style="COLOR: #000000"> <BR>The Naka
												Island, a Luxury Collection Resort
										</SPAN> <BR> <BR>더 나카 아일랜드 럭셔리 콜렉션(The Naka Island a Luxury
											Collection Resort&Spa)은 세계적인 럭셔리 호텔&리조트 체인인 스타우드 그룹에서 운영하는
											리조트다. 아름다운 풍광과 스타우드의 럭셔리 콜렉션이 주는 편안함이 더해져 신혼여행객에게 푸켓 최고급 휴식
											리조트로 각광받고 있다. 더 나카 아일랜드의 총 67채의 빌라는 자연소재를 사용해 지어졌으며 섬의 아름다운
											자연과 잘 조화를 이루고 있다. 최고급 빌라 시설을 비롯해 다양한 식음료, 해상과 육상 레포츠, 푸켓 최고
											수준의 스파 시설을 갖추고 있다. </span>
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
					size="2">▣ 국제선 왕복 항공료<br>▣ 호텔 숙박비 (2인 1실)<br>▣ 전일정
						식사<br>▣ 전용 차량비<br>▣ 관광지 입장료<br>▣ 2억원 여행자보험<br>▣
						유류할증료 및 각종 TAX (전쟁보험료, 인천공항세, 관광진흥개발기금, 현지공항세)<br>▣ 가이드/기사경비<br>▣
						롯데관광 허니문 사은품<br> <br>●&nbsp;<span
						style="color: rgb(239, 0, 124);">완납 후 제공해 드리는 롯데관광만의 특별한
							사은품</span>&nbsp;●&nbsp;<br>고급 여행용 가방(기내용슬리퍼+멀티어댑터) or 동화면세점 10만원
						상품권 中 선택 1가지 (커플당 증정)<br>① 여행용가방 선택시 : 택배로만 수령 가능<br>②
						상품권 선택시 : 롯데관광 본사(광화문) 내방 후 수령 이용 가능
				</font>
				</td>

				<td
					style="line-height: 24px; padding: 12px 10px 12px 10px; width: 50%;">
					<font face="돋움체"><font color="#0021b0" size="2">▣ 물값
							등 기타 개인경비<br>▣ 매너팁<br>
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
						<span class="dotum cg dotum s14 bold 2down">樂 ★Luxury Collection★ 리조트 2박 + 나카 
아일랜드 풀빌라 2박 (6일)</span>&nbsp; <span class="2down"><!--
            <span class='dotum ctit2 s11 iconbox'><b>123</b> 할인쿠폰</span>
            <span class="dotum ctit5 s11 iconbox"><b>20,000</b> 포인트 적립</span>--></span></td></tr>
<tr>
<td bgcolor="#bebebe" height="1" colspan="2"></td></tr>
<tr>
<td height="10" colspan="2"></td></tr></tbody></table><p>&nbsp;</p><table border="0" cellspacing="0" cellpadding="0" width="733">
<tbody>
<tr>
<td valign="top" width="733" align="middle">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%" bgcolor="#def1f9">
<tbody>
<tr>
<td><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/goods/view_bar1.gif" width="1" height="32"></td>
<td style="PADDING-LEFT: 19px" width="100%"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/goods/tit_vGdsSpecial.gif" width="277" height="21"></td>
<td><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/goods/view_bar1.gif" width="1" height="32"></td></tr></tbody></table></td></tr>
<tr>
<td style="PADDING-BOTTOM: 33px; PADDING-LEFT: 22px; PADDING-RIGHT: 22px; PADDING-TOP: 14px" class="cg1 dotum h140">
<p>[ 나카아일랜드 럭셔리컬렉션 리조트 - 트로피칼/씨뷰 풀빌라 이미지 ]<br><img style="WIDTH: 680px; HEIGHT: 500px" alt="" src="http://image.lottetours.com/Img01/prd/4a1ca245-551c-4e98-973a-2d2632f0a3b2.jpg"><br><br><font size="2"><font face="돋움"><span style="COLOR: #006400">[이용호텔]</span><br>-&nbsp;A타입) 홀리데이인 
익스프레스 파통 2박 +&nbsp;<strong>나카 아일랜드&nbsp;(트로피칼) 풀빌라</strong> 2박 <span style="COLOR: #0000ff">&lt;해당 요금&gt;</span></font></font><br><font size="2"><font face="돋움">-&nbsp;B타입) 홀리데이인 익스프레스 파통 2박 +&nbsp;<strong>나카 아일랜드&nbsp;(씨뷰) 풀빌라</strong> 2박 <span style="COLOR: #ff0000">&lt;1인 12 만원 추가&gt;</span></font></font><br><br><font size="2" face="돋움" __jindo__id="e145042468549468815125"><span style="COLOR: #ff0000" __jindo__id="e14504247248611354389">[樂 프로그램만의 특전]</span><br>① ★ 전 일정 여유 있는 휴양 보장 
★ 자유로운 선택형 투어<br>② 팡아만 투어시 육로 이동이 아닌, 로맨틱 호핑 투어 (여유로운 오후 출발)<br>③ 팡아만 투어시 스냅사진 
촬영 (팁 포함)<br>④ 파통 나이트 투어 (노천바+게이바+야시장+방라로드)<br>⑤ 스파 마사지 프로그램&nbsp;2시간 30분 x 2회 
포함<br>&nbsp;<br><span style="COLOR: #008000" __jindo__id="e145042472604561471133">[특전 
1]</span> 타사비교필수 - 롯데관광 유일! 동부화재 여행자보험 2억원 가입<br>&nbsp;<br><span style="COLOR: #008000">[특전 2]</span> 가이드/기사 경비 포함<br>&nbsp;<br><span style="COLOR: #008000">[특전 3]</span> 특식 제공<br>① <font size="2" face="돋움">현지&nbsp;Market 
에서 즐기는 내 맘대로 현지식</font><br>② <font size="2" face="돋움">팡아만 호핑 투어 內 
선상식</font><br><font size="2" face="돋움">③ 유명한 이태리 레스토랑에서 즐기는 피자 &amp; 파스타</font><br>④ 
<font size="2" face="돋움">4일차 리조트 중식 +&nbsp;4일차 일식뷔페디너</font><br><font size="2" face="돋움">⑤</font> <font size="2" face="돋움"><font size="2" face="돋움">태국 현지식 또는 태국식 샤브샤브 
수끼</font></font><br>⑥ <font size="2" face="돋움">푸켓 최고의 삼겹살&nbsp;or 불고기 정식</font><br>　<span style="COLOR: #008000">&nbsp;<br>[특전 4]</span> 릴렉스 타임 마사지 제공<br>① 타이 엔틱&nbsp;마사지 2시간 
(<span style="COLOR: #ff0000">2일차 선택시</span>)<br>② 오리엔탈 스파 체험 2시간 30분 체험 
(전통맛사지+오일맛사지+허브사우나)<br>③ 힐링케어&nbsp;타이마사지 프로그램&nbsp;(타이엔틱 2시간 OR 발마사지 1시간 OR 헤드&amp;숄더 1시간 
중 택1)<br>&nbsp;<br><span style="COLOR: #008000" __jindo__id="e14504247228881913735">[특전 5] </span>푸켓의 즐길거리 옵션 포함<br>① 팡아만 어드벤쳐 
투어 (선택시)<br>② 돌핀쇼 관람<br>③ 럭셔리 요트 크루즈 &amp; 스노클링 
(선택시)</font><br><font size="2" face="돋움" __jindo__id="e145042468533380580505">④ 사이몬쇼 or 아프로디테쇼 中 택1<br>⑤ 파통 야간 디스커버리 
투어<br><br><span style="COLOR: #0000ff">※ 푸켓 IN, OUT 시 타국가 체류 고객님은 1인 $100 추가 
됩니다.<br>※ 비허니문 (결혼당일주 출발이 아닌 경우) 일 경우, 1인 $250 추가 됩니다. (타허니문 행사와 조인)<br><font size="2" face="돋움">※ 두분 모두 외국국적 일 경우, 1인 $100 추가 됩니다. (둘중 한분이라도 한국여권일 경우 
추가비용X)<br>&nbsp;- 중국국적자의 경우, 태국 입국 시 도착비자 발급 필수 입니다. (1인 2,000바트 + 여권용사진 지참 
必)</font></span></font></p></td></tr></tbody></table></td></tr></tbody></table><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><table border="0" cellspacing="0" cellpadding="0" width="100%"><tbody>
<tr>
<td style="PADDING-LEFT: 13px" height="35"><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td style="PADDING-LEFT: 13px" height="35"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/goods/tit_detailSchedule.gif" width="132" height="30"></td>
<td style="PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 5px; PADDING-TOP: 10px" align="right"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/goods/img_tipDetail.gif" width="324" height="19"></td></tr></tbody></table></td></tr>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td width="10"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_top_01.gif" width="10" height="8"></td>
<td class="2gt2" bgcolor="#90b2f3" width="100%"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/goods/common/blank.gif" width="1" height="1"></td>
<td width="10"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_top_04.gif" width="10" height="8"></td></tr></tbody></table></td></tr>
<tr>
<td class="2gl2 2gr2" bgcolor="#90b2f3">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td width="134" align="middle"><span class="tahoma cw bold s30 2up"><i>1</i>&nbsp;</span><img border="0" align="absMiddle" src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schDay.gif" width="32" height="20"> </td>
<td class="cw dotum h140" width="520"><br></td>
<td valign="bottom" width="68"></td></tr>
<tr>
<td height="4" colspan="3"></td></tr></tbody></table></td></tr>
<tr>
<td class="2gl2 2gr2">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<colgroup>
<col style="PADDING-BOTTOM: 14px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 14px" valign="top" align="middle" width="134">
<col style="PADDING-BOTTOM: 10px; PADDING-LEFT: 12px; PADDING-RIGHT: 12px; PADDING-TOP: 12px" width="588">
</colgroup><tbody>
<tr>
<td><a class="ctit5 dotum s16 bold">인천</a></td>
<td class="h150 cg1 dotum 1gl2 "><p><font color="blue"><br></font></p><p><font color="blue">[미팅시간] 16:30<br>[미팅장소] 인천국제공항 
3층 출국장 M카운터 창측 롯데관광 만남의 장소 전용 테이블<br>[공항비상연락처] ☎ 010-9214-5502 (공항 관련 문의만 
받습니다.)</font><a><img border="0" vspace="2" align="absMiddle" src="http://image.lottetours.com/img04/wimages/b2c/button/but_vSchMeetMap.gif" width="84" height="17"></a>&nbsp;</p><p>&nbsp;</p><p><img id="DAM_0201200811222899800181193" border="0" src="http://ltassc.lottetour.com/LAMS_CONTENTS/REV/2008/11/22/IMG/SRC/0201200811222899800181193012451.GIF" height="25">아시아나항공 : OZ747 ICN(19:30 인천국제공항 출발)-HKT(00:20: 푸켓 도착)<br>◈ 운항소요시간 
◈ 【 약 6시간 15분 소요 】<br>◈ 시차정보 ◈ 【 한국보다 2시간 느립니다. 】 </p></td></tr>
<tr>
<td><p><a class="ctit5 dotum s16 bold">푸켓</a></p></td>
<td class="h150 cg1 dotum 1gl2 1gt2"><p>&nbsp;</p><p>푸켓 국제공항 도착 후 
<u __jindo__id="e148212610756329318252">가이드 미팅</u><br><br>※&nbsp;이미그레이션 통과 후 1층으로 
내려와서 짐을 찾고 출구로 나온 후<br>　 중앙 3, 4번 출구를 이용해&nbsp;외부로 나와서 <strong>현지가이드</strong> <u>(손님 
한글성함 피켓 찾기)</u> <strong>미팅</strong><br>※ 최근 신공항 오픈으로 매주 출구가 변동 되고 있습니다.&nbsp;<br>　 
혹시, 가이드를 못 만날 경우 현지 비상연락망으로 연락 부탁드리겠습니다.<br>※&nbsp;<span style="COLOR: #0000ff" __jindo__id="e148212610834751016156">비상연락망 : 김원일 이사님 : 089-652-2533&nbsp;&nbsp;&nbsp;&nbsp; 이은국 차장님 
: 081-088-6045</span><br>※ <span __jindo__id="e14821261082027298527">태국은 한국인 가이드가 공항 안에 들어갈 수 없으므로 현지 가이드님이 1차 
미팅 후,<br>　 한국인 미팅 가이드님과의&nbsp;미팅장소로 함께 이동 해드리고 있습니다.</span><br><br>숙소 이동하여 체크인 
및 휴식</p><p>&nbsp;</p></td></tr></tbody></table></td></tr>
<tr>
<td style="PADDING-BOTTOM: 4px; PADDING-LEFT: 18px; PADDING-RIGHT: 10px; PADDING-TOP: 12px" class="2gl2 2gr2 1gt2" bgcolor="#f6f6f6">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td style="PADDING-LEFT: 18px" class="cg1 dotum" height="20"><img class="1up" border="0" align="absMiddle" src="http://image.lottetours.com/img04/wimages/b2c/icon/ico_schHotel.gif" width="15" height="13">&nbsp; <a><span class="ctit1"><u>Holiday Inn Express(파통 홀리데이인 익스프레스)</u></span>&nbsp;<br></a>본 여행상품의 
숙박시설은 상기의 숙박시설 중 이용할 <span style="COLOR: #ff0000">[예정]</span> 입니다. 출발 [7]일전까지 
홈페이지 또는 유선을 통해 알려드리겠습니다.&nbsp;<a></a></td></tr>
<tr>
<td style="PADDING-LEFT: 18px" class="cg1 dotum" height="20"><img class="1up" border="0" align="absMiddle" src="http://image.lottetours.com/img04/wimages/b2c/icon/ico_schFood.gif" width="15" height="13"> 저녁 : 기내식 </td></tr></tbody></table></td></tr>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td width="10"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_bottom_01.gif" width="10" height="8"></td>
<td class="2gb2" bgcolor="#f6f6f6" width="100%"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/common/blank.gif" width="1" height="1"></td>
<td width="10"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_bottom_04.gif" width="10" height="8"></td></tr></tbody></table></td></tr></tbody></table></td></tr>
<tr>
<td height="10"></td></tr>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td width="10"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_top_01.gif" width="10" height="8"></td>
<td class="2gt2" bgcolor="#90b2f3" width="100%"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/goods/common/blank.gif" width="1" height="1"></td>
<td width="10"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_top_04.gif" width="10" height="8"></td></tr></tbody></table></td></tr>
<tr>
<td class="2gl2 2gr2" bgcolor="#90b2f3">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td width="134" align="middle"><span class="tahoma cw bold s30 2up"><i>2</i>&nbsp;</span><img border="0" align="absMiddle" src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schDay.gif" width="32" height="20"> </td>
<td class="cw dotum h140" width="520"><br></td>
<td valign="bottom" width="68"></td></tr>
<tr>
<td height="4" colspan="3"></td></tr></tbody></table></td></tr>
<tr>
<td class="2gl2 2gr2">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<colgroup>
<col style="PADDING-BOTTOM: 14px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 14px" valign="top" align="middle" width="134">
<col style="PADDING-BOTTOM: 10px; PADDING-LEFT: 12px; PADDING-RIGHT: 12px; PADDING-TOP: 12px" width="588">
</colgroup><tbody>
<tr>
<td><a class="ctit5 dotum s16 bold">푸켓</a></td>
<td class="h150 cg1 dotum 1gl2">
<p>&nbsp;</p><p>조식 후&nbsp;<u>가이드 미팅</u></p><p><u><br></u></p>
<table style="WIDTH: 572px; HEIGHT: 353px" border="1" cellspacing="1" cellpadding="1">
<tbody>
<tr>
<td><span style="COLOR: #ff0099"><span style="FONT-SIZE: 14px"><strong>♡♡ 내 맘대로 
선택 일정 (택1) ♡♡</strong></span></span><br><br>Choice 1.&nbsp;<span style="FONT-SIZE: 14px"><strong>전 일정 자유시간 </strong></span>[중 : 현지식 / 석 : 현지식]&nbsp; + 
<strong><span style="FONT-SIZE: 14px">타이 엔틱 맛사지 
</span>(2시간)</strong><br><br>Choice 2.&nbsp;<span style="FONT-SIZE: 14px"><strong>오전 
자유시간</strong> </span>+&nbsp;<span style="FONT-SIZE: 14px"><strong>팡아만 로맨틱 호핑투어 
</strong></span>+&nbsp;<span style="FONT-SIZE: 14px"><strong>스냅 사진 촬영 
</strong></span>(<span style="COLOR: #0000ff">팁포함</span>)<br><br>&nbsp;걸어서 현지속으로~ 
<span style="COLOR: #0000ff">Local Market Tour&nbsp;</span>(Big C 또는 Lotus)<br>&nbsp;-&nbsp;빅씨 
Or 로터스 등 현지 마켓에서&nbsp;로컬&nbsp; 체험 및 내 맘대로 골라먹는 현지식 중식<br><br>&nbsp;<span style="COLOR: #0000ff">팡아만 로맨틱 투어 &amp; 선상디너 &amp; 스냅사진 촬영 </span>(신혼여행의 러블리한 
모습을 작품으로 남겨보세요!)<br>&nbsp;- 라임스톤의 팡아만 절경과 동굴속 비경을 전용선과 카누를 이용하여 감상 하고 석양을 바라보며<br>&nbsp; 
&nbsp;즐기는 선상 디너입니다.&nbsp;타사의 일반 팡아 투어보다 오전의 여유로움을 만끽할수 있는 장점!!<br>&nbsp;- 아우포 부두 출발 시간 : 
14시30분, 소요시간 : 약4시간 ~4시간30분<br><br>&nbsp;<span style="COLOR: #0000ff">팡아만 호핑투어 일정 
안내</span> &lt;<span style="COLOR: #800080">태국문화 체험 및 씨카누 2회 
제공</span>&gt;<br>&nbsp;-&nbsp;환영 꽃목걸이&nbsp;&amp;&nbsp;갈증 해소를 위하여 코코넛 시음 및 음료수 무제한 
제공&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>&nbsp;-&nbsp;소계림이라 불리는 팡아만의 절경을 선상에서 관광&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>&nbsp;-&nbsp;홍섬 도착 후 카누를 타고 즐기기 (씨카누 
2회 제공)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>&nbsp;-&nbsp;선상에서 러이끄라통 연꽃모양 부표 직접 만들기 (태국문화 이색체험)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>&nbsp;-&nbsp;파낙섬에 도착 하여 
카누를 타고 박쥐동굴 탐사&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>&nbsp;-&nbsp;박쥐동굴 탐사 후 허니무너들의&nbsp; 러이끄라통 연꽃부표 띄우기 (소원을 
말해보세요)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>&nbsp;-&nbsp;배로 승선 후 선셋을 바라 보며 선상 씨푸드 디너&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>&nbsp;-&nbsp;선상에서 밤하늘을&nbsp; 바라 보며 미니 
불꽃놀이 즐기기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>&nbsp;-&nbsp;푸켓 선착장으로 귀환
<div style="TEXT-ALIGN: right"><span style="FONT-SIZE: 11px">※ 팡아만 일정 진행시, <span style="COLOR: #ff0000">3쌍 미만일 경우 일반 팡아 일정으로 대체 
</span>됩니다.</span></div></td></tr></tbody></table>
<p><br>숙소 귀환 후 휴식</p><p>&nbsp;</p></td></tr>
<tr>
<td class="ctit5 dotum s16 bold">&nbsp;</td>
<td class="h150 cg1 dotum 1gl2">
<div>
<table border="0" cellspacing="0" cellpadding="0" width="100%" bgcolor="#f5f5f5">
<tbody>
<tr>
<td width="90%"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/goods/tit_todaySight.gif" width="102" height="32"></td>
<td></td></tr>
<tr>
<td colspan="2">
<table border="0" cellspacing="0" cellpadding="0">
<tbody>
<tr>
<td style="PADDING-BOTTOM: 0px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px; PADDING-TOP: 0px">
<div style="PADDING-BOTTOM: 10px; PADDING-LEFT: 3px; PADDING-RIGHT: 3px; FLOAT: left; PADDING-TOP: 0px" valign="top"><a><img style="BORDER-BOTTOM: #ffffff 1px solid; BORDER-LEFT: #ffffff 1px solid; BORDER-TOP: #ffffff 1px solid; BORDER-RIGHT: #ffffff 1px solid" border="0" src="http://ltassc.lottetour.com/LAMS_CONTENTS/REV/2010/08/16/IMG/PREVIEW/0201201008165895100039355036059.jpg" width="100" height="75"></a><br>
<div style="TEXT-ALIGN: center; WIDTH: 100px; LETTER-SPACING: -1px; HEIGHT: 35px; PADDING-TOP: 5px"><a>팡아만 들어가는 배</a></div></div>
<div style="PADDING-BOTTOM: 10px; PADDING-LEFT: 3px; PADDING-RIGHT: 3px; FLOAT: left; PADDING-TOP: 0px" valign="top"><a><img style="BORDER-BOTTOM: #ffffff 1px solid; BORDER-LEFT: #ffffff 1px solid; BORDER-TOP: #ffffff 1px solid; BORDER-RIGHT: #ffffff 1px solid" border="0" src="http://ltassc.lottetour.com/LAMS_CONTENTS/REV/2010/08/16/IMG/PREVIEW/0201201008165910400039508036518.jpg" width="100" height="75"></a><br>
<div style="TEXT-ALIGN: center; WIDTH: 100px; LETTER-SPACING: -1px; HEIGHT: 35px; PADDING-TOP: 5px"><a>팡아만</a></div></div>
<div style="PADDING-BOTTOM: 10px; PADDING-LEFT: 3px; PADDING-RIGHT: 3px; FLOAT: left; PADDING-TOP: 0px" valign="top"><a><img style="BORDER-BOTTOM: #ffffff 1px solid; BORDER-LEFT: #ffffff 1px solid; BORDER-TOP: #ffffff 1px solid; BORDER-RIGHT: #ffffff 1px solid" border="0" src="http://ltassc.lottetour.com/LAMS_CONTENTS/REV/2012/04/10/IMG/PREVIEW/0201201204108538900065793033896.jpg" width="100" height="75"></a><br>
<div style="TEXT-ALIGN: center; WIDTH: 100px; LETTER-SPACING: -1px; HEIGHT: 35px; PADDING-TOP: 5px"><a>태국 전통안마</a></div></div>
<div></div></td></tr></tbody></table></td></tr></tbody></table></div></td></tr></tbody></table></td></tr>
<tr>
<td style="PADDING-BOTTOM: 4px; PADDING-LEFT: 18px; PADDING-RIGHT: 10px; PADDING-TOP: 12px" class="2gl2 2gr2 1gt2" bgcolor="#f6f6f6">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td style="PADDING-LEFT: 18px" class="cg1 dotum" height="20"><img class="1up" border="0" align="absMiddle" src="http://image.lottetours.com/img04/wimages/b2c/icon/ico_schHotel.gif" width="15" height="13">&nbsp; <a><span class="ctit1"><u>Holiday Inn Express(파통 홀리데이인 익스프레스)</u></span>&nbsp;<br></a>본 여행상품의 
숙박시설은 상기의 숙박시설 중 이용할 <span style="COLOR: #ff0000">[예정]</span> 입니다. 출발 [7]일전까지 
홈페이지 또는 유선을 통해 알려드리겠습니다.&nbsp;<a></a></td></tr>
<tr>
<td style="PADDING-LEFT: 18px" class="cg1 dotum" height="20"><img class="1up" border="0" align="absMiddle" src="http://image.lottetours.com/img04/wimages/b2c/icon/ico_schFood.gif" width="15" height="13"> 아침 : 리조트식 &nbsp;&nbsp;&nbsp;점심 : 현지식 &nbsp;&nbsp;&nbsp;저녁 : 선상식 
</td></tr></tbody></table></td></tr>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td width="10"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_bottom_01.gif" width="10" height="8"></td>
<td class="2gb2" bgcolor="#f6f6f6" width="100%"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/common/blank.gif" width="1" height="1"></td>
<td width="10"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_bottom_04.gif" width="10" height="8"></td></tr></tbody></table></td></tr></tbody></table></td></tr>
<tr>
<td height="10"></td></tr>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td width="10"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_top_01.gif" width="10" height="8"></td>
<td class="2gt2" bgcolor="#90b2f3" width="100%"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/goods/common/blank.gif" width="1" height="1"></td>
<td width="10"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_top_04.gif" width="10" height="8"></td></tr></tbody></table></td></tr>
<tr>
<td class="2gl2 2gr2" bgcolor="#90b2f3">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td width="134" align="middle"><span class="tahoma cw bold s30 2up"><i>3</i>&nbsp;</span><img border="0" align="absMiddle" src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schDay.gif" width="32" height="20"> </td>
<td class="cw dotum h140" width="520"><br></td>
<td valign="bottom" width="68"></td></tr>
<tr>
<td height="4" colspan="3"></td></tr></tbody></table></td></tr>
<tr>
<td class="2gl2 2gr2">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<colgroup>
<col style="PADDING-BOTTOM: 14px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 14px" valign="top" align="middle" width="134">
<col style="PADDING-BOTTOM: 10px; PADDING-LEFT: 12px; PADDING-RIGHT: 12px; PADDING-TOP: 12px" width="588">
</colgroup><tbody>
<tr>
<td><a class="ctit5 dotum s16 bold">푸켓</a></td>
<td class="h150 cg1 dotum 1gl2">
<p>&nbsp;</p><p>조식 후&nbsp;<u>가이드 미팅</u></p><p><u><br></u></p>
<table style="WIDTH: 524px; HEIGHT: 177px" border="1" cellspacing="1" cellpadding="1">
<tbody>
<tr>
<td><span style="COLOR: #ff0099"><span style="FONT-SIZE: 14px"><strong>♡♡ 내 맘대로 
선택 일정 (택1) ♡♡</strong></span></span><br><br>Choice 1.&nbsp;<span style="FONT-SIZE: 14px"><strong>럭셔리 요트크루즈 &amp; 코랄섬 호핑투어&nbsp;&nbsp;&amp; 스노클링 &amp; 
배낚시</strong></span><br>&nbsp;- Soft&nbsp;다과 제공 (과일,음료,생수) + 현지식 뷔페 중식 포함<br>&nbsp;- 셀피족의 천국에서 
나만의 베스트컷을 니모와 함게 만들어보는 해변 자유시간<br><br>Choice 2.&nbsp;<span style="FONT-SIZE: 14px"><strong>스피드보트 &amp; 피피섬 스노클링</strong></span><br>-&nbsp;피피섬의 
마야베이, 몽키베이에서의 스노클링<br>- 기상 악화 시, 리조트 자유시간 or 스피드보트&amp;코랄섬 으로 
대체&nbsp;됩니다.<br><br>Choice 3.&nbsp;<span style="FONT-SIZE: 14px"><strong>리조트 자유일정 + 리조트 
중식</strong></span></td></tr></tbody></table>
<p>&nbsp;</p><p>선택 일정 후 푸켓으로 귀환<br><br>허니무너 스파의 최고봉인<span style="COLOR: #0000ff"> 오리엔탈 스파 체험 
(2시간 30분 소요)</span><br>- 타이마사지 1시간 + 아로마 오일 테라피 1시간 + 허브사우나 30분<br><br>석식 (연인들의 
데이트 장소로 유명한 이태리 레스토랑에서 <span style="COLOR: #0000ff">피자 &amp;파스타 디너 or 
수라상)</span><br><br>세계 3대 쇼인 카바레쇼 <span style="COLOR: #0000ff">사이몬쇼 Or 아프로디테쇼 
관람</span><br><br>이 느낌! 이 기분! 그대로! 푸켓 최대 번화가인 <span style="COLOR: #0000ff">파통 나이트 
투어</span><br>-&nbsp;노천바 + 게이바 + 야시장 투어 + 방라거리 투어 등<br><br><br>숙소 귀환하여 
휴식</p><p>&nbsp;</p></td></tr>
<tr>
<td class="ctit5 dotum s16 bold">&nbsp;</td>
<td class="h150 cg1 dotum 1gl2">
<div>
<table border="0" cellspacing="0" cellpadding="0" width="100%" bgcolor="#f5f5f5">
<tbody>
<tr>
<td width="90%"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/goods/tit_todaySight.gif" width="102" height="32"></td>
<td></td></tr>
<tr>
<td colspan="2">
<table border="0" cellspacing="0" cellpadding="0">
<tbody>
<tr>
<td style="PADDING-BOTTOM: 0px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px; PADDING-TOP: 0px">
<div style="PADDING-BOTTOM: 10px; PADDING-LEFT: 3px; PADDING-RIGHT: 3px; FLOAT: left; PADDING-TOP: 0px" valign="top"><a><img style="BORDER-BOTTOM: #ffffff 1px solid; BORDER-LEFT: #ffffff 1px solid; BORDER-TOP: #ffffff 1px solid; BORDER-RIGHT: #ffffff 1px solid" border="0" src="http://ltassc.lottetour.com/LAMS_CONTENTS/REV/2010/08/12/IMG/PREVIEW/0201201008125782700038231032750.jpg" width="100" height="75"></a><br>
<div style="TEXT-ALIGN: center; WIDTH: 100px; LETTER-SPACING: -1px; HEIGHT: 35px; PADDING-TOP: 5px"><a>파통 비치 나이트 투어</a></div></div>
<div style="PADDING-BOTTOM: 10px; PADDING-LEFT: 3px; PADDING-RIGHT: 3px; FLOAT: left; PADDING-TOP: 0px" valign="top"><a><img style="BORDER-BOTTOM: #ffffff 1px solid; BORDER-LEFT: #ffffff 1px solid; BORDER-TOP: #ffffff 1px solid; BORDER-RIGHT: #ffffff 1px solid" border="0" src="http://ltassc.lottetour.com/LAMS_CONTENTS/REV/2009/05/21/IMG/PREVIEW/0201200905214724200118713035032.jpg" width="100" height="75"></a><br>
<div style="TEXT-ALIGN: center; WIDTH: 100px; LETTER-SPACING: -1px; HEIGHT: 35px; PADDING-TOP: 5px"><a>싸이먼쇼</a></div></div>
<div style="PADDING-BOTTOM: 10px; PADDING-LEFT: 3px; PADDING-RIGHT: 3px; FLOAT: left; PADDING-TOP: 0px" valign="top"><a><img style="BORDER-BOTTOM: #ffffff 1px solid; BORDER-LEFT: #ffffff 1px solid; BORDER-TOP: #ffffff 1px solid; BORDER-RIGHT: #ffffff 1px solid" border="0" src="http://ltassc.lottetour.com/LAMS_CONTENTS/REV/2008/01/15/IMG/PREVIEW/0201200808310022910071034036377.jpg" width="100" height="75"></a><br>
<div style="TEXT-ALIGN: center; WIDTH: 100px; LETTER-SPACING: -1px; HEIGHT: 35px; PADDING-TOP: 5px"><a>피피섬 스피드보트</a></div></div>
<div style="PADDING-BOTTOM: 10px; PADDING-LEFT: 3px; PADDING-RIGHT: 3px; FLOAT: left; PADDING-TOP: 0px" valign="top"><a><img style="BORDER-BOTTOM: #ffffff 1px solid; BORDER-LEFT: #ffffff 1px solid; BORDER-TOP: #ffffff 1px solid; BORDER-RIGHT: #ffffff 1px solid" border="0" src="http://ltassc.lottetour.com/LAMS_CONTENTS/REV/2012/04/12/IMG/PREVIEW/0201201204128652300066927037298.jpg" width="100" height="75"></a><br>
<div style="TEXT-ALIGN: center; WIDTH: 100px; LETTER-SPACING: -1px; HEIGHT: 35px; PADDING-TOP: 5px"><a>태국 푸켓 아프로디테쇼(Aphrodite Cabaret Show) 
</a></div></div>
<div style="PADDING-BOTTOM: 10px; PADDING-LEFT: 3px; PADDING-RIGHT: 3px; FLOAT: left; PADDING-TOP: 0px" valign="top"><a><img style="BORDER-BOTTOM: #ffffff 1px solid; BORDER-LEFT: #ffffff 1px solid; BORDER-TOP: #ffffff 1px solid; BORDER-RIGHT: #ffffff 1px solid" border="0" src="http://ltassc.lottetour.com/LAMS_CONTENTS/REV/2012/04/12/IMG/PREVIEW/0201201204128650300066907037238.jpg" width="100" height="75"></a><br>
<div style="TEXT-ALIGN: center; WIDTH: 100px; LETTER-SPACING: -1px; HEIGHT: 35px; PADDING-TOP: 5px"><a>꼬까이 아일랜드</a></div></div>
<div style="PADDING-BOTTOM: 10px; PADDING-LEFT: 3px; PADDING-RIGHT: 3px; FLOAT: left; PADDING-TOP: 0px" valign="top"><a><img style="BORDER-BOTTOM: #ffffff 1px solid; BORDER-LEFT: #ffffff 1px solid; BORDER-TOP: #ffffff 1px solid; BORDER-RIGHT: #ffffff 1px solid" border="0" src="http://ltassc.lottetour.com/LAMS_CONTENTS/REV/2010/06/17/IMG/PREVIEW/0201201006173346700013871039984.jpg" width="100" height="75"></a><br>
<div style="TEXT-ALIGN: center; WIDTH: 100px; LETTER-SPACING: -1px; HEIGHT: 35px; PADDING-TOP: 5px"><a>피피섬</a></div></div>
<div></div></td></tr></tbody></table></td></tr></tbody></table></div></td></tr></tbody></table></td></tr>
<tr>
<td style="PADDING-BOTTOM: 4px; PADDING-LEFT: 18px; PADDING-RIGHT: 10px; PADDING-TOP: 12px" class="2gl2 2gr2 1gt2" bgcolor="#f6f6f6">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td style="PADDING-LEFT: 18px" class="cg1 dotum" height="20"><img class="1up" border="0" align="absMiddle" src="http://image.lottetours.com/img04/wimages/b2c/icon/ico_schHotel.gif" width="15" height="13">&nbsp; <a><span class="ctit1"><u>The Naka Island A Luxury Collection (Resort &amp; 
Spa)(나카아일랜드)</u></span>&nbsp;<br></a>본 여행상품의 숙박시설은 상기의 숙박시설 중 이용할 <span style="COLOR: #ff0000">[예정]</span> 입니다. 출발 [7]일전까지 홈페이지 또는 유선을 통해 
알려드리겠습니다.&nbsp;<a></a></td></tr>
<tr>
<td style="PADDING-LEFT: 18px" class="cg1 dotum" height="20"><img class="1up" border="0" align="absMiddle" src="http://image.lottetours.com/img04/wimages/b2c/icon/ico_schFood.gif" width="15" height="13"> 아침 : 리조트식 &nbsp;&nbsp;&nbsp;점심 : 현지식 &nbsp;&nbsp;&nbsp;저녁 : 현지식 
</td></tr></tbody></table></td></tr>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td width="10"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_bottom_01.gif" width="10" height="8"></td>
<td class="2gb2" bgcolor="#f6f6f6" width="100%"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/common/blank.gif" width="1" height="1"></td>
<td width="10"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_bottom_04.gif" width="10" height="8"></td></tr></tbody></table></td></tr></tbody></table></td></tr>
<tr>
<td height="10"></td></tr>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td width="10"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_top_01.gif" width="10" height="8"></td>
<td class="2gt2" bgcolor="#90b2f3" width="100%"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/goods/common/blank.gif" width="1" height="1"></td>
<td width="10"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_top_04.gif" width="10" height="8"></td></tr></tbody></table></td></tr>
<tr>
<td class="2gl2 2gr2" bgcolor="#90b2f3">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td width="134" align="middle"><span class="tahoma cw bold s30 2up"><i>4</i>&nbsp;</span><img border="0" align="absMiddle" src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schDay.gif" width="32" height="20"> </td>
<td class="cw dotum h140" width="520"><br></td>
<td valign="bottom" width="68"></td></tr>
<tr>
<td height="4" colspan="3"></td></tr></tbody></table></td></tr>
<tr>
<td class="2gl2 2gr2">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<colgroup>
<col style="PADDING-BOTTOM: 14px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 14px" valign="top" align="middle" width="134">
<col style="PADDING-BOTTOM: 10px; PADDING-LEFT: 12px; PADDING-RIGHT: 12px; PADDING-TOP: 12px" width="588">
</colgroup><tbody>
<tr>
<td><a class="ctit5 dotum s16 bold">푸켓</a></td>
<td class="h150 cg1 dotum 1gl2"><p>&nbsp;</p><p>조식 후 <span style="FONT-SIZE: 14px"><span style="COLOR: #ff0099"><strong>둘만의 전일&nbsp;자유일정</strong></span></span><br>- 중식 : 리조트식 
제공<br>- 석식 : 100여가지 넘는 메뉴&amp;맛*분위기 TORI 일식 레스토랑에서 즐기는 일식 &amp; 인터내셔널 
뷔페<br><br>숙소 휴식</p><p>&nbsp;</p></td></tr></tbody></table></td></tr>
<tr>
<td style="PADDING-BOTTOM: 4px; PADDING-LEFT: 18px; PADDING-RIGHT: 10px; PADDING-TOP: 12px" class="2gl2 2gr2 1gt2" bgcolor="#f6f6f6">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td style="PADDING-LEFT: 18px" class="cg1 dotum" height="20"><img class="1up" border="0" align="absMiddle" src="http://image.lottetours.com/img04/wimages/b2c/icon/ico_schHotel.gif" width="15" height="13">&nbsp; <a><span class="ctit1"><u>The Naka Island A Luxury Collection (Resort &amp; 
Spa)(나카아일랜드)</u></span>&nbsp;<br></a>본 여행상품의 숙박시설은 상기의 숙박시설 중 이용할 <span style="COLOR: #ff0000">[예정]</span> 입니다. 출발 [7]일전까지 홈페이지 또는 유선을 통해 
알려드리겠습니다.&nbsp;<a></a></td></tr>
<tr>
<td style="PADDING-LEFT: 18px" class="cg1 dotum" height="20"><img class="1up" border="0" align="absMiddle" src="http://image.lottetours.com/img04/wimages/b2c/icon/ico_schFood.gif" width="15" height="13"> 아침 : 리조트식 &nbsp;&nbsp;&nbsp;점심 : 리조트식 &nbsp;&nbsp;&nbsp;저녁 : 일식 
</td></tr></tbody></table></td></tr>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td width="10"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_bottom_01.gif" width="10" height="8"></td>
<td class="2gb2" bgcolor="#f6f6f6" width="100%"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/common/blank.gif" width="1" height="1"></td>
<td width="10"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_bottom_04.gif" width="10" height="8"></td></tr></tbody></table></td></tr></tbody></table></td></tr>
<tr>
<td height="10"></td></tr>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td width="10"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_top_01.gif" width="10" height="8"></td>
<td class="2gt2" bgcolor="#90b2f3" width="100%"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/goods/common/blank.gif" width="1" height="1"></td>
<td width="10"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_top_04.gif" width="10" height="8"></td></tr></tbody></table></td></tr>
<tr>
<td class="2gl2 2gr2" bgcolor="#90b2f3">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td width="134" align="middle"><span class="tahoma cw bold s30 2up"><i>5</i>&nbsp;</span><img border="0" align="absMiddle" src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schDay.gif" width="32" height="20"> </td>
<td class="cw dotum h140" width="520"><br></td>
<td valign="bottom" width="68"></td></tr>
<tr>
<td height="4" colspan="3"></td></tr></tbody></table></td></tr>
<tr>
<td class="2gl2 2gr2">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<colgroup>
<col style="PADDING-BOTTOM: 14px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 14px" valign="top" align="middle" width="134">
<col style="PADDING-BOTTOM: 10px; PADDING-LEFT: 12px; PADDING-RIGHT: 12px; PADDING-TOP: 12px" width="588">
</colgroup><tbody>
<tr>
<td><a class="ctit5 dotum s16 bold">푸켓</a></td>
<td class="h150 cg1 dotum 1gl2">
<p><font size="2" face="돋움"><br></font></p><p><font size="2" face="돋움">조식 후&nbsp;<strong>오전 
자유일정</strong><br><br>체크아웃 (약 10시30분) 후&nbsp;<u>가이드 미팅</u><br>※ 항공 및 현지 사정에 의해 체크아웃 
시간은 변경될 수 있습니다.<br><br>태국 관광의 새로운 패러다임~ 어메이징한 <span style="COLOR: #0000ff">돌핀쇼 
관람</span><br><br>중식 (<span style="COLOR: #0000ff">타이식 or 수끼</span>) 후, 열대과일 시장 
방문 및 시식<br><br><span style="COLOR: #008000">쇼핑센터 방문 </span>[라텍스, 잡화점, 토산품점 3곳 
방문]<br><br><font size="2" face="돋움">석식 (푸켓 최고의 수준을 자랑하는 "마당 레스토랑"에서&nbsp;<span style="COLOR: #0000ff">삼겹살 정식 or 불고기 정식</span>)<br><br><font size="2" face="돋움"><span style="COLOR: #0000ff">힐링 케어 타이 마사지 프로그램</span></font><br>- 
타이엔틱마사지 2시간 OR 발마시지 1시간 OR 헤드&amp;숄더마사지 1시간 중 택1</font><br><br>전용차량으로 공항으로 
이동<br><br><span style="FONT-SIZE: 11px">※ 태국은 공항 안으로 한국인가이드가 들어갈 수 없으므로, 현지인 
가이드가 마지막 샌딩 진행 
도와드립니다.</span></font></p><p><font size="2" face="돋움"><span style="FONT-SIZE: 11px"><br></span></font></p></td></tr>
<tr>
<td class="ctit5 dotum s16 bold">&nbsp;</td>
<td class="h150 cg1 dotum 1gl2">
<div>
<table border="0" cellspacing="0" cellpadding="0" width="100%" bgcolor="#f5f5f5">
<tbody>
<tr>
<td width="90%"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/goods/tit_todaySight.gif" width="102" height="32"></td>
<td></td></tr>
<tr>
<td colspan="2">
<table border="0" cellspacing="0" cellpadding="0">
<tbody>
<tr>
<td style="PADDING-BOTTOM: 0px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px; PADDING-TOP: 0px">
<div style="PADDING-BOTTOM: 10px; PADDING-LEFT: 3px; PADDING-RIGHT: 3px; FLOAT: left; PADDING-TOP: 0px" valign="top"><a><img style="BORDER-BOTTOM: #ffffff 1px solid; BORDER-LEFT: #ffffff 1px solid; BORDER-TOP: #ffffff 1px solid; BORDER-RIGHT: #ffffff 1px solid" border="0" src="http://ltassc.lottetour.com/LAMS_CONTENTS/REV/2010/07/29/IMG/PREVIEW/0201201007294770800028112032447.jpg" width="100" height="75"></a><br>
<div style="TEXT-ALIGN: center; WIDTH: 100px; LETTER-SPACING: -1px; HEIGHT: 35px; PADDING-TOP: 5px"><a>코끼리트랙킹</a></div></div>
<div style="PADDING-BOTTOM: 10px; PADDING-LEFT: 3px; PADDING-RIGHT: 3px; FLOAT: left; PADDING-TOP: 0px" valign="top"><a><img style="BORDER-BOTTOM: #ffffff 1px solid; BORDER-LEFT: #ffffff 1px solid; BORDER-TOP: #ffffff 1px solid; BORDER-RIGHT: #ffffff 1px solid" border="0" src="http://ltassc.lottetour.com/LAMS_CONTENTS/REV/2012/04/10/IMG/PREVIEW/0201201204108532900065733033716.jpg" width="100" height="75"></a><br>
<div style="TEXT-ALIGN: center; WIDTH: 100px; LETTER-SPACING: -1px; HEIGHT: 35px; PADDING-TOP: 5px"><a>수끼</a></div></div>
<div style="PADDING-BOTTOM: 10px; PADDING-LEFT: 3px; PADDING-RIGHT: 3px; FLOAT: left; PADDING-TOP: 0px" valign="top"><a><img style="BORDER-BOTTOM: #ffffff 1px solid; BORDER-LEFT: #ffffff 1px solid; BORDER-TOP: #ffffff 1px solid; BORDER-RIGHT: #ffffff 1px solid" border="0" src="http://ltassc.lottetour.com/LAMS_CONTENTS/REV/2012/04/12/IMG/PREVIEW/0201201204128651900066923037286.jpg" width="100" height="75"></a><br>
<div style="TEXT-ALIGN: center; WIDTH: 100px; LETTER-SPACING: -1px; HEIGHT: 35px; PADDING-TOP: 5px"><a>오리엔탈 스파</a></div></div>
<div style="PADDING-BOTTOM: 10px; PADDING-LEFT: 3px; PADDING-RIGHT: 3px; FLOAT: left; PADDING-TOP: 0px" valign="top"><a><img style="BORDER-BOTTOM: #ffffff 1px solid; BORDER-LEFT: #ffffff 1px solid; BORDER-TOP: #ffffff 1px solid; BORDER-RIGHT: #ffffff 1px solid" border="0" src="http://ltassc.lottetour.com/LAMS_CONTENTS/REV/2012/02/06/IMG/PREVIEW/0201201202067242800052832035009.jpg" width="100" height="75"></a><br>
<div style="TEXT-ALIGN: center; WIDTH: 100px; LETTER-SPACING: -1px; HEIGHT: 35px; PADDING-TOP: 5px"><a>왓찰롱 사원</a></div></div>
<div></div></td></tr></tbody></table></td></tr></tbody></table></div></td></tr></tbody></table></td></tr>
<tr>
<td style="PADDING-BOTTOM: 4px; PADDING-LEFT: 18px; PADDING-RIGHT: 10px; PADDING-TOP: 12px" class="2gl2 2gr2 1gt2" bgcolor="#f6f6f6">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td style="PADDING-LEFT: 18px" class="cg1 dotum" height="20"><img class="1up" border="0" align="absMiddle" src="http://image.lottetours.com/img04/wimages/b2c/icon/ico_schFood.gif" width="15" height="13"> 아침 : 리조트식 &nbsp;&nbsp;&nbsp;점심 : 현지식 &nbsp;&nbsp;&nbsp;저녁 : 한식 
</td></tr></tbody></table></td></tr>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td width="10"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_bottom_01.gif" width="10" height="8"></td>
<td class="2gb2" bgcolor="#f6f6f6" width="100%"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/common/blank.gif" width="1" height="1"></td>
<td width="10"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_bottom_04.gif" width="10" height="8"></td></tr></tbody></table></td></tr></tbody></table></td></tr>
<tr>
<td height="10"></td></tr>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td width="10"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_top_01.gif" width="10" height="8"></td>
<td class="2gt2" bgcolor="#90b2f3" width="100%"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/goods/common/blank.gif" width="1" height="1"></td>
<td width="10"><img border="0" src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_top_04.gif" width="10" height="8"></td></tr></tbody></table></td></tr>
<tr>
<td class="2gl2 2gr2" bgcolor="#90b2f3">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td width="134" align="middle"><span class="tahoma cw bold s30 2up"><i>6</i>&nbsp;</span><img border="0" align="absMiddle" src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schDay.gif" width="32" height="20"> </td>
<td class="cw dotum h140" width="520"><br></td>
<td valign="bottom" width="68"></td></tr>
<tr>
<td height="4" colspan="3"></td></tr></tbody></table></td></tr>
<tr>
<td class="2gl2 2gr2">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<colgroup>
<col style="PADDING-BOTTOM: 14px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 14px" valign="top" align="middle" width="134">
<col style="PADDING-BOTTOM: 10px; PADDING-LEFT: 12px; PADDING-RIGHT: 12px; PADDING-TOP: 12px" width="588">
</colgroup><tbody>
<tr>
<td><a class="ctit5 dotum s16 bold">인천</a></td>
<td class="h150 cg1 dotum 1gl2"><p>&nbsp;</p><p><img id="DAM_0201200811222899800181193" border="0" src="http://ltassc.lottetour.com/LAMS_CONTENTS/REV/2008/11/22/IMG/SRC/0201200811222899800181193012451.GIF" height="25">아시아나항공 : OZ748 HKT(02:00: 푸켓 출발)-ICN(09:45 인천국제공항 도착)<br>◈ 운항소요시간 
◈ 【약 6시간 15여분 소요】<br><br>인천 도착, 감사합니다.</p></td></tr></tbody></table></td></tr></tbody></table></td>

</td>
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
				<td width="235"><a href="countryContent.we?country=fucat">
						<img src="honeyimg/imgfuc/fucat4.jpg" width="235" height="100" />
				</a></td>
				<td width="170">
					<div
						onclick="javascript:location.href='countryContent.we?country=fucat'"
						style="cursor: pointer;">
						<font size="5" color="#F29661">푸켓<br></font> <font size="4">
							지역정보<br> 보러가기
						</font> <em> <img
							src="http://ifamily.co.kr/image/iFamily/product_service/rehoney_detail_arrow02_ico.png" />
						</em>

					</div>
				</td>
				<td width="235"><a href="honeyPackage.we?nation=fucat"> <img
						src="../imgfuc/fucat6.jpg"
						width="235" height="100" />
				</a></td>
				<td width="170">
					<div
						onclick="javascript:location.href='honeyPackage.we?nation=fucat'"
						style="cursor: pointer;">
						<font size="5" color="#F29661">푸켓 <br></font><font size="4">패키지<br>보러가기
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