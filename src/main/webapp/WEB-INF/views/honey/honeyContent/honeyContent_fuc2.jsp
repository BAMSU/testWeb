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
					src="honeyimg/imgfuc/fucat2.jpg"></th>
			</tr>
			<tr>
				<td colspan="3" align="center"><font
					style="font-size: xx-large;"><strong>☆열대 삼림 속 궁전 /
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
				<td width="230" style="text-align: center;">1,590,000원 ~
					1,790,000원</td>
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
				<td><img src="../imgfuc/fucat3.jpg" style="width: 100%;"
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
											style="COLOR: #008000"><STRONG>◆반얀트리 푸켓
													(Banyan Tree Phuket) ◆</STRONG></SPAN><BR> <SPAN
											style="COLOR: #000000">Banyan Tree Phuket <BR>
										</SPAN> <BR> <BR>푸켓섬의 북쪽 해변 방타오 만에 위치한 반얀트리푸켓은 열대 산림에 둘러싸인
											조용한 리조트로, 푸켓 국제공항에서 자동차로 20분 거리에 있어 공항과의 접근성도 뛰어나다. 반얀트리푸켓은
											최근 리노베이션을 마치고 모든 객실이 프라이빗 풀을 갖춘 올 풀빌라리조트로 거듭났다. 반얀트리푸켓 안의 모든
											빌라는 높은 담장에 개인 수영장을 갖춰 외부의 시선으로부터 차단돼 완벽하고 달콤한 신혼여행을 가능하게 한다.
										</span>
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
				<td style="PADDING-LEFT: 22px" height="37"><img border="0" align="absMiddle" src="http://image.lottetours.com/img04/wimages/b2c/icon/btn_grade_01.gif"> 
