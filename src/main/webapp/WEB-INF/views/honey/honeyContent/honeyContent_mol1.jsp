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
#t_div{
	margin: 0px auto;
	padding-left: 170px;
	padding-right: 170px;
	}
table {
	width: 800px;margin: 0px auto;
}

#box {
	width: 100%;
}
</style>
</head>
<body>
<%@include file="/header.jsp" %>
	<section>
		<table border="1">
			<tr>
				<th colspan="4"><img style="width: 100%;"
					src="honeyimg/imgmodiv/moldiv1.JPG"></th>
			</tr>
			<tr>
				<td colspan="3" align="center"><font
					style="font-size: xx-large;"><strong>☆콘스탄스 무푸시 /
							몰디브 <br> 4박 5일 by 트레비아 ☆
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
				<td width="230" style="text-align: center;">1,550,000원 ~
					2,600,000원</td>
			</tr>
			<tr>
				<th>국가</th>
				<td style="text-align: center;">몰디브</td>
				<th>여행지역</th>
				<td style="text-align: center;">몰디브</td>
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
				<td><img src="../imgmodiv/moldiv4.jpg" style="width: 100%;"
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
											style="COLOR: #008000"><STRONG>◆ 몰디브 콘스탄스 무푸시
													◆</STRONG></SPAN><BR> <SPAN style="COLOR: #000000"> <BR>HOLIDAY
												INN PARRAMATTA 동급/ Mercure gold coast reso
										</SPAN> <BR> <BR>몰디브 럭셔리 리조트인 할라밸리를 성공적으로 운영하고 있는 Constance
											Hotel Group의 몰디브 두 번째 리조트로 전세계 최고의 다이빙 포인트 인근에 위치한 입지를 자랑합니다.
											세련되면서도 자연친화적인 디럭스 리조트의 모습과 콘스탄스 리조트의 우아하고 높은 수준의 서비스를 경험할 수
											있습니다.</span>
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
							리조트 숙박,<span style="color: rgb(255, 108, 0);"> </span><span
								style="color: rgb(255, 0, 0);"><b><span
									style="font-size: 10pt; color: rgb(255, 108, 0);">All
										Inclusive</span></b></span>, 리조트 왕복이동(수상비행기), 서비스 차지 및 GST[Good&amp;Service
							Tax], 허니문 특전, All Inclusive 내역
						<div>
							<span style="color: rgb(255, 0, 0);"><b>※3박이상 숙박시 : 스냅
									20장 (30분 촬영, USB 에 저장 후 전달) / 10월 31일 숙박까지</b></span>
						</div>
						<div>
							<span style="color: rgb(255, 0, 0);"><b><br></b></span>
						</div>
						<div>
							<p>
								<span style="font-size: 11pt;"><b><span
										style="color: rgb(255, 0, 0);">허니문 특전</span></span>
							</P>
						</div> </font>

				</td>

				<td
					style="line-height: 24px; padding: 12px 10px 12px 10px; width: 50%;">
					<font face="돋움체"><font color="#0021b0" size="2">▣ 여행자
							보험, 유료 익스커션 및 액티비티 활동, 기타 개인경비 </font></font>&nbsp;
				</td>
			</tr>
		</table>
		<br>

		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tbody>
				<tr>
					<td height="27" align="left" bgcolor="#c2d3e1" colspan="2"><p>1일차&nbsp;</p>
						<p>&nbsp;</p>
						<p>
							- 리조트내 무동력 해양스포츠 즐기기<br>- 유료 액티피비 프로그램 즐기기&nbsp;
						</p>
						<p>&nbsp;</p>
						<p>리조트 체크인 및 자유시간&nbsp;</p>
						<p>&nbsp;</p>
						<p>2일차&nbsp;</p>
						<p>
							﻿&nbsp;◈ 각 리조트에서 자유시간&nbsp;<br> <br>- 리조트내 무동력 해양스포츠
							즐기기<br>- 유료 액티피비 프로그램 즐기기&nbsp;
						</p>
						<p>&nbsp;</p>
						<p>
							<span style="color: rgb(255, 0, 0);"><font color="#000000">&nbsp;</font></span>
						</p>
						<p>
							<span style="color: rgb(255, 0, 0);"><font color="#000000">3</font></span><span
								style="color: rgb(255, 0, 0);"><font color="#000000">일차</font></span>&nbsp;<span
								style="color: rgb(255, 0, 0);">﻿</span>&nbsp;
						</p>
						<p>
							◈ 각 리조트에서 자유시간&nbsp;<br>- 리조트내 무동력 해양스포츠 즐기기<br>- 유료
							액티피비 프로그램 즐기기&nbsp;
						</p>
						<p>&nbsp;</p>
						<p>&nbsp;</p>
						<p>&nbsp;</p>
						<p>4일차&nbsp;</p>
						<p>&nbsp;</p>
						<p>&nbsp;</p>
						<p>
							◈ 각 리조트에서 자유시간&nbsp;<br> <br>- 리조트내 무동력 해양스포츠 즐기기<br>-
							유료 액티피비 프로그램 즐기기
						</p>&nbsp;
						<p>&nbsp;</p>
						<p>&nbsp;</p>
						<p>5일차</p>
						<p>&nbsp;</p>
						<p>
							-&nbsp;체크아웃전날 고객님 객실로 체크아웃시간과 이동수단의 출발시간이 적힌 편지를 넣어줍니다.&nbsp;<br>&nbsp;체크아웃
							시간에 맞춰 짐을 객실앞에 놔두시면 직원이 챙겨드립니다.&nbsp;<br> <br>- 리셉션에서
							체크아웃수속을 해주시기 바랍니다.<br>&nbsp; 리조트내 유료서비스를 이용하신 경우 사용내역이 맞는지
							확인후 결제하시면 됩니다.&nbsp;<br>&nbsp; 영수증의 청구내역을 꼼꼼히 확인해주세요.<strong>&nbsp;서명과
								동시에 청구내역을 인정한 것으로 간주되어 변경이 어렵습니다.&nbsp;<br> <br>
							</strong>체크아웃후 이동수단을 이용하여 공항으로 이동.&nbsp;<br>몰디브 말레공항 출발
						</p>&nbsp;
						<p>&nbsp;</p>
						<p>&nbsp;</p>
						<p>&nbsp;</p>
						<p>&nbsp;</p>
						<p>
							<span style="color: rgb(255, 0, 0);">◈</span>&nbsp;<span
								style="color: rgb(255, 0, 0);">안전을 위하여 리조트의 안내사항 및 안전수칙을
								준수하여&nbsp; 안전사고에 주의하시기 바랍니다.&nbsp;</span><br> <span
								style="color: rgb(255, 0, 0);">&nbsp;&nbsp;&nbsp; 특히 리조트
								익스커션 참여시 주의사항을 꼭 숙지하신후 이용하여 주시기 바라며,&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;이용자
								본인의 과실 및 본인의 건강상태로 인하여 발생한 안전사고에 대해서는 이용자 본인의 책임임을 알려드립니다. ◈
							</span>
						</p>&nbsp;
						<p>
							<span style="color: rgb(255, 0, 0);">** 몰디브지역은 에어텔지역으로
								상기일정은 추천일정입니다. **﻿</span>﻿﻿﻿﻿﻿
						</p></td>
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
				<td width="235"><a href="countryContent.we?country=mol">
						<img src="honeyimg/imgmodiv/moldiv3.jpg" width="235" height="100" />
				</a></td>
				<td width="170">
					<div
						onclick="javascript:location.href='countryContent.we?country=mol'"
						style="cursor: pointer;">
						<font size="5" color="#F29661">몰디브<br></font> <font size="4">
							지역정보<br> 보러가기
						</font> <em> <img
							src="http://ifamily.co.kr/image/iFamily/product_service/rehoney_detail_arrow02_ico.png" />
						</em>

					</div>
				</td>
				<td width="235"><a href="honeyPackage.we?nation=moldive"> <img
						src="../imgmodiv/moldiv4.jpg" width="235" height="100" />
				</a></td>
				<td width="170">
					<div
						onclick="javascript:location.href='../honeyPackagelist_moldive.jsp'"
						style="cursor: pointer;">
						<font size="5" color="#F29661">몰디브 <br></font><font size="4">패키지<br>보러가기
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