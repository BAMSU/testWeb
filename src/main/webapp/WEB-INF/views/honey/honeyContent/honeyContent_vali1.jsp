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
	width: 1000px;
	margin: 0px auto;
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
					src="honeyimg/imgvali/발리1.jpg"></th>
			</tr>
			<tr>
				<td colspan="3" align="center"><font
					style="font-size: xx-large;"><strong>☆벨레뷰 풀빌라/ 발리<br>
							4박 5일 by LotteGG ☆
					</strong></font></td>
				<td><img style="width: 100%;"
					src="http://ifamily.co.kr/image/iFamily/product_service/rehoney_detail_btn01.jpg"
					alt="상품상담문의" /></td>
			</tr>
			<tr>
				<th width="172">판매기간</th>
				<td width="230" style="text-align: center;">2017-03-01 ~
					2018-02-28</td>
				<th width="172">상품가격</th>
				<td width="230" style="text-align: center;">1,890,000원 ~
					1,890,000원</td>
			</tr>
			<tr>
				<th>국가</th>
				<td style="text-align: center;">인도네시아</td>
				<th>여행지역</th>
				<td style="text-align: center;">발리</td>
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
				<td><img src="../imgvali/발리2.jpg" style="width: 100%;"
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
										<span class="name">벨레뷰 풀빌라 (Bellevue Heritage Villas)</span> <span
											class="word">☆ 웰컴드링크 제공, 콜드타올 제공,&nbsp;FREE WI-FI<br>☆
											복층구조, 프라이빗 보장,&nbsp;공항에서 20여분, 꾸따시내까지 30분 소요<br>☆&nbsp;홈페이지
											참고 :&nbsp;http//www:thebellevueheritagebali.com/<br></span>

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
							▣ 왕복 항공권<br>▣ 전일정 숙박<br>▣ 전일정 식사 <br>▣ 전용
							가이드/기사/차량비<br>▣ 관광지 입장료<br>▣ 2억원 여행자보험<br>▣ 유류할증료
							및 각종 TAX (전쟁보험료, 인천공항세, 관광진흥개발기금, 현지공항세)<br>
							<br>● <span style="color: rgb(239, 0, 124);">완납 후 제공해
								드리는 롯데관광만의 특별한 사은품</span> ● <br>고급 여행용 가방(기내용슬리퍼+멀티어댑터) or 동화면세점
							10만원 상품권 中 선택 1가지 (커플당 증정) <br>① 여행용가방 선택시 : 택배로만 수령 가능 <br>②
							상품권 선택시 : 롯데관광 본사(광화문) 내방 후 수령 이용</font>

				</td>

				<td
					style="line-height: 24px; padding: 12px 10px 12px 10px; width: 50%;">
					<font face="돋움체"><font color="#0021b0" size="2">▣
							개인경비 및 매너팁<br>▣ <span style="color: rgb(58, 50, 195);">가이드/기사팁경비
								(1인당 US$30~50 권장)</span><br> - 2013년 3월 출발부터 가이드경비 불포함으로 진행됩니다.<br>
							- 발리 가이드 협회의 방침으로 바람직한 경비문화 정착을 위해 진행되는 부분이오니 고객님의 양해 바랍니다.<br>
					</font></font>&nbsp;
				</td>
			</tr>
		</table>
		<br>

		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tbody>
				<tr>
					<td height="27" align="left" bgcolor="#c2d3e1" colspan="2"><td style="PADDING-LEFT: 22px" height="37"><img border="0" align="absMiddle" src="http://image.lottetours.com/img04/wimages/b2c/icon/btn_grade_04.gif"> 