&nbsp;<span class="dotum cg dotum s14 bold 2down">情 ★럭셔리★ 푸켓 리조트 2박 + 반얀트리 풀빌라 2박 
(6일)</span>&nbsp; <span class="2down"><!--
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
<td style="PADDING-BOTTOM: 33px; PADDING-LEFT: 22px; PADDING-RIGHT: 22px; PADDING-TOP: 14px" class="cg1 dotum h140"><font color="#656565" face="돋움"><font color="#444444"><strong>[이용호텔]</strong><br>- 
</font></font><span style="COLOR: #0000ff"><font face="돋움">안다만 엠브레이스 (디럭스룸) 2박 +&nbsp;반얀트리&nbsp;[반얀 
풀빌라]</font></span><font color="#656565" face="돋움"><font color="#444444">&nbsp;2박 &lt;상기 
요금&gt;<br><font color="#444444" face="돋움">-&nbsp;안다만 엠브레이스 2박 +&nbsp;</font>반얀트리&nbsp;[시그니쳐 풀빌라] 2박 
&lt;+10 만원 추가&gt;<br><font color="#444444" face="돋움"><font color="#656565" face="돋움"><font color="#444444"><font color="#444444" face="돋움"><font color="#444444" face="돋움"><font face="돋움"><font color="#444444"><font color="#444444" face="돋움"><span style="COLOR: #000000"><font face="돋움">◆ 반얀트리 룸타입 보기 : <a href="http://www.banyantree.com/en/ap-thailand-phuket-resort/banyan-pool-villa">http://www.banyantree.com/en/ap-thailand-phuket-resort/banyan-pool-villa</a></font></span></font></font></font></font></font></font></font></font></font></font><br>　　　<br><font color="#656565" face="돋움"><font color="#444444"><span style="COLOR: #008000"><font face="돋움"><strong>[특전 1]</strong></font></span><font color="#444444" face="돋움"> 
</font><span style="COLOR: #008000"><font face="돋움">타사비교필수 </font></span><font color="#444444" face="돋움">- 동부화재 여행자보험 2억원 가입<br>&nbsp;</font><br><span style="COLOR: #008000"><font face="돋움"><strong>[특전 2]</strong></font></span><font color="#444444" face="돋움"> </font><span style="COLOR: #008000"><font face="돋움">가이드/기사&nbsp;경비 포함 +&nbsp;<strong>현지 제철 과일바구니&nbsp;제공</strong></font></span><br><font color="#444444" face="돋움">&nbsp;</font><br><span style="COLOR: #008000"><font face="돋움"><strong>[특전 3]</strong></font></span><font color="#444444" face="돋움"> 
<strong><font color="#ff0000" face="돋움">情 프로그램만의 특전</font></strong></font><br><font color="#444444" face="돋움"><font face="돋움"><font color="#444444">① ★ 전 일정 여유 있는 휴양 보장 ★ 
자유로운 선택형 투어<br>&nbsp;-&nbsp;팡아만 럭셔리 크루즈 투어 vs 리조트&nbsp;자유시간<br>&nbsp;-&nbsp;</font><span style="COLOR: #ff0000">럭셔리 요트크루즈 + 허니문 스냅 촬영<font color="#444444" face="돋움">&nbsp;vs 
피피+코까이섬&nbsp;호핑 투어</font></span></font><br>② 로맨틱 씨푸드BBQ, 무제한 삼겹살, 리조트식,&nbsp;태국식샤브샤브 '수끼', 
이태리식<br>③ 푸켓 뷰포인트 및 사원 관광<br>④ 타이 오리엔탈 마사지+헤드&amp;숄더케어&nbsp;1</font><font color="#444444" face="돋움">시간&nbsp;체험<br>⑤ 천연 아로마&nbsp;스파 2시간30분<br>⑥ 릴렉싱 발 마사지 1시간 
(선택시)<br>　　<br>&nbsp;　　<br><span style="COLOR: #0000ff"><font size="2" face="돋움"><font size="2" face="돋움">※&nbsp;단독투어 요청 시, 1인 $150 추가 됩니다.<br>&nbsp;- 
비허니문의 경우, 단독투어로 진행되며 1인 $350 추가 됩니다. (태국가이드)</font><br>※ 푸켓 IN, OUT 시 타국가 
1박 이상 체류 시 1인 $150 추가 됩니다.</font><br><font size="2" face="돋움">※ 외국인의 경우, 1인 $150 추가 
됩니다. (단, 한국어 가능 시 추가요금 없음)<br>&nbsp;- 중국국적자의 경우, 태국 입국 시 도착비자 발급 필수 입니다. (1인 2,000바트 
+ 여권용사진 지참 必)</font></span></font></font></font></td></tr></tbody></table></td></tr></tbody></table><p>&nbsp;</p><p>&nbsp;</p><table border="0" cellspacing="0" cellpadding="0" width="100%"><tbody>
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
받습니다.)</font><a><img border="0" vspace="2" align="absMiddle" src="http://image.lottetours.com/img04/wimages/b2c/button/but_vSchMeetMap.gif" width="84" height="17"></a><br><img id="DAM_0201200811222899800181193" border="0" src="http://ltassc.lottetour.com/LAMS_CONTENTS/REV/2008/11/22/IMG/SRC/0201200811222899800181193012451.GIF" height="25">아시아나항공 : KE637 ICN(18:40 인천국제공항 출발)-HKT(23:15: 푸켓 도착)<br>◈ 운항소요시간 
◈ 【 약 6시간 40분 소요 】<br>◈ 시차정보 ◈ 【 한국보다 2시간 느립니다. 】 </p></td></tr>
<tr>
<td><a class="ctit5 dotum s16 bold">푸켓</a></td>
<td class="h150 cg1 dotum 1gl2 1gt2"><p>푸켓 국제공항 도착 후 <u>가이드 미팅</u><br><span style="COLOR: #800080"><span style="FONT-SIZE: 10px">※&nbsp;태국 관련 법상 한국가이드는 공항 출입이 불가하여 이동중 또는 호텔에서 
미팅 진행합니다.</span></span><br><br>숙소 이동하여 체크인 및 
휴식</p><p>&nbsp;</p></td></tr></tbody></table></td></tr>
<tr>
<td style="PADDING-BOTTOM: 4px; PADDING-LEFT: 18px; PADDING-RIGHT: 10px; PADDING-TOP: 12px" class="2gl2 2gr2 1gt2" bgcolor="#f6f6f6">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td style="PADDING-LEFT: 18px" class="cg1 dotum" height="20"><p><img class="1up" border="0" align="absMiddle" src="http://image.lottetours.com/img04/wimages/b2c/icon/ico_schHotel.gif" width="15" height="13">&nbsp; <a><span class="ctit1"><u>ANDAMANEMBRACE RESORT(안다만 엠블레스 리조트)</u></span>&nbsp;<br></a>본 여행상품의 
숙박시설은 상기의 숙박시설 중 이용할 <span style="COLOR: #ff0000">[예정]</span> 입니다. </p><p>출발 [7]일전까지 
홈페이지 또는 유선을 통해 알려드리겠습니다.&nbsp;<a></a></p></td></tr>
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
<td class="h150 cg1 dotum 1gl2 1gt2">
<p><font size="2" face="돋움"><br></font></p><p><font size="2" face="돋움">기상 및 
조식</font></p><p><font size="2" face="돋움"><br></font></p>
<table style="WIDTH: 500px; HEIGHT: 86px" border="1" cellspacing="1" cellpadding="1">
<tbody>
<tr>
<td>
<p><br><font size="2" face="돋움"><strong>내 
맘대로 선택 일정 (택1)</strong><br><br>● 선택1.&nbsp;<span style="COLOR: #008000">팡아만 해상국립공원 
럭셔리 크루즈 투어</span><br>　- 중국의 계림, 베트남의 하롱베이 같은 비경 감상<br>　- 홍섬투어 및 씨카누 체험<br>　- 영화 
007 시리즈 촬영 배경지 제임스 본드섬 관광<br>　-&nbsp;중식 (<span style="COLOR: #0000ff">크루즈 선상 
뷔페식사</span>)</font><br><br><font size="2" face="돋움">● 선택2. <span style="COLOR: #008000">오전 리조트 자유일정 + 공통 저녁 일정 [</span><span style="COLOR: #ff0000">중식불포함</span><span style="COLOR: #008000">]</span><br>　- 
모닝콜 없는 여유로움을 즐기세요!<br>　- 리조트 내 수영장 및 부대시설 이용 
가능</font><br>&nbsp;</p></td></tr></tbody></table>
<p><font size="2" face="돋움"><br></font></p><p><font size="2" face="돋움">선택 일정 후, 아래 
공통일정 진행<br><br><span style="COLOR: #008000">타이 오리엔탈 마사지 + 헤드&amp;숄더케어 1시간 
</span>체험<br><br>5성급 리조트 레스토랑에서 즐기는 <span style="COLOR: #0000ff">로맨틱 씨푸드 BBQ 
디너</span><br><br>세계 3대쇼인 푸켓 최고의 카바레쇼의 <span style="COLOR: #008000">아프로디테쇼 
관람</span><br><br><span style="COLOR: #008000">파통 비치 야간 디스커버리 투어</span> (푸켓의 이국적인 
파통거리 관광 / 노천바, 게이바 등)<br><br>리조트 
휴식</font></p><p><font size="2" face="돋움"><br></font></p></td></tr></tbody></table></td></tr>
<tr>
<td style="PADDING-BOTTOM: 4px; PADDING-LEFT: 18px; PADDING-RIGHT: 10px; PADDING-TOP: 12px" class="2gl2 2gr2 1gt2" bgcolor="#f6f6f6">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td style="PADDING-LEFT: 18px" class="cg1 dotum" height="20"><p><img class="1up" border="0" align="absMiddle" src="http://image.lottetours.com/img04/wimages/b2c/icon/ico_schHotel.gif" width="15" height="13">&nbsp; <a><span class="ctit1"><u>ANDAMANEMBRACE RESORT(안다만 엠블레스 리조트)</u></span>&nbsp;<br></a>본 여행상품의 
숙박시설은 상기의 숙박시설 중 이용할 <span style="COLOR: #ff0000">[예정]</span> 입니다. </p><p>출발 [7]일전까지 
홈페이지 또는 유선을 통해 알려드리겠습니다.&nbsp;<a></a></p></td></tr>
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
<td class="h150 cg1 dotum 1gl2 1gt2">
<p><font size="2" face="돋움"><br></font></p><p><font size="2" face="돋움">기상 및 
조식</font></p><p><font size="2" face="돋움"><br></font></p>
<table style="WIDTH: 597px; HEIGHT: 170px" border="1" cellspacing="1" cellpadding="1">
<tbody>
<tr>
<td>
<p><font size="2" face="돋움"><strong>내 맘대로 선택 일정 
(택1)</strong><br><span style="COLOR: #ff0000"><font size="2" face="돋움">※ 선택1,2로 그룹이 
나뉠 경우, 행사진행 인원이 많은 팀으로 한국가이드가 동행 합니다.</font></span><br><br>● 선택1. 해양스포츠의 
천국&nbsp;<span style="COLOR: #008000">'코랄 아일랜드 투어' </span><span style="COLOR: #008000">럭셔리요트+스노클링+선상낚시</span><br>　- 럭셔리 요트를 타고 에메랄드 바다를 가로지르는 
로맨틱 투어<br>　- 하얀 요트 위에서 파란 바다를 배경으로 한 화보촬영 포함&nbsp;<span style="COLOR: #ff0099">★허니문 
스냅 촬영 (</span><span style="COLOR: #0000ff">팁 $10 불포함</span><span style="COLOR: #ff0099">)★</span><br><br>● 선택2.&nbsp;<span style="COLOR: #008000">피피+코까이섬 투어 &amp; 스노클링&nbsp;[스피드보트 이동]</span><br>　-&nbsp;영화 '더 비치' 
촬영지인 피피섬 일주 + 스노클링 체험<br>　- 마야베이 + 롯사마베이 + 피레베이 + 바이킹동굴 등 열대어들과의 스노클링<br>　- 드라마 
'풀하우스' 촬영지인 코까이 해변 휴식 및 스노클링<br><font size="2" face="돋움">※ 기상 악화 시, 유람선 또는 다른 섬 
으로&nbsp;대체 
됩니다.</font></font></p></td></tr></tbody></table>
<p><font size="2" face="돋움"><br></font></p><p><font size="2" face="돋움">푸켓 귀환 후, <span style="COLOR: #008000">천연 아로마 스파 체험&nbsp;2시간 30분</span><br>&nbsp;- 타이 엔틱 마사지 1시간 + 천연 아로마 
오일 마사지 1시간 + 허브사우나 30분<br>　<br>석식 (<span style="COLOR: #0000ff">무제한 삼겹살</span>) 
후&nbsp;숙소 
휴식</font></p><p><font size="2" face="돋움"><br></font></p></td></tr></tbody></table></td></tr>
<tr>
<td style="PADDING-BOTTOM: 4px; PADDING-LEFT: 18px; PADDING-RIGHT: 10px; PADDING-TOP: 12px" class="2gl2 2gr2 1gt2" bgcolor="#f6f6f6">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td style="PADDING-LEFT: 18px" class="cg1 dotum" height="20"><p><img class="1up" border="0" align="absMiddle" src="http://image.lottetours.com/img04/wimages/b2c/icon/ico_schHotel.gif" width="15" height="13">&nbsp; <a><span class="ctit1"><u>Banyan Tree Resort(반얀트리 풀빌라)</u></span>&nbsp;<br></a>본 여행상품의 숙박시설은 상기의 
숙박시설 중 이용할 <span style="COLOR: #ff0000">[예정]</span> 입니다. </p><p>출발 [7]일전까지 홈페이지 또는 유선을 
통해 알려드리겠습니다.&nbsp;<a></a></p></td></tr>
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
<td><a class="ctit5 dotum s16 bold">푸켓</a></td>
<td class="h150 cg1 dotum 1gl2 1gt2">
<p><font color="#656565" size="2" face="돋움"><br></font></p><p><font color="#656565" size="2" face="돋움">기상 및 
조식</font></p>
<table style="WIDTH: 248px; HEIGHT: 61px" border="1" cellspacing="1" cellpadding="1">
<tbody>
<tr>
<td>
<p><font color="#656565" size="2" face="돋움">&nbsp;<strong><span style="COLOR: #008000">전일&nbsp;풀빌라 자유시간 
즐기기</span></strong><br>　- 중/석식 포함 (<span style="COLOR: #0000ff">리조트식 또는 
도시락</span>)</font></p></td></tr></tbody></table>
<p><font color="#656565" size="2" face="돋움"><br></font></p><p><font color="#656565" size="2" face="돋움">숙</font><span style="color: rgb(101, 101, 101); font-family: 돋움; font-size: small;">소 
휴식</span></p><p><font color="#656565" size="2" face="돋움"><br></font></p></td></tr></tbody></table></td></tr>
<tr>
<td style="PADDING-BOTTOM: 4px; PADDING-LEFT: 18px; PADDING-RIGHT: 10px; PADDING-TOP: 12px" class="2gl2 2gr2 1gt2" bgcolor="#f6f6f6">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
<tr>
<td style="PADDING-LEFT: 18px" class="cg1 dotum" height="20"><p><img class="1up" border="0" align="absMiddle" src="http://image.lottetours.com/img04/wimages/b2c/icon/ico_schHotel.gif" width="15" height="13">&nbsp; <a><span class="ctit1"><u>Banyan Tree Resort(반얀트리 풀빌라)</u></span>&nbsp;<br></a>본 여행상품의 숙박시설은 상기의 
숙박시설 중 이용할 <span style="COLOR: #ff0000">[예정]</span> 입니다. </p><p>출발 [7]일전까지 홈페이지 또는 유선을 
통해 알려드리겠습니다.&nbsp;<a></a></p></td></tr>
<tr>
<td style="PADDING-LEFT: 18px" class="cg1 dotum" height="20"><img class="1up" border="0" align="absMiddle" src="http://image.lottetours.com/img04/wimages/b2c/icon/ico_schFood.gif" width="15" height="13"> 아침 : 리조트식 &nbsp;&nbsp;&nbsp;점심 : 리조트식 &nbsp;&nbsp;&nbsp;저녁 : Meal Box(호텔식) 
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
<td class="h150 cg1 dotum 1gl2 1gt2">
<p><font size="2" face="돋움"><br></font></p><p><font size="2" face="돋움">기상 및 조식<br><br>체크아웃 후 가이드 미팅<br><br><font size="2"><font face="돋움">중식(<span style="COLOR: #0000ff">태국식 샤브샤브 '수끼'</span>) 후 
<u>쇼핑센터 
방문</u></font></font></font><br><br><span style="COLOR: #008000">푸켓 뷰포인트 및 사원 관광</span><br><br><font size="2" face="돋움">여행의 피로를 풀어줄 <span style="COLOR: #008000">타이 릴렉싱 발마사지 
1시간</span><br><br><font size="2" face="돋움">석식 (<span style="COLOR: #0000ff">이탈리안식 - 
스테이크, 파스타, 샐러드, 하우스와인 1잔</span>) 후&nbsp;</font>공항으로 이동<br><span style="COLOR: #800080">※ 태국 관련 법상 한국가이드는 공항 출입이 불가하여 현지 가이드가 
동행합니다.</span></font></p><p><font color="#800080" face="돋움" size="2"><br></font><span style="COLOR: #800080">&nbsp;</span></p></td></tr>
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
<td colspan="2"><br></td></tr></tbody></table></div></td></tr></tbody></table></td></tr>
<tr>
<td style="PADDING-BOTTOM: 4px; PADDING-LEFT: 18px; PADDING-RIGHT: 10px; PADDING-TOP: 12px" class="2gl2 2gr2 1gt2" bgcolor="#f6f6f6">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tbody>
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
<td class="h150 cg1 dotum 1gl2"><p>&nbsp;</p><p><img id="DAM_0201200811222899800181193" border="0" src="http://ltassc.lottetour.com/LAMS_CONTENTS/REV/2008/11/22/IMG/SRC/0201200811222899800181193012451.GIF" height="25">아시아나항공 : KE638 HKT(01:00: 푸켓 출발)-ICN(08:45 인천국제공항 도착)<br>◈ 운항소요시간 
◈ 【 약 5시간 45분 소요 】<br><br>인천 국제공항 도착</p></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table>

				
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
						src="../imgfuc/fucat6.jpg" width="235" height="100" />
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