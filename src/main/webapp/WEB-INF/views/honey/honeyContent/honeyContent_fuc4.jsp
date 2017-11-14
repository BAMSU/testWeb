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
					src="honeyimg/imgfuc/fucat3.jpg"></th>
			</tr>
			<tr>
				<td colspan="3" align="center"><font
					style="font-size: xx-large;"><strong>☆웨스턴 시레이베이 /
							푸켓 <br> 4박 6일 by 푸켓愛 ☆
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
				<td width="230" style="text-align: center;">1,640,000원 ~
					1,840,000원</td>
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
											style="COLOR: #008000"><STRONG>◆ 웨스틴 ◆</STRONG></SPAN><BR>
											<SPAN style="COLOR: #000000">The Westin Siray Bay
												Resort & Spa, Phuket <BR>
										</SPAN> <BR> <BR>푸켓 럭셔리 풀빌라의 대표로 손꼽히는 웨스틴은 푸켓 국제공항에서 차로
											50분가량 소요되는 거리에 있다. 파통시내는 45분, 푸켓 타운까지는 약 15분 정도 걸린다. 웨스틴 리조트
											인근에는 다양한 레스토랑과 쇼핑센터 등이 자리해 있어 흥겨운 여흥과 함께 각국 여행객들이 만들어내는 독특한
											분위기가 풍긴다. 힐탑 형태로 지어져 모든 객실에서 바다를 전망할 수 있다. 하지만 모두 똑같은 것은 아니다.
											위쪽으로는 일반 리조트 형태로, 아래쪽은 풀빌라로 나뉜다. 바로 앞에 위치한 해변으로는 언제든 달려갈 수
											있다. 롯데관광의 고객들은 사라 풀빌라나 원베드 사라 풀빌라를 이용하게 된다. 객실에는 초고속 인터넷은 물론
											원스탑 익스프레스 서비스, 위성TV, 객실 내 보안장치, 헤어드라이어, 메이크업/쉐이빙 거울, 스피커 기능이
											있는 전화기, 책상, 풀 서비스 세탁, 면도 도구, 실내 온도 조절장치 등의 최첨단 시설이 모두 구비되어
											있다. 리조트 내에만 6개의 레스토랑과 바가 있어 에너지를 충전할 수 있으며, 헤븐리 스파 바이 웨스턴에서
											원기를 회복할 수 있다. </span>
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

		<table border="0" cellspacing="0" cellpadding="0" width="733"
			style="color: rgb(59, 59, 59); font-family: dotum;">
			<tbody>
				<tr>
					<td height="37" style="padding-left: 22px;"><img border="0"
						align="absMiddle"
						src="http://image.lottetours.com/img04/wimages/b2c/icon/btn_grade_02.gif">
						&nbsp;<span class="dotum cg dotum s14 bold 2down">愛 ★5성급★
							푸켓 웨스틴 시레이베이 (사라) 풀빌라 FULL 4박 6일</span><span class="2down"></span></td>
				</tr>
				<tr>
					<td bgcolor="#bebebe" height="1" colspan="2"></td>
				</tr>
				<tr>
					<td height="10" colspan="2"></td>
				</tr>
			</tbody>
		</table>
		<p
			style="word-break: break-all; color: rgb(59, 59, 59); font-family: dotum;">&nbsp;</p>
		<table border="0" cellspacing="0" cellpadding="0" width="733"
			style="color: rgb(59, 59, 59); font-family: dotum;">
			<tbody>
				<tr>
					<td valign="top" width="733" align="middle"><table border="0"
							cellspacing="0" cellpadding="0" width="100%">
							<tbody>
								<tr>
									<td><table border="0" cellspacing="0" cellpadding="0"
											width="100%" bgcolor="#def1f9">
											<tbody>
												<tr>
													<td><img border="0"
														src="http://image.lottetours.com/img04/wimages/b2c/goods/view_bar1.gif"
														width="1" height="32"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
													<td width="100%" style="padding-left: 19px;"><img
														border="0"
														src="http://image.lottetours.com/img04/wimages/b2c/goods/tit_vGdsSpecial.gif"
														width="277" height="21"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
													<td><img border="0"
														src="http://image.lottetours.com/img04/wimages/b2c/goods/view_bar1.gif"
														width="1" height="32"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
												</tr>
											</tbody>
										</table></td>
								</tr>
								<tr>
									<td class="cg1 dotum h140" style="padding: 14px 22px 33px;"><p>
											<font color="#656565" face="돋움"><font color="#444444"><br></font></font>
										</p>
										<p>
											<font color="#656565" face="돋움"><font color="#444444"><font
													color="#656565"><font color="#444444"><strong><span
																style="COLOR: #000000"><img
																	style="WIDTH: 701px; HEIGHT: 422px" alt=""
																	src="http://image.lottetours.com/Img01/prd/dd25b9c3-5e32-4316-9347-61591d6ac2db.jpg"></span></strong></font></font></font></font>
										</p>
										<p>
											<font color="#656565" face="돋움"><font color="#444444">&nbsp;&nbsp;<br>
												<strong>[이용호텔]</strong></font></font>
										</p>
										<p>
											<span style="color: rgb(68, 68, 68); font-family: 돋움;">-
											</span><strong style="color: rgb(68, 68, 68); font-family: 돋움;"><span
												style="color: rgb(58, 50, 195);">웨스틴
													[사라&nbsp;풀빌라]&nbsp;FULL 4박</span></strong><span
												style="color: rgb(68, 68, 68); font-family: 돋움;"> </span>
										</p>
										<p>
											<font color="#656565" face="돋움"><font color="#444444">-
													디바나 플라자 리조트&nbsp;2박 +&nbsp;웨스틴 [1베드
													사라&nbsp;풀빌라]&nbsp;2박&nbsp;으로 변경 시, <u>1인 5 만원 상품가 인상</u>
													됩니다.
											</font></font><br> <br>
											<font color="#656565" face="돋움"><font color="#444444"><span
													style="color: rgb(0, 128, 0);"><font face="돋움"><strong>[특전
																1]</strong></font></span><font color="#444444" face="돋움">&nbsp;</font><span
													style="color: rgb(0, 128, 0);"><font face="돋움">타사비교필수&nbsp;</font></span><font
													color="#444444" face="돋움">- 동부화재 여행자보험 2억원 가입<br>&nbsp;
												</font><br>
												<span style="color: rgb(0, 128, 0);"><font face="돋움"><strong>[특전
																2]</strong></font></span><font color="#444444" face="돋움">&nbsp;</font><span
													style="color: rgb(0, 128, 0);"><font face="돋움">가이드/기사&nbsp;경비
															포함</font></span><br>
												<font color="#444444" face="돋움">&nbsp;</font><br>
												<span style="color: rgb(0, 128, 0);"><font face="돋움"><strong>[특전
																3]</strong></font></span><font color="#444444" face="돋움">&nbsp;<strong><font
															color="#ff0000" face="돋움">愛 프로그램만의 특전</font></strong></font><br>
												<font color="#444444" face="돋움"><font face="돋움"><font
															color="#444444">① ★ 전 일정 여유 있는 휴양 보장 ★ 자유로운 선택형 투어<br>&nbsp;-&nbsp;팡아만
																어드벤쳐 투어 vs 리조트 전일 자유시간<br>&nbsp;-&nbsp;
														</font><span style="color: rgb(255, 0, 0);">럭셔리 요트크루즈 +
																허니문 스냅 촬영<font color="#444444" face="돋움">&nbsp;vs
																	피피or라차섬 호핑 투어</font>
														</span></font><br>② 신선한 씨푸드 정식<br>③ 푸켓 시티 투어 + 코끼리 트랙킹<br>④&nbsp;노천사우나+</font><font
													color="#444444" face="돋움">전통안마 2시간&nbsp;체험<br>⑤
														타이 엔틱 마사지 2시간 체험<br>⑥ 아로마&nbsp;커플 스파 2시간 체험 (선택 시)<br>
														&nbsp; <br>
													<span style="color: rgb(0, 0, 255);"><font size="2"
															face="돋움"><font size="2" face="돋움"><font
																	size="2" face="돋움"><font size="2" face="돋움">※
																			노쇼핑 일정 진행 시, 1인 $200 추가 됩니다.</font></font><br>※ 푸켓에 주중 (화~금)
																	도착 시&nbsp;1인 $150 추가 됩니다.</font><br>※ 푸켓 IN, OUT 시 타국가 2박
																이상 체류 시 1인 $150 추가 됩니다.</font></span></font></font></font><br>
											<font size="2" face="돋움">※ 두분 중 단 한분이라도 외국국적 일 경우, 1인
												$100 추가 됩니다.<br>&nbsp;- 중국국적자의 경우, 태국 입국 시 도착비자 발급 필수
												입니다. (1인 2,000바트 + 여권용사진 지참 必)
											</font>
										</p></td>
								</tr>
							</tbody>
						</table></td>
				</tr>
			</tbody>
		</table>
		<p
			style="word-break: break-all; color: rgb(59, 59, 59); font-family: dotum;">&nbsp;</p>
		<p
			style="word-break: break-all; color: rgb(59, 59, 59); font-family: dotum;">&nbsp;</p>
		<p
			style="word-break: break-all; color: rgb(59, 59, 59); font-family: dotum;">&nbsp;</p>
		<table border="0" cellspacing="0" cellpadding="0" width="100%"
			style="color: rgb(59, 59, 59); font-family: dotum;">
			<tbody>
				<tr>
					<td height="35" style="padding-left: 13px;"><table border="0"
							cellspacing="0" cellpadding="0" width="100%">
							<tbody>
								<tr>
									<td height="35" style="padding-left: 13px;"><img
										border="0"
										src="http://image.lottetours.com/img04/wimages/b2c/goods/tit_detailSchedule.gif"
										width="132" height="30"
										style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
									<td align="right" style="padding: 10px 5px 0px 0px;"><img
										border="0"
										src="http://image.lottetours.com/img04/wimages/b2c/goods/img_tipDetail.gif"
										width="324" height="19"
										style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
								</tr>
							</tbody>
						</table></td>
				</tr>
				<tr>
					<td><table border="0" cellspacing="0" cellpadding="0"
							width="100%">
							<tbody>
								<tr>
									<td><table border="0" cellspacing="0" cellpadding="0"
											width="100%">
											<tbody>
												<tr>
													<td width="10"><img border="0"
														src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_top_01.gif"
														width="10" height="8"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
													<td class="2gt2" bgcolor="#90b2f3" width="100%"><img
														border="0"
														src="http://image.lottetours.com/img04/wimages/b2c/goods/common/blank.gif"
														width="1" height="1"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
													<td width="10"><img border="0"
														src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_top_04.gif"
														width="10" height="8"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
												</tr>
											</tbody>
										</table></td>
								</tr>
								<tr>
									<td class="2gl2 2gr2" bgcolor="#90b2f3"><table border="0"
											cellspacing="0" cellpadding="0" width="100%">
											<tbody>
												<tr>
													<td width="134" align="middle"><span
														class="tahoma cw bold s30 2up"><i>1</i>&nbsp;</span><img
														border="0" align="absMiddle"
														src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schDay.gif"
														width="32" height="20"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
													<td class="cw dotum h140" width="520"><br></td>
													<td valign="bottom" width="68"></td>
												</tr>
												<tr>
													<td height="4" colspan="3"></td>
												</tr>
											</tbody>
										</table></td>
								</tr>
								<tr>
									<td class="2gl2 2gr2"><table border="0" cellspacing="0"
											cellpadding="0" width="100%">
											<colgroup>
												<col valign="top" align="middle" width="134"
													style="padding: 14px 0px;">
												<col width="588" style="padding: 12px 12px 10px;">
											</colgroup>
											<tbody>
												<tr>
													<td><a class="ctit5 dotum s16 bold"
														style="margin: 0px; padding: 0px; word-break: break-all;">인천</a></td>
													<td class="h150 cg1 dotum 1gl2 "><p
															style="word-break: break-all;">
															<font color="blue"><br></font>
														</p>
														<p style="word-break: break-all;">
															<font color="blue">[미팅시간] 16:30<br>[미팅장소]
																인천국제공항 3층 출국장 M카운터 창측 롯데관광 만남의 장소 전용 테이블<br>[공항비상연락처]
																☎ 010-9214-5502 (공항 관련 문의만 받습니다.)
															</font><a
																style="margin: 0px; padding: 0px; word-break: break-all;"><img
																border="0" vspace="2" align="absMiddle"
																src="http://image.lottetours.com/img04/wimages/b2c/button/but_vSchMeetMap.gif"
																width="84" height="17"
																style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></a><br>
															<img id="DAM_0201200811222899800181193" border="0"
																src="http://ltassc.lottetour.com/LAMS_CONTENTS/REV/2008/11/22/IMG/SRC/0201200811222899800181193012451.GIF"
																height="25"
																style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;">아시아나항공
															: OZ747 ICN(19:30 인천국제공항 출발)-HKT(00:20: 푸켓 도착)<br>◈
															운항소요시간 ◈ 【 약 6시간 15분 소요 】<br>◈ 시차정보 ◈ 【 한국보다 2시간
															느립니다. 】
														</p>
														<p style="word-break: break-all;">&nbsp;</p></td>
												</tr>
												<tr>
													<td><a class="ctit5 dotum s16 bold"
														style="margin: 0px; padding: 0px; word-break: break-all;">푸켓</a></td>
													<td class="h150 cg1 dotum 1gl2 1gt2"><p
															style="word-break: break-all;">
															푸켓 국제공항 도착 후&nbsp;<u>가이드 미팅</u><br>
															<br>
															<span style="font-size: 10px;">※&nbsp;태국은 한국인 가이드가
																공항 안에 들어갈 수 없으므로 현지 가이드님이 1차 미팅 후,<br> 한국인 미팅
																가이드님과의&nbsp;미팅장소로 함께 이동 해드리고 있습니다.
															</span><br>
															<br>숙소 이동하여 체크인 및 휴식
														</p>
														<p style="word-break: break-all;">&nbsp;</p></td>
												</tr>
											</tbody>
										</table></td>
								</tr>
								<tr>
									<td class="2gl2 2gr2 1gt2" bgcolor="#f6f6f6"
										style="padding: 12px 10px 4px 18px;"><table border="0"
											cellspacing="0" cellpadding="0" width="100%">
											<tbody>
												<tr>
													<td class="cg1 dotum" height="20"
														style="padding-left: 18px;"><p
															style="word-break: break-all;">
															<img class="1up" border="0" align="absMiddle"
																src="http://image.lottetours.com/img04/wimages/b2c/icon/ico_schHotel.gif"
																width="15" height="13"
																style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;">&nbsp;<img
																border="0"
																src="http://image.lottetours.com/img04/b2c/wimages/b2c/icon/ico_star_single.png"
																style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"><img
																border="0"
																src="http://image.lottetours.com/img04/b2c/wimages/b2c/icon/ico_star_single.png"
																style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"><img
																border="0"
																src="http://image.lottetours.com/img04/b2c/wimages/b2c/icon/ico_star_single.png"
																style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"><img
																border="0"
																src="http://image.lottetours.com/img04/b2c/wimages/b2c/icon/ico_star_single.png"
																style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"><img
																border="0"
																src="http://image.lottetours.com/img04/b2c/wimages/b2c/icon/ico_star_single.png"
																style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;">&nbsp;<a
																style="margin: 0px; padding: 0px; word-break: break-all;"></a><a><span
																class="ctit1"><u>The Westin Siray Bay Resort
																		&amp; Spa(웨스틴 리조트)</u></span>&nbsp;</a>
														</p>
														<p style="word-break: break-all;">
															본 여행상품의 숙박시설은 상기의 숙박시설 중 이용할&nbsp;<span
																style="color: rgb(255, 0, 0);">[예정]</span>&nbsp;입니다.
														</p>
														<p style="word-break: break-all;">
															출발 []일전까지 홈페이지 또는 유선을 통해 알려드리겠습니다.&nbsp;<a
																style="margin: 0px; padding: 0px; word-break: break-all;"></a>
														</p></td>
												</tr>
												<tr>
													<td class="cg1 dotum" height="20"
														style="padding-left: 18px;"><img class="1up"
														border="0" align="absMiddle"
														src="http://image.lottetours.com/img04/wimages/b2c/icon/ico_schFood.gif"
														width="15" height="13"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;">&nbsp;저녁
														: 기내식</td>
												</tr>
											</tbody>
										</table></td>
								</tr>
								<tr>
									<td><table border="0" cellspacing="0" cellpadding="0"
											width="100%">
											<tbody>
												<tr>
													<td width="10"><img border="0"
														src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_bottom_01.gif"
														width="10" height="8"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
													<td class="2gb2" bgcolor="#f6f6f6" width="100%"><img
														border="0"
														src="http://image.lottetours.com/img04/wimages/b2c/common/blank.gif"
														width="1" height="1"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
													<td width="10"><img border="0"
														src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_bottom_04.gif"
														width="10" height="8"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
												</tr>
											</tbody>
										</table></td>
								</tr>
							</tbody>
						</table></td>
				</tr>
				<tr>
					<td height="10"></td>
				</tr>
				<tr>
					<td><table border="0" cellspacing="0" cellpadding="0"
							width="100%">
							<tbody>
								<tr>
									<td><table border="0" cellspacing="0" cellpadding="0"
											width="100%">
											<tbody>
												<tr>
													<td width="10"><img border="0"
														src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_top_01.gif"
														width="10" height="8"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
													<td class="2gt2" bgcolor="#90b2f3" width="100%"><img
														border="0"
														src="http://image.lottetours.com/img04/wimages/b2c/goods/common/blank.gif"
														width="1" height="1"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
													<td width="10"><img border="0"
														src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_top_04.gif"
														width="10" height="8"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
												</tr>
											</tbody>
										</table></td>
								</tr>
								<tr>
									<td class="2gl2 2gr2" bgcolor="#90b2f3"><table border="0"
											cellspacing="0" cellpadding="0" width="100%">
											<tbody>
												<tr>
													<td width="134" align="middle"><span
														class="tahoma cw bold s30 2up"><i>2</i>&nbsp;</span><img
														border="0" align="absMiddle"
														src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schDay.gif"
														width="32" height="20"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
													<td class="cw dotum h140" width="520"><br></td>
													<td valign="bottom" width="68"></td>
												</tr>
												<tr>
													<td height="4" colspan="3"></td>
												</tr>
											</tbody>
										</table></td>
								</tr>
								<tr>
									<td class="2gl2 2gr2"><table border="0" cellspacing="0"
											cellpadding="0" width="100%">
											<colgroup>
												<col valign="top" align="middle" width="134"
													style="padding: 14px 0px;">
												<col width="588" style="padding: 12px 12px 10px;">
											</colgroup>
											<tbody>
												<tr>
													<td><a class="ctit5 dotum s16 bold"
														style="margin: 0px; padding: 0px; word-break: break-all;">푸켓</a></td>
													<td class="h150 cg1 dotum 1gl2 1gt2"><p
															style="word-break: break-all;">
															<font size="2" face="돋움"><br></font>
														</p>
														<p style="word-break: break-all;">
															<font size="2" face="돋움">기상 및 조식</font>
														</p>
														<p style="word-break: break-all;">
															<font size="2" face="돋움"><br></font>
														</p>
														<table border="1" cellspacing="1" cellpadding="1"
															style="width: 500px; height: 86px;">
															<tbody>
																<tr>
																	<td><p style="word-break: break-all;">
																			<br>
																			<font size="2" face="돋움"><strong>내
																					맘대로 선택 일정 (택1)</strong><br>
																			<br>● 선택1.&nbsp;<span
																				style="color: rgb(0, 128, 0);">전일 리조트 자유시간
																					즐기기</span><br> - 여유롭게 즐기는 리조트 부대시설 이용 및 자유시간<br>
																				- 중식 (<span style="color: rgb(0, 0, 255);">리조트식</span>)
																				+ 석식 (<span style="color: rgb(0, 0, 255);">리조트식</span>)<br>
																			<br>● 선택2. 중국의 계림을 연상케 하는&nbsp;<span
																				style="color: rgb(0, 128, 0);">팡아만 어드벤쳐 투어 +
																					스파 체험&nbsp;+ 푸켓 관광</span><br> - 팡아만 투어 : 씨카누
																				동글&amp;맹그로브 정글 탐험 + 제임스본드섬 관광<br> -&nbsp;중식 (<span
																				style="color: rgb(0, 0, 255);">이슬람 해선식</span>)<br>
																				- 푸켓 귀환 후,&nbsp;<span style="color: rgb(0, 128, 0);">아로마&nbsp;스파
																					2시간 체험</span><br> - 푸켓의 밤 문화를 느낄 수 있는&nbsp;<span
																				style="color: rgb(0, 128, 0);">파통 야간 디스커버리 투어</span><br>
																				- 태국 최고의 볼거리 트렌스젠더쇼 관람 [아프로디테쇼 OR 싸이먼쇼]</font><br>&nbsp;
																		</p></td>
																</tr>
															</tbody>
														</table>
														<p style="word-break: break-all;">
															<font size="2" face="돋움"><br></font>
														</p>
														<p style="word-break: break-all;">
															<font size="2" face="돋움">숙소 휴식</font>
														</p>
														<p style="word-break: break-all;">
															<font size="2" face="돋움"><br></font>
														</p></td>
												</tr>
											</tbody>
										</table></td>
								</tr>
								<tr>
									<td class="2gl2 2gr2 1gt2" bgcolor="#f6f6f6"
										style="padding: 12px 10px 4px 18px;"><table border="0"
											cellspacing="0" cellpadding="0" width="100%">
											<tbody>
												<tr>
													<td class="cg1 dotum" height="20"
														style="padding-left: 18px;"><p
															style="word-break: break-all;">
															<a
																style="margin: 0px; padding: 0px; word-break: break-all;"><img
																class="1up" border="0" align="absMiddle"
																src="http://image.lottetours.com/img04/wimages/b2c/icon/ico_schHotel.gif"
																width="15" height="13"
																style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;">&nbsp;<img
																border="0"
																src="http://image.lottetours.com/img04/b2c/wimages/b2c/icon/ico_star_single.png"
																style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"><img
																border="0"
																src="http://image.lottetours.com/img04/b2c/wimages/b2c/icon/ico_star_single.png"
																style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"><img
																border="0"
																src="http://image.lottetours.com/img04/b2c/wimages/b2c/icon/ico_star_single.png"
																style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"><img
																border="0"
																src="http://image.lottetours.com/img04/b2c/wimages/b2c/icon/ico_star_single.png"
																style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"><img
																border="0"
																src="http://image.lottetours.com/img04/b2c/wimages/b2c/icon/ico_star_single.png"
																style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;">&nbsp;</a><a
																style="margin: 0px; padding: 0px; word-break: break-all;"></a><a><span
																class="ctit1"><u>The Westin Siray Bay Resort
																		&amp; Spa(웨스틴 리조트)</u></span>&nbsp;</a><br>본 여행상품의 숙박시설은 상기의
															숙박시설 중 이용할&nbsp;<span style="color: rgb(255, 0, 0);">[예정]</span>&nbsp;입니다.
														</p>
														<p style="word-break: break-all;">
															출발 []일전까지 홈페이지 또는 유선을 통해 알려드리겠습니다.&nbsp;<a
																style="margin: 0px; padding: 0px; word-break: break-all;"></a>
														</p></td>
												</tr>
												<tr>
													<td class="cg1 dotum" height="20"
														style="padding-left: 18px;"><img class="1up"
														border="0" align="absMiddle"
														src="http://image.lottetours.com/img04/wimages/b2c/icon/ico_schFood.gif"
														width="15" height="13"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;">&nbsp;아침
														: 리조트식 &nbsp;&nbsp;&nbsp;점심 : 현지식 &nbsp;&nbsp;&nbsp;저녁 :
														현지식</td>
												</tr>
											</tbody>
										</table></td>
								</tr>
								<tr>
									<td><table border="0" cellspacing="0" cellpadding="0"
											width="100%">
											<tbody>
												<tr>
													<td width="10"><img border="0"
														src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_bottom_01.gif"
														width="10" height="8"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
													<td class="2gb2" bgcolor="#f6f6f6" width="100%"><img
														border="0"
														src="http://image.lottetours.com/img04/wimages/b2c/common/blank.gif"
														width="1" height="1"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
													<td width="10"><img border="0"
														src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_bottom_04.gif"
														width="10" height="8"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
												</tr>
											</tbody>
										</table></td>
								</tr>
							</tbody>
						</table></td>
				</tr>
				<tr>
					<td height="10"></td>
				</tr>
				<tr>
					<td><table border="0" cellspacing="0" cellpadding="0"
							width="100%">
							<tbody>
								<tr>
									<td><table border="0" cellspacing="0" cellpadding="0"
											width="100%">
											<tbody>
												<tr>
													<td width="10"><img border="0"
														src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_top_01.gif"
														width="10" height="8"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
													<td class="2gt2" bgcolor="#90b2f3" width="100%"><img
														border="0"
														src="http://image.lottetours.com/img04/wimages/b2c/goods/common/blank.gif"
														width="1" height="1"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
													<td width="10"><img border="0"
														src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_top_04.gif"
														width="10" height="8"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
												</tr>
											</tbody>
										</table></td>
								</tr>
								<tr>
									<td class="2gl2 2gr2" bgcolor="#90b2f3"><table border="0"
											cellspacing="0" cellpadding="0" width="100%">
											<tbody>
												<tr>
													<td width="134" align="middle"><span
														class="tahoma cw bold s30 2up"><i>3</i>&nbsp;</span><img
														border="0" align="absMiddle"
														src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schDay.gif"
														width="32" height="20"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
													<td class="cw dotum h140" width="520"><br></td>
													<td valign="bottom" width="68"></td>
												</tr>
												<tr>
													<td height="4" colspan="3"></td>
												</tr>
											</tbody>
										</table></td>
								</tr>
								<tr>
									<td class="2gl2 2gr2"><table border="0" cellspacing="0"
											cellpadding="0" width="100%">
											<colgroup>
												<col valign="top" align="middle" width="134"
													style="padding: 14px 0px;">
												<col width="588" style="padding: 12px 12px 10px;">
											</colgroup>
											<tbody>
												<tr>
													<td><a class="ctit5 dotum s16 bold"
														style="margin: 0px; padding: 0px; word-break: break-all;">푸켓</a></td>
													<td class="h150 cg1 dotum 1gl2 1gt2"><p
															style="word-break: break-all;">
															<font size="2" face="돋움"><br></font>
														</p>
														<p style="word-break: break-all;">
															<font size="2" face="돋움">기상 및 조식</font>
														</p>
														<p style="word-break: break-all;">
															<font size="2" face="돋움"><br></font>
														</p>
														<table border="1" cellspacing="1" cellpadding="1"
															style="width: 597px; height: 170px;">
															<tbody>
																<tr>
																	<td><p style="word-break: break-all;">
																			<font size="2" face="돋움"><strong>내
																					맘대로 선택 일정 (택1)</strong><br>
																			<br>● 선택1.&nbsp;<span
																				style="color: rgb(0, 128, 0);">럭셔리 요트 크루즈
																					&amp; ★허니문 스냅 촬영★</span><br> - 럭셔리 요트를 타고 즐기는 코랄 아일랜드
																				호핑투어<br> - 럭셔리 요트 위에서 전문 포토그래퍼와 함께 진행되는&nbsp;<span
																				style="color: rgb(255, 0, 153);">허니문 스냅 촬영 (팁
																					$20 불포함)</span><br> - 에메랄드 바다 속을 감상할 수 있는 스노클링 + 요트에서
																				즐기는 바다 낚시<br>
																			<br>● 선택2.&nbsp;<span
																				style="color: rgb(0, 128, 0);">피피 OR
																					라차&nbsp;아일랜드 호핑 투어 [스피드보트 이동]</span><br> -&nbsp;에메랄드
																				바다 속을 감상할 수 있는 스노클링<br>
																			<br>※ 기상 악화 시, 유람선 페리로 투어가 진행 됩니다.</font>
																		</p></td>
																</tr>
															</tbody>
														</table>
														<p style="word-break: break-all;">
															<font size="2" face="돋움"><br></font>
														</p>
														<p style="word-break: break-all;">
															<font size="2" face="돋움">푸켓 귀환 후, 노천 허브 사우나 &amp;
																전통안마 2시간<br>
															<br>석식 (<span style="color: rgb(0, 0, 255);">신선한
																	해산물 씨푸드 정식</span>) 후&nbsp;숙소 휴식
															</font>
														</p>
														<p style="word-break: break-all;">
															<font size="2" face="돋움"><br></font>
														</p></td>
												</tr>
											</tbody>
										</table></td>
								</tr>
								<tr>
									<td class="2gl2 2gr2 1gt2" bgcolor="#f6f6f6"
										style="padding: 12px 10px 4px 18px;"><table border="0"
											cellspacing="0" cellpadding="0" width="100%">
											<tbody>
												<tr>
													<td class="cg1 dotum" height="20"
														style="padding-left: 18px;"><p
															style="word-break: break-all;">
															<a
																style="margin: 0px; padding: 0px; word-break: break-all;"><img
																class="1up" border="0" align="absMiddle"
																src="http://image.lottetours.com/img04/wimages/b2c/icon/ico_schHotel.gif"
																width="15" height="13"
																style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;">&nbsp;<img
																border="0"
																src="http://image.lottetours.com/img04/b2c/wimages/b2c/icon/ico_star_single.png"
																style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"><img
																border="0"
																src="http://image.lottetours.com/img04/b2c/wimages/b2c/icon/ico_star_single.png"
																style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"><img
																border="0"
																src="http://image.lottetours.com/img04/b2c/wimages/b2c/icon/ico_star_single.png"
																style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"><img
																border="0"
																src="http://image.lottetours.com/img04/b2c/wimages/b2c/icon/ico_star_single.png"
																style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"><img
																border="0"
																src="http://image.lottetours.com/img04/b2c/wimages/b2c/icon/ico_star_single.png"
																style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;">&nbsp;</a><a
																style="margin: 0px; padding: 0px; word-break: break-all;"></a><a><span
																class="ctit1"><u>The Westin Siray Bay Resort
																		&amp; Spa(웨스틴 리조트)</u></span>&nbsp;</a><br>본 여행상품의 숙박시설은 상기의
															숙박시설 중 이용할&nbsp;<span style="color: rgb(255, 0, 0);">[예정]</span>&nbsp;입니다.
														</p>
														<p style="word-break: break-all;">
															출발 []일전까지 홈페이지 또는 유선을 통해 알려드리겠습니다.&nbsp;<a
																style="margin: 0px; padding: 0px; word-break: break-all;"></a>
														</p></td>
												</tr>
												<tr>
													<td class="cg1 dotum" height="20"
														style="padding-left: 18px;"><img class="1up"
														border="0" align="absMiddle"
														src="http://image.lottetours.com/img04/wimages/b2c/icon/ico_schFood.gif"
														width="15" height="13"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;">&nbsp;아침
														: 리조트식 &nbsp;&nbsp;&nbsp;점심 : 현지식 &nbsp;&nbsp;&nbsp;저녁 :
														특식</td>
												</tr>
											</tbody>
										</table></td>
								</tr>
								<tr>
									<td><table border="0" cellspacing="0" cellpadding="0"
											width="100%">
											<tbody>
												<tr>
													<td width="10"><img border="0"
														src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_bottom_01.gif"
														width="10" height="8"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
													<td class="2gb2" bgcolor="#f6f6f6" width="100%"><img
														border="0"
														src="http://image.lottetours.com/img04/wimages/b2c/common/blank.gif"
														width="1" height="1"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
													<td width="10"><img border="0"
														src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_bottom_04.gif"
														width="10" height="8"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
												</tr>
											</tbody>
										</table></td>
								</tr>
							</tbody>
						</table></td>
				</tr>
				<tr>
					<td height="10"></td>
				</tr>
				<tr>
					<td><table border="0" cellspacing="0" cellpadding="0"
							width="100%">
							<tbody>
								<tr>
									<td><table border="0" cellspacing="0" cellpadding="0"
											width="100%">
											<tbody>
												<tr>
													<td width="10"><img border="0"
														src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_top_01.gif"
														width="10" height="8"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
													<td class="2gt2" bgcolor="#90b2f3" width="100%"><img
														border="0"
														src="http://image.lottetours.com/img04/wimages/b2c/goods/common/blank.gif"
														width="1" height="1"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
													<td width="10"><img border="0"
														src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_top_04.gif"
														width="10" height="8"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
												</tr>
											</tbody>
										</table></td>
								</tr>
								<tr>
									<td class="2gl2 2gr2" bgcolor="#90b2f3"><table border="0"
											cellspacing="0" cellpadding="0" width="100%">
											<tbody>
												<tr>
													<td width="134" align="middle"><span
														class="tahoma cw bold s30 2up"><i>4</i>&nbsp;</span><img
														border="0" align="absMiddle"
														src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schDay.gif"
														width="32" height="20"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
													<td class="cw dotum h140" width="520"><br></td>
													<td valign="bottom" width="68"></td>
												</tr>
												<tr>
													<td height="4" colspan="3"></td>
												</tr>
											</tbody>
										</table></td>
								</tr>
								<tr>
									<td class="2gl2 2gr2"><table border="0" cellspacing="0"
											cellpadding="0" width="100%">
											<colgroup>
												<col valign="top" align="middle" width="134"
													style="padding: 14px 0px;">
												<col width="588" style="padding: 12px 12px 10px;">
											</colgroup>
											<tbody>
												<tr>
													<td><a class="ctit5 dotum s16 bold"
														style="margin: 0px; padding: 0px; word-break: break-all;">푸켓</a></td>
													<td class="h150 cg1 dotum 1gl2 1gt2"><p
															style="word-break: break-all;">
															<font color="#656565" size="2" face="돋움"><br></font>
														</p>
														<p style="word-break: break-all;">
															<font color="#656565" size="2" face="돋움">기상 및 조식</font>
														</p>
														<p style="word-break: break-all;">
															<font color="#656565" size="2" face="돋움"><br></font>
														</p>
														<table border="1" cellspacing="1" cellpadding="1"
															style="width: 248px; height: 61px;">
															<tbody>
																<tr>
																	<td><p style="word-break: break-all;">
																			<font color="#656565" size="2" face="돋움">&nbsp;<strong><span
																					style="color: rgb(0, 128, 0);">전일&nbsp;풀빌라
																						자유시간 즐기기</span></strong><br> - 중식 (<span
																				style="color: rgb(0, 0, 255);">리조트식</span>) + 석식 (<span
																				style="color: rgb(0, 0, 255);">리조트식</span>)
																			</font>
																		</p></td>
																</tr>
															</tbody>
														</table>
														<p style="word-break: break-all;">
															<font color="#656565" size="2" face="돋움"><br></font>
														</p>
														<p style="word-break: break-all;">
															<font color="#656565" size="2" face="돋움">숙소 휴식</font>
														</p>
														<p style="word-break: break-all;">
															<font color="#656565" size="2" face="돋움"><br></font>
														</p></td>
												</tr>
											</tbody>
										</table></td>
								</tr>
								<tr>
									<td class="2gl2 2gr2 1gt2" bgcolor="#f6f6f6"
										style="padding: 12px 10px 4px 18px;"><table border="0"
											cellspacing="0" cellpadding="0" width="100%">
											<tbody>
												<tr>
													<td class="cg1 dotum" height="20"
														style="padding-left: 18px;"><p
															style="word-break: break-all;">
															<a
																style="margin: 0px; padding: 0px; word-break: break-all;"><img
																class="1up" border="0" align="absMiddle"
																src="http://image.lottetours.com/img04/wimages/b2c/icon/ico_schHotel.gif"
																width="15" height="13"
																style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;">&nbsp;<img
																border="0"
																src="http://image.lottetours.com/img04/b2c/wimages/b2c/icon/ico_star_single.png"
																style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"><img
																border="0"
																src="http://image.lottetours.com/img04/b2c/wimages/b2c/icon/ico_star_single.png"
																style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"><img
																border="0"
																src="http://image.lottetours.com/img04/b2c/wimages/b2c/icon/ico_star_single.png"
																style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"><img
																border="0"
																src="http://image.lottetours.com/img04/b2c/wimages/b2c/icon/ico_star_single.png"
																style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"><img
																border="0"
																src="http://image.lottetours.com/img04/b2c/wimages/b2c/icon/ico_star_single.png"
																style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;">&nbsp;</a><a
																style="margin: 0px; padding: 0px; word-break: break-all;"></a><a><span
																class="ctit1"><u>The Westin Siray Bay Resort
																		&amp; Spa(웨스틴 리조트)</u></span>&nbsp;</a><br>본 여행상품의 숙박시설은 상기의
															숙박시설 중 이용할&nbsp;<span style="color: rgb(255, 0, 0);">[예정]</span>&nbsp;입니다.
														</p>
														<p style="word-break: break-all;">
															출발 []일전까지 홈페이지 또는 유선을 통해 알려드리겠습니다.&nbsp;<a
																style="margin: 0px; padding: 0px; word-break: break-all;"></a>
														</p></td>
												</tr>
												<tr>
													<td class="cg1 dotum" height="20"
														style="padding-left: 18px;"><img class="1up"
														border="0" align="absMiddle"
														src="http://image.lottetours.com/img04/wimages/b2c/icon/ico_schFood.gif"
														width="15" height="13"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;">&nbsp;아침
														: 리조트식 &nbsp;&nbsp;&nbsp;점심 : 리조트식 &nbsp;&nbsp;&nbsp;저녁 :
														리조트식</td>
												</tr>
											</tbody>
										</table></td>
								</tr>
								<tr>
									<td><table border="0" cellspacing="0" cellpadding="0"
											width="100%">
											<tbody>
												<tr>
													<td width="10"><img border="0"
														src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_bottom_01.gif"
														width="10" height="8"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
													<td class="2gb2" bgcolor="#f6f6f6" width="100%"><img
														border="0"
														src="http://image.lottetours.com/img04/wimages/b2c/common/blank.gif"
														width="1" height="1"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
													<td width="10"><img border="0"
														src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_bottom_04.gif"
														width="10" height="8"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
												</tr>
											</tbody>
										</table></td>
								</tr>
							</tbody>
						</table></td>
				</tr>
				<tr>
					<td height="10"></td>
				</tr>
				<tr>
					<td><table border="0" cellspacing="0" cellpadding="0"
							width="100%">
							<tbody>
								<tr>
									<td><table border="0" cellspacing="0" cellpadding="0"
											width="100%">
											<tbody>
												<tr>
													<td width="10"><img border="0"
														src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_top_01.gif"
														width="10" height="8"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
													<td class="2gt2" bgcolor="#90b2f3" width="100%"><img
														border="0"
														src="http://image.lottetours.com/img04/wimages/b2c/goods/common/blank.gif"
														width="1" height="1"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
													<td width="10"><img border="0"
														src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_top_04.gif"
														width="10" height="8"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
												</tr>
											</tbody>
										</table></td>
								</tr>
								<tr>
									<td class="2gl2 2gr2" bgcolor="#90b2f3"><table border="0"
											cellspacing="0" cellpadding="0" width="100%">
											<tbody>
												<tr>
													<td width="134" align="middle"><span
														class="tahoma cw bold s30 2up"><i>5</i>&nbsp;</span><img
														border="0" align="absMiddle"
														src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schDay.gif"
														width="32" height="20"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
													<td class="cw dotum h140" width="520"><br></td>
													<td valign="bottom" width="68"></td>
												</tr>
												<tr>
													<td height="4" colspan="3"></td>
												</tr>
											</tbody>
										</table></td>
								</tr>
								<tr>
									<td class="2gl2 2gr2"><table border="0" cellspacing="0"
											cellpadding="0" width="100%">
											<colgroup>
												<col valign="top" align="middle" width="134"
													style="padding: 14px 0px;">
												<col width="588" style="padding: 12px 12px 10px;">
											</colgroup>
											<tbody>
												<tr>
													<td><a class="ctit5 dotum s16 bold"
														style="margin: 0px; padding: 0px; word-break: break-all;">푸켓</a></td>
													<td class="h150 cg1 dotum 1gl2 1gt2"><p
															style="word-break: break-all;">
															<font size="2" face="돋움"><br></font>
														</p>
														<p style="word-break: break-all;">
															<font size="2" face="돋움">기상 및 조식<br>
															<br>체크아웃 후 가이드 미팅
															</font>
														</p>
														<p style="word-break: break-all;">
															<font size="2" face="돋움"><br></font>
														</p>
														<table border="1" cellspacing="1" cellpadding="1"
															style="width: 374px; height: 50px;">
															<tbody>
																<tr>
																	<td><p style="word-break: break-all;">
																			<br>
																			<font size="2" face="돋움"><span
																				style="color: rgb(0, 128, 0);"><strong>푸켓
																						시티투어</strong><br>&nbsp;</span>- 푸켓 타운을 한눈에 들여다보는 카오랑힐 관광<br>&nbsp;-
																				태국의 대표적인 체험관광인 코끼리 트래킹 체험 (약 10분)<br>&nbsp;-
																				왓찰롱 사원 관광</font><br>&nbsp;
																		</p></td>
																</tr>
															</tbody>
														</table>
														<p style="word-break: break-all;">
															<br>
															<font size="2" face="돋움">중식(<span
																style="color: rgb(0, 0, 255);">현지식</span>) 후&nbsp;<u>쇼핑센터
																	방문</u><br>
															<br>여행의 피로를 풀어줄&nbsp;<span
																style="color: rgb(0, 128, 0);">타이 엔틱 마사지 2시간</span><br>
															<br>
															<font size="2" face="돋움">석식 (<span
																	style="color: rgb(0, 0, 255);">삼겹살</span>) 후&nbsp;
															</font>공항으로 이동
															</font>
														</p></td>
												</tr>
												<tr>
													<td class="ctit5 dotum s16 bold">&nbsp;</td>
													<td class="h150 cg1 dotum 1gl2"><div
															style="margin: 0px; padding: 0px; word-break: break-all;">
															<table border="0" cellspacing="0" cellpadding="0"
																width="100%" bgcolor="#f5f5f5">
																<tbody>
																	<tr>
																		<td width="90%"><img border="0"
																			src="http://image.lottetours.com/img04/wimages/b2c/goods/tit_todaySight.gif"
																			width="102" height="32"
																			style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
																		<td></td>
																	</tr>
																	<tr>
																		<td colspan="2"><br></td>
																	</tr>
																</tbody>
															</table>
														</div></td>
												</tr>
											</tbody>
										</table></td>
								</tr>
								<tr>
									<td class="2gl2 2gr2 1gt2" bgcolor="#f6f6f6"
										style="padding: 12px 10px 4px 18px;"><table border="0"
											cellspacing="0" cellpadding="0" width="100%">
											<tbody>
												<tr>
													<td class="cg1 dotum" height="20"
														style="padding-left: 18px;"><img class="1up"
														border="0" align="absMiddle"
														src="http://image.lottetours.com/img04/wimages/b2c/icon/ico_schFood.gif"
														width="15" height="13"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;">&nbsp;아침
														: 리조트식 &nbsp;&nbsp;&nbsp;점심 : 현지식 &nbsp;&nbsp;&nbsp;저녁 :
														한식</td>
												</tr>
											</tbody>
										</table></td>
								</tr>
								<tr>
									<td><table border="0" cellspacing="0" cellpadding="0"
											width="100%">
											<tbody>
												<tr>
													<td width="10"><img border="0"
														src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_bottom_01.gif"
														width="10" height="8"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
													<td class="2gb2" bgcolor="#f6f6f6" width="100%"><img
														border="0"
														src="http://image.lottetours.com/img04/wimages/b2c/common/blank.gif"
														width="1" height="1"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
													<td width="10"><img border="0"
														src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_bottom_04.gif"
														width="10" height="8"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
												</tr>
											</tbody>
										</table></td>
								</tr>
							</tbody>
						</table></td>
				</tr>
				<tr>
					<td height="10"></td>
				</tr>
				<tr>
					<td><table border="0" cellspacing="0" cellpadding="0"
							width="100%">
							<tbody>
								<tr>
									<td><table border="0" cellspacing="0" cellpadding="0"
											width="100%">
											<tbody>
												<tr>
													<td width="10"><img border="0"
														src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_top_01.gif"
														width="10" height="8"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
													<td class="2gt2" bgcolor="#90b2f3" width="100%"><img
														border="0"
														src="http://image.lottetours.com/img04/wimages/b2c/goods/common/blank.gif"
														width="1" height="1"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
													<td width="10"><img border="0"
														src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schBox_top_04.gif"
														width="10" height="8"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
												</tr>
											</tbody>
										</table></td>
								</tr>
								<tr>
									<td class="2gl2 2gr2" bgcolor="#90b2f3"><table border="0"
											cellspacing="0" cellpadding="0" width="100%">
											<tbody>
												<tr>
													<td width="134" align="middle"><span
														class="tahoma cw bold s30 2up"><i>6</i>&nbsp;</span><img
														border="0" align="absMiddle"
														src="http://image.lottetours.com/img04/wimages/b2c/goods/img_schDay.gif"
														width="32" height="20"
														style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;"></td>
													<td class="cw dotum h140" width="520"><br></td>
													<td valign="bottom" width="68"></td>
												</tr>
												<tr>
													<td height="4" colspan="3"></td>
												</tr>
											</tbody>
										</table></td>
								</tr>
								<tr>
									<td class="2gl2 2gr2"><table border="0" cellspacing="0"
											cellpadding="0" width="100%">
											<colgroup>
												<col valign="top" align="middle" width="134"
													style="padding: 14px 0px;">
												<col width="588" style="padding: 12px 12px 10px;">
											</colgroup>
											<tbody>
												<tr>
													<td><a class="ctit5 dotum s16 bold"
														style="margin: 0px; padding: 0px; word-break: break-all;">인천</a></td>
													<td class="h150 cg1 dotum 1gl2"><p
															style="word-break: break-all;">&nbsp;</p>
														<p style="word-break: break-all;">
															<img id="DAM_0201200811222899800181193" border="0"
																src="http://ltassc.lottetour.com/LAMS_CONTENTS/REV/2008/11/22/IMG/SRC/0201200811222899800181193012451.GIF"
																height="25"
																style="margin: 0px; padding: 0px; word-break: break-all; border: 0px; vertical-align: top;">아시아나항공
															: OZ748 HKT(02:00: 푸켓 출발)-ICN(09:45 인천국제공항 도착)<br>◈
															운항소요시간 ◈ 【약 6시간 15여분 소요】<br>
															<br>인천 도착, 감사합니다.
														</p></td>
												</tr>
											</tbody>
										</table></td>
								</tr>
							</tbody>
						</table></td>
				</tr>
			</tbody>
		</table>
		<p
			style="word-break: break-all; color: rgb(59, 59, 59); font-family: dotum;">&nbsp;</p>
		<p
			style="word-break: break-all; color: rgb(59, 59, 59); font-family: dotum;">&nbsp;</p>
		<p
			style="word-break: break-all; color: rgb(59, 59, 59); font-family: dotum;">&nbsp;</p>
		<p
			style="word-break: break-all; color: rgb(59, 59, 59); font-family: dotum;">&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		</tr>
		</tbody>
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
						<img src="../imgfuc/fucat4.jpg" width="235" height="100" />
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
						onclick="javascript:location.href='honeyPackage.we?nation=eu'"
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