&nbsp;<span class="dotum cg dotum s14 bold 2down">情 ★실속&amp;만족100%★ 발리 벨레뷰 풀빌라 FULL 
4박6일</span>&nbsp; <span class="2down"><!--
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
<div><img alt="" src="http://image.lottetours.com/Img01/prd/1f0195a1-2295-45e3-9d69-cc776cf3e7dd.jpg"><br>&nbsp;</div>
<div><strong>◆&nbsp;<span style="COLOR: #ff0000">NEW</span><span style="COLOR: #ff0000">&nbsp;</span>◆ </strong><strong><u><span style="COLOR: #0000ff">발리&nbsp;벨레뷰 풀빌라 4박</span></u></strong><br><span style="COLOR: #0000ff">☆&nbsp;4일차 
자유일정 시, 벨레뷰&nbsp;셋런치 1회,&nbsp;벨레뷰 로맨틱디너 1회, 벨레뷰 마사지 60분 진행</span><br>&nbsp;-&nbsp;0701-0831 성수기추가요금 
1인 1박당 $15 발생 /&nbsp;1224-0105&nbsp;성수기추가요금 1인 1박당 $25 발생<br>&nbsp;　<br><span style="COLOR: #008000"><strong>[특전1] </strong>타사비교필수~!</span><br>① 두분만을 위한 전문 
가이드와<span style="COLOR: #0000ff"> [1:1 단독행사!]</span><br>② 롯데관광 유일, 동부화재<span style="COLOR: #0000ff"> [여행자보험 2억원 가입]</span><br>&nbsp;<br><span style="COLOR: #008000"><strong>[특전2] </strong>항공TAX 및 유류할증료 
포함!</span><br>&nbsp;<br><span style="COLOR: #008000"><strong>[특전3] </strong>롯데관광에서 
엄밀하게 선정한</span><span style="COLOR: #800000"> <strong>6<strong>大</strong> 특식 
</strong></span><br>① [짐바란 씨푸드or선셋 디너 크루즈]<br>②&nbsp;만족도1위! TEMPO DOELOE(IBC) [현지식 
디너] 또는 KOPI BALI 레스토랑 [이태리식]<br>③&nbsp;<span style="COLOR: #ff0000">[투숙 호텔&nbsp;런치 또는 
외부런치]</span><br>④&nbsp;<span style="COLOR: #ff0000">[<font color="#ff0000">투숙 호텔 디너 또는 
외부디너</font>]</span><br>⑤ 푼디푼디 레스토랑에서의 [스페어폭립] 또는 사누르파라다이스호텔&nbsp;[딤섬]<br>⑥&nbsp;BANJAR 
LOKAL BUFFET DINNER 또는 대장금 레스토랑 [한식]<br>&nbsp;<br><span style="COLOR: #008000"><strong>[특전4] </strong>릴렉스 타임 </span><span style="COLOR: #b22222"><strong>마사지 총4회 제공</strong></span><br>① 초콜릿 스톤 마사지 
2시간<br>②&nbsp;럭셔리 아로마&nbsp;스파 2시간<br>③ <span style="COLOR: #ff0000">[투숙 호텔 스파 또는 외부 스파 
2시간]</span><br>④ 발리 웰빙 전통 지압마사지 2시간<br><br><span style="COLOR: #008000"><strong>[특전5] </strong>발리의 다양한&nbsp;즐길거리를 </span><span style="COLOR: #800000"><strong>내맘대로 Choice~!! (택2)</strong></span><br>- 선택1.&nbsp;리조트 
휴식 및 자유시간 [중식-리조트 현지식]<br>- 선택2.&nbsp;발리의 최남단 절벽에 위치한 울루와뚜 사원 + 빠당빠당 비치 [중식-현지식]<br>- 
선택3.&nbsp;발리 전통문화 체험 - 발리 전통의상 착용, 음식 만들어지는 과정 등 [중식-현지식]<br>- 선택4.&nbsp;POTATO HEAD 비치클럽 
즐기기 [중식-현지식]<br>- 선택5. 발리 임팩트투어 : 꾸따 센트로, 비치워크 등 자유시간 [중식-현지식]<br>- 선택6.&nbsp;바다 위의 
해상사원 " 따나롯 사원 " 투어 및 스미냑 거리 자유시간 [중식-현지식]<br>- 선택7.&nbsp;JENGGALA 도자기 SHOP +&nbsp; 테마파크 
게와까 공원 [중식-현지식 뷔페]<br>- 선택8.&nbsp;NUSADUA PASFIKA MUSEUM + WATER BLOW + GEGER BEACH 
[중식-현지식]<br>- 선택9. 태고적 자연을 느낄수 있는 래프팅 [중식-현지식]<br>- 선택10.&nbsp;씨워킹 [중식-한정식]<br>- 
선택11.&nbsp;데이크루즈 [중식-선상뷔페]<br>- 선택12.&nbsp;워터붐 파크 [중식-현지식]<br>- 선택13.&nbsp;딴중브노아 해양스포츠 3종 즐기기 
[중식-현지식]<br>- 선택14.&nbsp;젊음의 거리 꾸따 비치 서핑 강습 및 체험 [중식-현지식]<br>- 선택15.&nbsp;SNAP 사진 : 기사팁 별도 
쌍당 $30 [중식-현지식]<br __jindo__id="e146432860593913309391"><span style="COLOR: #0000ff">　<br>※ 노쇼핑 진행 시, 1인 $150 추가 됩니다.<br>※ 비허니문의 경우, 1인 $100 
추가 됩니다. (예식 후 일주일 이내 출발만 허니문으로 간주)<br>※ 두분 중 한분이라도 외국국적이신 경우, 1인 100 추가 됩니다. (단, 
한국어 가능시 추가 X)</span></div></td></tr></tbody></table></td></tr></tbody></table><p>&nbsp;</p><p>&nbsp;</p><table border="0" cellspacing="0" cellpadding="0" width="100%"><tbody>
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
<td width="134" align="middle"><span class="tahoma cw bold s30 2up"><i>1</i>&nbsp;</span><img border="0" align="absMiddle" src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schDay.gif" width="32" height="20"></td><td class="cw dotum h140" width="520"><br></td>
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
<td class="h150 cg1 dotum 1gl2 "><font color="blue">[미팅시간] 15:00<br>[미팅장소] 인천국제공항 
3층 출국장 A카운터 창측 롯데관광 만남의 장소 전용 테이블<br>[공항비상연락처] ☎ 010-9492-4542 (공항 관련 문의만 
받습니다.)</font><a><img border="0" vspace="2" align="absMiddle" src="http://image.lottetours.com/img04/wimages/b2c/button/but_vSchMeetMap.gif" width="84" height="17"></a><br><img id="DAM_0201200811222899900181195" border="0" src="http://ltassc.lottetour.com/LAMS_CONTENTS/REV/2008/11/22/IMG/SRC/0201200811222899900181195012457.GIF" height="25">대한항공 : KE629 ICN(18:00 인천국제공항 출발)-DPS(00:10: 덴파사 도착)<br>◆ 비행시간, 약 
7시간 </td></tr>
<tr>
<td><a class="ctit5 dotum s16 bold">발리</a></td>
<td class="h150 cg1 dotum 1gl2 1gt2"><p>발리 덴파사 국제공항 도착<br><br><span style="COLOR: #ff0000"><strong>◆ 단수여권 소지 
인도네시아 입국 불가</strong></span><br><strong>- 복수여권 소지자<br>- 
잔여 유효기간이 6개월 이상 남아있는 여권 (사증 날인 페이지가 부족할 시 입국 불허)</strong><br><br>입국 수속 
후 공항에서 현지인 가이드와 미팅<br><strong>☞ 발리는 한국인 가이드가 안내하는 것이 법적으로 금지되어 있습니다.<br><span style="COLOR: #0000ff"><u>한국어가 가능한 발리 현지인 가이드</u></span>가 고객님을 
안내합니다.</strong><br><br>리조트(풀빌라)&nbsp;체크인 및 휴식</p><p>&nbsp;</p></td></tr></tbody></table></td></tr>
<tr>
<td style="PADDING-BOTTOM: 4px; PADDING-LEFT: 18px; PADDING-RIGHT: 10px; PADDING-TOP: 12px" class="2gl2 2gr2 1gt2" bgcolor="#f6f6f6">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td style="PADDING-LEFT: 18px" class="cg1 dotum" height="20"><img class="1up" border="0" align="absMiddle" src="http://image.lottetours.com/img04/wimages/b2c/icon/ico_schHotel.gif" width="15" height="13">&nbsp; <a><span class="ctit1"><u>Bellevue heritage Villas - Nusa Dua Bali(발리 벨레뷰 헤리티지 
빌라)</u></span>&nbsp;<br></a>본 여행상품의 숙박시설은 상기의 숙박시설 중 이용할 <span style="COLOR: #ff0000">[예정]</span> 입니다. 출발 [0]일전까지 홈페이지 또는 유선을 통해 
알려드리겠습니다.&nbsp;<a></a></td></tr>
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
<td width="134" align="middle"><span class="tahoma cw bold s30 2up"><i>2</i>&nbsp;</span><img border="0" align="absMiddle" src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schDay.gif" width="32" height="20"></td><td class="cw dotum h140" width="520"><br></td>
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
<td><a class="ctit5 dotum s16 bold">발리</a></td>
<td class="h150 cg1 dotum 1gl2 1gt2"><p>&nbsp;</p><p>조식 후 <strong>허니문 선택일정</strong><br><br>
</p><table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-COLLAPSE: collapse; BORDER-TOP: medium none; BORDER-RIGHT: medium none; mso-border-alt: solid black .5pt; mso-border-themecolor: text1; mso-yfti-tbllook: 1184; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt" border="1" cellspacing="0" cellpadding="0" width="500" height="150">
<tbody>
<tr style="HEIGHT: 48.7pt; mso-yfti-irow: 0; mso-yfti-firstrow: yes; mso-yfti-lastrow: yes">
<td style="BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: black 1pt solid; PADDING-BOTTOM: 0cm; PADDING-LEFT: 5.4pt; WIDTH: 461.2pt; PADDING-RIGHT: 5.4pt; BACKGROUND: #ffcccc; HEIGHT: 48.7pt; BORDER-TOP: black 1pt solid; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0cm; mso-border-alt: solid black .5pt; mso-border-themecolor: text1" width="615">
<p style="margin: 0cm 0cm 0pt;" class="MsoNormal" align="left"><br><span style="COLOR: #0000ff"><strong>★ 발리의 다양한&nbsp;즐길거리를 내맘대로 
Choice~!! - 택1 ★</strong></span><br>- 선택1.&nbsp;리조트 휴식 및 자유시간 [중식-리조트 현지식]<br>- 
선택2.&nbsp;발리의 최남단 절벽에 위치한 울루와뚜 사원 + 빠당빠당 비치 [중식-현지식]<br>- 선택3.&nbsp;발리 전통문화 체험 - 발리 전통의상 
착용, 음식 만들어지는 과정 등 [중식-현지식]<br>- 선택4.&nbsp;POTATO HEAD 비치클럽 즐기기 [중식-현지식]<br>- 선택5. 발리 
임팩트투어 : 꾸따 센트로, 비치워크 등 자유시간 [중식-현지식]<br>- 선택6.&nbsp;바다 위의 해상사원 " 따나롯 사원 " 투어 및 스미냑 거리 
자유시간 [중식-현지식]<br>- 선택7.&nbsp;JENGGALA 도자기 SHOP +&nbsp; 테마파크 게와까 공원 [중식-현지식 뷔페]<br>- 
선택8.&nbsp;NUSADUA PASFIKA MUSEUM + WATER BLOW + GEGER BEACH [중식-현지식]<br>- 선택9. 태고적 
자연을 느낄수 있는 래프팅 [중식-현지식]<br>- 선택10.&nbsp;씨워킹 [중식-한정식]<br>- 선택11.&nbsp;데이크루즈 [중식-선상뷔페]<br>- 
선택12.&nbsp;워터붐 파크 [중식-현지식]<br>- 선택13.&nbsp;딴중브노아 해양스포츠 3종 즐기기 [중식-현지식]<br>- 선택14.&nbsp;젊음의 거리 
꾸따 비치 서핑 강습 및 체험 [중식-현지식]<br>- 선택15.&nbsp;SNAP 사진 : 기사팁 별도 쌍당 $30 [중식-현지식]<br __jindo__id="e146432860593913309391">&nbsp;</p></td></tr></tbody></table>
<div style="TEXT-ALIGN: center">&nbsp;</div>
<table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-COLLAPSE: collapse; BORDER-TOP: medium none; BORDER-RIGHT: medium none; mso-border-alt: solid black .5pt; mso-border-themecolor: text1; mso-yfti-tbllook: 1184; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt" border="1" cellspacing="0" cellpadding="0" width="500" height="80">
<tbody>
<tr style="HEIGHT: 48.7pt; mso-yfti-irow: 0; mso-yfti-firstrow: yes; mso-yfti-lastrow: yes">
<td style="BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: black 1pt solid; PADDING-BOTTOM: 0cm; PADDING-LEFT: 5.4pt; WIDTH: 461.2pt; PADDING-RIGHT: 5.4pt; BACKGROUND: #ffffcc; HEIGHT: 48.7pt; BORDER-TOP: black 1pt solid; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0cm; mso-border-alt: solid black .5pt; mso-border-themecolor: text1" width="615">
<p style="MARGIN: 0cm 0cm 0pt" class="MsoNormal"><strong>♥피로를 풀어주는 <span style="COLOR: #ff0000">초콜릿 스톤 
마사지&nbsp;2시간 체험</span>♥</strong></p></td></tr></tbody></table><p><br><span style="COLOR: #008000"><strong>TEMPO DOELOE (IBC) 현지식 디너 또는 KOPI BALI 레스토랑 이태리식 
스파게티 또는 피자</strong></span><br><strong>만족도 1위! 고객님들이 가장 만족하는 
현지식당~!<br><br><strong><span style="COLOR: #0000ff">로맨틱 나이트 투어 
즐기기</span></strong><br>발리의 청담동 스미냑 거리 OR 발리의 명동 쿠타 거리 자유로운 
관광</strong><br><br>리조트(풀빌라)&nbsp;휴식</p><p>&nbsp;</p></td></tr>
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
<div style="PADDING-BOTTOM: 10px; PADDING-LEFT: 3px; PADDING-RIGHT: 3px; FLOAT: left; PADDING-TOP: 0px" valign="top"><a><img style="BORDER-BOTTOM: #ffffff 1px solid; BORDER-LEFT: #ffffff 1px solid; BORDER-TOP: #ffffff 1px solid; BORDER-RIGHT: #ffffff 1px solid" border="0" src="http://ltassc.lottetour.com/LAMS_CONTENTS/REV/2010/08/03/IMG/PREVIEW/0201201008034870800029112035402.jpg" width="100" height="75"></a><br>
<div style="TEXT-ALIGN: center; WIDTH: 100px; LETTER-SPACING: -1px; HEIGHT: 35px; PADDING-TOP: 5px"><a>래프팅 </a></div></div>
<div style="PADDING-BOTTOM: 10px; PADDING-LEFT: 3px; PADDING-RIGHT: 3px; FLOAT: left; PADDING-TOP: 0px" valign="top"><a><img style="BORDER-BOTTOM: #ffffff 1px solid; BORDER-LEFT: #ffffff 1px solid; BORDER-TOP: #ffffff 1px solid; BORDER-RIGHT: #ffffff 1px solid" border="0" src="http://ltassc.lottetour.com/LAMS_CONTENTS/REV/2009/05/25/IMG/PREVIEW/0201200905254919800122820037353.jpg" width="100" height="75"></a><br>
<div style="TEXT-ALIGN: center; WIDTH: 100px; LETTER-SPACING: -1px; HEIGHT: 35px; PADDING-TOP: 5px"><a>워터붐파크</a></div></div>
<div></div></td></tr></tbody></table></td></tr></tbody></table></div></td></tr></tbody></table></td></tr>
<tr>
<td style="PADDING-BOTTOM: 4px; PADDING-LEFT: 18px; PADDING-RIGHT: 10px; PADDING-TOP: 12px" class="2gl2 2gr2 1gt2" bgcolor="#f6f6f6">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td style="PADDING-LEFT: 18px" class="cg1 dotum" height="20"><img class="1up" border="0" align="absMiddle" src="http://image.lottetours.com/img04/wimages/b2c/icon/ico_schHotel.gif" width="15" height="13">&nbsp; <a><span class="ctit1"><u>Bellevue heritage Villas - Nusa Dua Bali(발리 벨레뷰 헤리티지 
빌라)</u></span>&nbsp;<br></a>본 여행상품의 숙박시설은 상기의 숙박시설 중 이용할 <span style="COLOR: #ff0000">[예정]</span> 입니다. 출발 [0]일전까지 홈페이지 또는 유선을 통해 
알려드리겠습니다.&nbsp;<a></a></td></tr>
<tr>
<td style="PADDING-LEFT: 18px" class="cg1 dotum" height="20"><img class="1up" border="0" align="absMiddle" src="http://image.lottetours.com/img04/wimages/b2c/icon/ico_schFood.gif" width="15" height="13"> 아침 : 리조트식 &nbsp;&nbsp;&nbsp;점심 : 현지식 &nbsp;&nbsp;&nbsp;저녁 : 특식 
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
<td width="134" align="middle"><span class="tahoma cw bold s30 2up"><i>3</i>&nbsp;</span><img border="0" align="absMiddle" src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schDay.gif" width="32" height="20"></td><td class="cw dotum h140" width="520"><br></td>
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
<td><a class="ctit5 dotum s16 bold">발리</a></td>
<td class="h150 cg1 dotum 1gl2 1gt2"><p>&nbsp;</p><p>조식 후 <strong>허니문 선택일정</strong><br><br>
</p><table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-COLLAPSE: collapse; BORDER-TOP: medium none; BORDER-RIGHT: medium none; mso-border-alt: solid black .5pt; mso-border-themecolor: text1; mso-yfti-tbllook: 1184; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt" border="1" cellspacing="0" cellpadding="0" width="500" height="150">
<tbody>
<tr style="HEIGHT: 48.7pt; mso-yfti-irow: 0; mso-yfti-firstrow: yes; mso-yfti-lastrow: yes">
<td style="BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: black 1pt solid; PADDING-BOTTOM: 0cm; PADDING-LEFT: 5.4pt; WIDTH: 461.2pt; PADDING-RIGHT: 5.4pt; BACKGROUND: #ffcccc; HEIGHT: 48.7pt; BORDER-TOP: black 1pt solid; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0cm; mso-border-alt: solid black .5pt; mso-border-themecolor: text1" width="615">
<p style="margin: 0cm 0cm 0pt;" class="MsoNormal" align="left"><br><span style="COLOR: #0000ff"><strong>★ 발리의 다양한&nbsp;즐길거리를 내맘대로 
Choice~!! - 택1 ★</strong></span><br>- 선택1.&nbsp;리조트 휴식 및 자유시간 [중식-리조트 현지식]<br>- 
선택2.&nbsp;발리의 최남단 절벽에 위치한 울루와뚜 사원 + 빠당빠당 비치 [중식-현지식]<br>- 선택3.&nbsp;발리 전통문화 체험 - 발리 전통의상 
착용, 음식 만들어지는 과정 등 [중식-현지식]<br>- 선택4.&nbsp;POTATO HEAD 비치클럽 즐기기 [중식-현지식]<br>- 선택5. 발리 
임팩트투어 : 꾸따 센트로, 비치워크 등 자유시간 [중식-현지식]<br>- 선택6.&nbsp;바다 위의 해상사원 " 따나롯 사원 " 투어 및 스미냑 거리 
자유시간 [중식-현지식]<br>- 선택7.&nbsp;JENGGALA 도자기 SHOP +&nbsp; 테마파크 게와까 공원 [중식-현지식 뷔페]<br>- 
선택8.&nbsp;NUSADUA PASFIKA MUSEUM + WATER BLOW + GEGER BEACH [중식-현지식]<br>- 선택9. 태고적 
자연을 느낄수 있는 래프팅 [중식-현지식]<br>- 선택10.&nbsp;씨워킹 [중식-한정식]<br>- 선택11.&nbsp;데이크루즈 [중식-선상뷔페]<br>- 
선택12.&nbsp;워터붐 파크 [중식-현지식]<br>- 선택13.&nbsp;딴중브노아 해양스포츠 3종 즐기기 [중식-현지식]<br>- 선택14.&nbsp;젊음의 거리 
꾸따 비치 서핑 강습 및 체험 [중식-현지식]<br>- 선택15.&nbsp;SNAP 사진 : 기사팁 별도 쌍당 $30 [중식-현지식]<br __jindo__id="e146432860593913309391">&nbsp;</p></td></tr></tbody></table>
<div style="TEXT-ALIGN: center">&nbsp;</div>
<table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-COLLAPSE: collapse; BORDER-TOP: medium none; BORDER-RIGHT: medium none; mso-border-alt: solid black .5pt; mso-border-themecolor: text1; mso-yfti-tbllook: 1184; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt" border="1" cellspacing="0" cellpadding="0" width="500" height="80">
<tbody>
<tr style="HEIGHT: 48.7pt; mso-yfti-irow: 0; mso-yfti-firstrow: yes; mso-yfti-lastrow: yes">
<td style="BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: black 1pt solid; PADDING-BOTTOM: 0cm; PADDING-LEFT: 5.4pt; WIDTH: 461.2pt; PADDING-RIGHT: 5.4pt; BACKGROUND: #ffffcc; HEIGHT: 48.7pt; BORDER-TOP: black 1pt solid; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0cm; mso-border-alt: solid black .5pt; mso-border-themecolor: text1" width="615">
<p style="MARGIN: 0cm 0cm 0pt" class="MsoNormal"><strong>♥ 피로를 풀어주는 <span style="COLOR: #ff0000">럭셔리 아로마 
스파 즐기기&nbsp;2시간 </span>♥</strong><br><br>※ 럭셔리 스파 4시간 선택시 럭셔리 아로마 스파는 
제외됩니다.</p></td></tr></tbody></table><p><br><strong><font color="#008000">석양이 
아름다운 짐바란으로 이동 후 석식<br>[짐바란 씨푸드 OR 디너 크루즈]</font></strong><br><br>리조트 (풀빌라) 
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
<div style="PADDING-BOTTOM: 10px; PADDING-LEFT: 3px; PADDING-RIGHT: 3px; FLOAT: left; PADDING-TOP: 0px" valign="top"><a><img style="BORDER-BOTTOM: #ffffff 1px solid; BORDER-LEFT: #ffffff 1px solid; BORDER-TOP: #ffffff 1px solid; BORDER-RIGHT: #ffffff 1px solid" border="0" src="http://ltassc.lottetour.com/LAMS_CONTENTS/REV/2010/08/03/IMG/PREVIEW/0201201008034870800029112035402.jpg" width="100" height="75"></a><br>
<div style="TEXT-ALIGN: center; WIDTH: 100px; LETTER-SPACING: -1px; HEIGHT: 35px; PADDING-TOP: 5px"><a>래프팅 </a></div></div>
<div style="PADDING-BOTTOM: 10px; PADDING-LEFT: 3px; PADDING-RIGHT: 3px; FLOAT: left; PADDING-TOP: 0px" valign="top"><a><img style="BORDER-BOTTOM: #ffffff 1px solid; BORDER-LEFT: #ffffff 1px solid; BORDER-TOP: #ffffff 1px solid; BORDER-RIGHT: #ffffff 1px solid" border="0" src="http://ltassc.lottetour.com/LAMS_CONTENTS/REV/2009/05/25/IMG/PREVIEW/0201200905254919800122820037353.jpg" width="100" height="75"></a><br>
<div style="TEXT-ALIGN: center; WIDTH: 100px; LETTER-SPACING: -1px; HEIGHT: 35px; PADDING-TOP: 5px"><a>워터붐파크</a></div></div>
<div></div></td></tr></tbody></table></td></tr></tbody></table></div></td></tr></tbody></table></td></tr>
<tr>
<td style="PADDING-BOTTOM: 4px; PADDING-LEFT: 18px; PADDING-RIGHT: 10px; PADDING-TOP: 12px" class="2gl2 2gr2 1gt2" bgcolor="#f6f6f6">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td style="PADDING-LEFT: 18px" class="cg1 dotum" height="20"><img class="1up" border="0" align="absMiddle" src="http://image.lottetours.com/img04/wimages/b2c/icon/ico_schHotel.gif" width="15" height="13">&nbsp; <a><span class="ctit1"><u>Bellevue heritage Villas - Nusa Dua Bali(발리 벨레뷰 헤리티지 
빌라)</u></span>&nbsp;<br></a>본 여행상품의 숙박시설은 상기의 숙박시설 중 이용할 <span style="COLOR: #ff0000">[예정]</span> 입니다. 출발 [0]일전까지 홈페이지 또는 유선을 통해 
알려드리겠습니다.&nbsp;<a></a></td></tr>
<tr>
<td style="PADDING-LEFT: 18px" class="cg1 dotum" height="20"><img class="1up" border="0" align="absMiddle" src="http://image.lottetours.com/img04/wimages/b2c/icon/ico_schFood.gif" width="15" height="13"> 아침 : 리조트식 &nbsp;&nbsp;&nbsp;점심 : 현지식 &nbsp;&nbsp;&nbsp;저녁 : 특식 
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
<td><a class="ctit5 dotum s16 bold">발리</a></td>
<td class="h150 cg1 dotum 1gl2 1gt2"><p>&nbsp;</p><p>조식 후&nbsp;<strong><span style="COLOR: #0000ff">전일 자유일정</span><br><br><font color="#008000">투숙&nbsp;리조트(풀빌라) 런치 
OR 외부 세트런치</font></strong><br><span style="FONT-SIZE: 11px">※ 외부식사 장소 안내 
중식)<br>&nbsp; ① 스미냑 지역 투숙 시 : BIKU 레스토랑 현지식<br>&nbsp; ② 울루와뚜 지역 투숙 시 : PEPENERO 레스토랑<br>&nbsp; 
③ 꾸따 지역:LAVENDER 호텔 현지식<br>&nbsp; ④ 사누르 지역:GAMELAN 레스토랑 현지식 </span><br><br>
</p><table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-COLLAPSE: collapse; BORDER-TOP: medium none; BORDER-RIGHT: medium none; mso-border-alt: solid black .5pt; mso-border-themecolor: text1; mso-yfti-tbllook: 1184; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt" border="1" cellspacing="0" cellpadding="0" width="500" height="80">
<tbody>
<tr style="HEIGHT: 48.7pt; mso-yfti-irow: 0; mso-yfti-firstrow: yes; mso-yfti-lastrow: yes">
<td style="BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: black 1pt solid; PADDING-BOTTOM: 0cm; PADDING-LEFT: 5.4pt; WIDTH: 461.2pt; PADDING-RIGHT: 5.4pt; BACKGROUND: #ffffcc; HEIGHT: 48.7pt; BORDER-TOP: black 1pt solid; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0cm; mso-border-alt: solid black .5pt; mso-border-themecolor: text1" width="615">
<p style="MARGIN: 0cm 0cm 0pt" class="MsoNormal"><strong>♥피로를 풀어주는&nbsp;<span style="COLOR: #ff0000">투숙 
리조트(풀빌라) 스파 OR 외부 스파 2시간 </span><span style="COLOR: #ff0000">체험</span>♥</strong></p></td></tr></tbody></table>
<p><strong><font color="#008000"><strong><font color="#008000">투숙&nbsp;리조트(풀빌라) 
런치<strong><font color="#008000">&nbsp;OR 외부 
세트디너</font></strong></font></strong></font></strong><br><span style="FONT-SIZE: 11px">※ 외부식사 장소 안내 (석식)<br>&nbsp;&nbsp;① 스미냑 지역:JERAMI 호텔 현지식<br>&nbsp; ② 
울루와뚜 지역:ASTON UNGASAN 호텔 셋디너<br>&nbsp; ③ 꾸따 지역:에덴 호텔 현지식<br>&nbsp; ④ 사누르 지역:스위스벨 와뚜 짐바르 
레스토랑 현지식 </span><br><br>리조트(풀빌라) 휴식</p><p>&nbsp;</p></td></tr></tbody></table></td></tr>
<tr>
<td style="PADDING-BOTTOM: 4px; PADDING-LEFT: 18px; PADDING-RIGHT: 10px; PADDING-TOP: 12px" class="2gl2 2gr2 1gt2" bgcolor="#f6f6f6">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td style="PADDING-LEFT: 18px" class="cg1 dotum" height="20"><img class="1up" border="0" align="absMiddle" src="http://image.lottetours.com/img04/wimages/b2c/icon/ico_schHotel.gif" width="15" height="13">&nbsp; <a><span class="ctit1"><u>Bellevue heritage Villas - Nusa Dua Bali(발리 벨레뷰 헤리티지 
빌라)</u></span>&nbsp;<br></a>본 여행상품의 숙박시설은 상기의 숙박시설 중 이용할 <span style="COLOR: #ff0000">[예정]</span> 입니다. 출발 [0]일전까지 홈페이지 또는 유선을 통해 
알려드리겠습니다.&nbsp;<a></a></td></tr>
<tr>
<td style="PADDING-LEFT: 18px" class="cg1 dotum" height="20"><img class="1up" border="0" align="absMiddle" src="http://image.lottetours.com/img04/wimages/b2c/icon/ico_schFood.gif" width="15" height="13"> 아침 : 리조트식 &nbsp;&nbsp;&nbsp;점심 : 리조트식 &nbsp;&nbsp;&nbsp;저녁 : 리조트식 
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
<td><a class="ctit5 dotum s16 bold">발리</a></td>
<td class="h150 cg1 dotum 1gl2 1gt2"><p>&nbsp;</p><p>조식 후&nbsp;<strong>오전 자유일정</strong><br><br><span style="COLOR: #008000"><strong>중식-사누르 파라다이스 호텔의 딤섬런치 또는 '푼디푼디'레스토랑의 
스페어폭립</strong></span>&nbsp;&nbsp;<br><br>
</p><table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-COLLAPSE: collapse; BORDER-TOP: medium none; BORDER-RIGHT: medium none; mso-border-alt: solid black .5pt; mso-border-themecolor: text1; mso-yfti-tbllook: 1184; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt" border="1" cellspacing="0" cellpadding="0" width="500" height="150">
<tbody>
<tr style="HEIGHT: 48.7pt; mso-yfti-irow: 0; mso-yfti-firstrow: yes; mso-yfti-lastrow: yes">
<td style="BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: black 1pt solid; PADDING-BOTTOM: 0cm; PADDING-LEFT: 5.4pt; WIDTH: 461.2pt; PADDING-RIGHT: 5.4pt; BACKGROUND: #ffcccc; HEIGHT: 48.7pt; BORDER-TOP: black 1pt solid; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0cm; mso-border-alt: solid black .5pt; mso-border-themecolor: text1" width="615">
<p style="margin: 0cm 0cm 0pt;" class="MsoNormal" align="left"><br><span style="COLOR: #0000ff"><strong>★즐거운 
발리관광★&nbsp;</strong></span><br><br><strong>&nbsp;</strong><strong>발리 
예술의 중심지인 자바 우붓 관광하기</strong><br><font color="#000000">- 먹고 기도하고 사랑하라의 촬영지인 
우붓 시내관광<br>- 우붓 시장 관광 및 예술품 감상, 왕궁 등</font><br><br><strong>면세점 및 간단한 쇼핑 센터 방문 (폴로샵, 라텍스, 
잡화점)</strong><br>&nbsp;</p></td></tr></tbody></table>
<div style="TEXT-ALIGN: center">&nbsp;</div>
<div><span style="COLOR: #008000"><strong>석식-BANJAR LOKAL BUFFET DINNER 또는 고향의 맛 
대장금 레스토랑 한식</strong></span><br>&nbsp;</div>
<table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-COLLAPSE: collapse; BORDER-TOP: medium none; BORDER-RIGHT: medium none; mso-border-alt: solid black .5pt; mso-border-themecolor: text1; mso-yfti-tbllook: 1184; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt" border="1" cellspacing="0" cellpadding="0" width="500" height="80">
<tbody>
<tr style="HEIGHT: 48.7pt; mso-yfti-irow: 0; mso-yfti-firstrow: yes; mso-yfti-lastrow: yes">
<td style="BORDER-BOTTOM: black 1pt solid; BORDER-LEFT: black 1pt solid; PADDING-BOTTOM: 0cm; PADDING-LEFT: 5.4pt; WIDTH: 461.2pt; PADDING-RIGHT: 5.4pt; BACKGROUND: #ffffcc; HEIGHT: 48.7pt; BORDER-TOP: black 1pt solid; BORDER-RIGHT: black 1pt solid; PADDING-TOP: 0cm; mso-border-alt: solid black .5pt; mso-border-themecolor: text1" width="615">
<p style="MARGIN: 0cm 0cm 0pt" class="MsoNormal"><strong>♥여행의 피로를 풀어주는 <span style="COLOR: #ff0000">웰빙 전통 
마사지 2시간</span><span style="COLOR: #ff0000"> 
체험</span>♥</strong></p></td></tr></tbody></table><p><br>공항으로 
이동</p><p>&nbsp;</p></td></tr></tbody></table></td></tr>
<tr>
<td style="PADDING-BOTTOM: 4px; PADDING-LEFT: 18px; PADDING-RIGHT: 10px; PADDING-TOP: 12px" class="2gl2 2gr2 1gt2" bgcolor="#f6f6f6">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td style="PADDING-LEFT: 18px" class="cg1 dotum" height="20"><img class="1up" border="0" align="absMiddle" src="http://image.lottetours.com/img04/wimages/b2c/icon/ico_schFood.gif" width="15" height="13"> 아침 : 리조트식 &nbsp;&nbsp;&nbsp;점심 : 특식 &nbsp;&nbsp;&nbsp;저녁 : 특식 
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
<td><a class="ctit5 dotum s16 bold">발리</a></td>
<td class="h150 cg1 dotum 1gl2"><p>&nbsp;</p><p><img id="DAM_0201200811222899900181195" border="0" src="http://ltassc.lottetour.com/LAMS_CONTENTS/REV/2008/11/22/IMG/SRC/0201200811222899900181195012457.GIF" height="25">대한항공 : KE630 DPS(01:25: 덴파사 출발)-ICN(09:20 인천국제공항 도착)<br>◆ 비행시간, 약 
7시간 </p></td></tr>
<tr>
<td><a class="ctit5 dotum s16 bold">인천</a></td>
<td class="h150 cg1 dotum 1gl2 1gt2">
<p>인천 국제공항 도착<br>　<br>※ 롯데관광을 이용하여 주셔서 감사합니다^^<br>※ 상기 일정은 현지 사정에 의해 변동될 수 
있습니다.</p></td></tr></tbody></table></td></tr></tbody></table></td>
				</tr>
			</tbody>
		</table>
		<table border="1">
			<tr>
				<td colspan="2" align="left"
					style="line-height: 24px; padding: 12px 10px 12px 10px;"><font
					style="font-size: small;"><div>▣ 몰디브 공항부터 리조트까지 ▣</div>
						<div>
							<br>
						</div>
						<div>1.공항에 도착 후 준비해야 할 서류 (비행기에서 작성한 입국카드, 리조트 바우처, 여권) 지참 후
							입국 심사대 통과 밖으로 나오신 후,&nbsp;</div>
						<div>&nbsp; 리조트 피켓을 든 현지 직원의 안내를 받으시기 바랍니다.&nbsp;</div>
						<div>2. 예약되신 무푸시 리조트 부스로 이동하신 후 소지하신 여권 또는 Voucher를 이용하여
							네임체크를 하시기 바랍니다. (잠시 다른 팀들을 기다리신 후 이동하시게 됩니다.)</div>
						<div>3. 차량을 이용하여 수상비행기 선착장으로 이동하신 후 수상비행기를 이용하여 리조트로 이동하십니다.</div>
						<div>4. 수상비행기 전용 라운지를 이용하실 수 있습니다. (음료 및 다과 무료 제공)</div>
						<div>- 이동시간 : 약 30분</div></td>
			</tr>
		</table>
		<table border="1">
			<tr>
				<td width="235"><a href="countryContent.we?country=vali">
						<img src="honeyimg/imgvali/발리3.jpg" width="235" height="100" />
				</a></td>
				<td width="170">
					<div
						onclick="javascript:location.href='countryContent.we?country=vali'"
						style="cursor: pointer;">
						<font size="5" color="#F29661">발리<br></font> <font size="4">
							지역정보<br> 보러가기
						</font> <em> <img
							src="http://ifamily.co.kr/image/iFamily/product_service/rehoney_detail_arrow02_ico.png" />
						</em>

					</div>
				</td>
				<td width="235"><a href="honeyPackage.we?nation=vali">
						<img src="honeyimg/imgvali/발리4.jpg" width="235" height="100" />
				</a></td>
				<td width="170">
					<div
						onclick="javascript:location.href='honeyPackage.we?nation=vali'"
						style="cursor: pointer;">
						<font size="5" color="#F29661">발리 <br></font><font size="4">패키지<br>보러가기
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