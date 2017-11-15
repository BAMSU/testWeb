<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<style>
	p{
	 font-size: 10px;
	}
	.left {
	  float: left;
	  width: 10%;
	  height: 100px;
	}
	.center {
	  float: center;
	  width: 80%;
	}
	.right{
	  float: right;
	  width: 10%;
	  font-size: 10px;
	  
	}
</style>
<script>
var insa={insa:['서로가 마주보며 다져온 사랑을\r\n이제 함께 한곳을 바라보며 걸어갈 수 있는\r\n큰 사랑으로 키우고자 합니다. \r\n저희 두 사람이 사랑의 이름으로 지켜나갈 수 있게\r\n앞날을 축복해 주시면 감사하겠습니다.' , '함께 하는 사랑의 그 의미는 \r\n이 세상의 어떤 말로도 표현할 수 없는 \r\n아름다운 것입니다. \r\n저희의 사랑을 함께 축복하여 주시면 \r\n큰 힘으로 삼겠습니다.' , '흔들림 없는 믿음의 촛불을 \r\n사랑으로 밝히며 이제 저희 두 사람은 \r\n사랑의 결실을 이루려 합니다. \r\n늘 푸르른 마음과 깊은 정성으로 \r\n행복의 문을 들어서는 저희들 가까이 \r\n오셔서 축복해 주시기 바랍니다.', '아름다운 꽃에는 가꾸어 온 \r\n사람의 노고가 깃들어 있듯이 \r\n인생의 기쁜 순간에 있어 \r\n도와주신 분들에 대한 고마움을 느낍니다. \r\n소중한 맹세의 시간을 갖고자 합니다. \r\n새로이 함께하는 저희 두 사람의 모습을 \r\n부디 오셔서 지켜봐 주시기 바랍니다.', '저희들의 오늘이 있기까지 \r\n보내주신 따뜻한 사랑과 깊은 관심에 진심으로 감사하오며, \r\n저희 두 사람은 여러분의 축복을 받으며 \r\n진실한 가약을 맺고자 합니다. \r\n부디 참석하시어 기쁨의 자리를 축복으로 \r\n더욱 빛내 주시길 바라옵니다.', '너무 험하게 키우면 거칠까봐 \r\n노심초사 하루도 편할 날 없이 정성들였습니다. \r\n하지만 막상 혼인에 예를 갖춰 \r\n어른들 세상에 내보내려니 새삼 두려움이 앞섭니다. \r\n살펴주시고 가르쳐 주시고 \r\n가야 할 먼길 훤히 밝혀 주옵소서.', '평소 베풀어 주신 은혜에 감사 드리오며, \r\n이 좋은 계절에 댁내 평안하심을 기원합니다. \r\n아뢰올 말씀은 다름이 아니옵고 \r\n여러 어르신들과 친지들을 모시고 \r\n결혼식을 올리게 되었습니다. \r\n바쁘시더라도 부디 참석하시어 \r\n젊은 두 사람을 격려하여 주시고 \r\n축복하여 주시기를 앙망하옵니다.', '새로이 시작하는 \r\n작은 사랑이 보다 깊고 향 짙게 꽃피려 합니다. \r\n저희의 뜻깊은 백년의 약속의 날 \r\n함께 하셔서 축복해 주십시오. \r\n사랑으로 가득 채워 즐거움은 나누고 어려움은 이겨내는 \r\n함께 나아가는 삶을 꾸리겠습니다.', '언제나 포근하고 따사로운 정으로 \r\n감싸주시는 여러 어른신들의 은혜에 감사드립니다. \r\n이들 두 사람이 새 생활을 만들고자 \r\n여기 결혼식을 올리게 되었음을 \r\n삼가 아뢰오니 축복해 주시기 바랍니다.', '어제의 너와 내가 오늘 우리가 되어 \r\n저희 두 사람 이제 한길을 같이 걷고자 합니다. \r\n저희 첫 디딤에 부디 오시어 \r\n따뜻한 사랑으로 축복해 주십시오. \r\n보다 힘찬 내디딤이 될 것입니다.', '지금까지 서로 마주보며 쌓아온 사랑을  \r\n함께 한곳을 보며 걸어가는  \r\n더욱 큰 사랑으로 키우고자 합니다. \r\n귀한 걸음 하시어  \r\n새 출발을 하는 저희 두사람의  \r\n앞날을 축복해주시면 더욱 감사하겠습니다. ', '기쁨과 행복이 가득한 날  \r\n하나의 길이 되어 \r\n하나의 보금자리를 이루려고 합니다. \r\n지금까지 보내주신 따뜻한 사랑과 믿음으로 \r\n축복해주십시오', '젊은 남녀가 만나 \r\n쌈박한 결혼 이야기를  \r\n만들어 나가보려고 합니다. \r\n그 이야기를 시작하는 제 1화 \r\n여러분들 꼭 봐주시길 바래요! \r\n저희 두사람의 서약의 날 ! ', '소중한 분들을 모시고 \r\n첫발을 내딛어보려 합니다. \r\n서로 이해하고 배려하고 지혜롭게 살겠습니다. \r\n부디 걸음하시어 저희의 첫걸음  \r\n축복해주시고 지켜보아 주시면  \r\n더없이 기쁨으로 소중히 간직하겠습니다.']};


function sel(i){
	opener.setChildValue(insa.insa[i]);
	window.close();
}
	
</script>
</head>
<body>
<div>
	<div class="left">
		1
	</div>
	
	<div class="center">
	<p>서로가 마주보며 다져온 사랑을 <br>
	이제 함께 한곳을 바라보며 걸어갈 수 있는 <br>
	큰 사랑으로 키우고자 합니다. <br>
	저희 두 사람이 사랑의 이름으로 지켜나갈 수 있게 <br>
	앞날을 축복해 주시면 감사하겠습니다.<p>
	</div>
	
	<div = class="right">
		<input type="button" value="선택" onclick="sel(0)">
	</div>
</div>
<br><hr>
<div>
	<div class="left">
		2
	</div>
	
	<div class="center">
	<p>
	함께 하는 사랑의 그 의미는 <br>
	이 세상의 어떤 말로도 표현할 수 없는 <br>
	아름다운 것입니다. <br>
	저희의 사랑을 함께 축복하여 주시면 <br>
	큰 힘으로 삼겠습니다.
	</p>

	</div>
	
	<div = class="right">
	<input type="button" value="선택" name=1 onclick="sel(1)">
	</div>
</div>
<br><hr>
<div>
	<div class="left">
		3
	</div>
	
	<div class="center">
	<p>
흔들림 없는 믿음의 촛불을 <br>
사랑으로 밝히며 이제 저희 두 사람은 <br>
사랑의 결실을 이루려 합니다. <br>
늘 푸르른 마음과 깊은 정성으로 <br>
행복의 문을 들어서는 저희들 가까이 <br>
오셔서 축복해 주시기 바랍니다.
</p>
	</div>
	
	<div = class="right">
	<input type="button" value="선택" name=2 onclick="sel(2)">
	</div>
</div>
<br><hr>
<div>
	<div class="left">
		4
		
	</div>
	
	<div class="center">
	<p>
아름다운 꽃에는 가꾸어 온 <br>
사람의 노고가 깃들어 있듯이 <br>
인생의 기쁜 순간에 있어 <br>
도와주신 분들에 대한 고마움을 느낍니다. <br>
소중한 맹세의 시간을 갖고자 합니다. <br>
새로이 함께하는 저희 두 사람의 모습을 <br>
부디 오셔서 지켜봐 주시기 바랍니다.
</p>

	</div>
	
	<div = class="right">
	<input type="button" value="선택" name=3 onclick="sel(3)">
	</div>
</div>
<br><hr>
<div>
	<div class="left">
		5
		
	</div>
	
	<div class="center">
	<p>
저희들의 오늘이 있기까지 <br>
보내주신 따뜻한 사랑과 깊은 관심에 진심으로 감사하오며, <br>
저희 두 사람은 여러분의 축복을 받으며 <br>
진실한 가약을 맺고자 합니다. <br>
부디 참석하시어 기쁨의 자리를 축복으로 <br>
더욱 빛내 주시길 바라옵니다.
</p>
	</div>
	
	<div = class="right">
	<input type="button" value="선택" name=4 onclick="sel(4)">
	</div>
</div>
<br><hr>
<div>
	<div class="left">
		6
		
	</div>
	
	<div class="center">
	<p>

너무 험하게 키우면 거칠까봐 <br>
노심초사 하루도 편할 날 없이 정성들였습니다. <br>
하지만 막상 혼인에 예를 갖춰 <br>
어른들 세상에 내보내려니 새삼 두려움이 앞섭니다. <br>
살펴주시고 가르쳐 주시고 가야 할 먼길 
훤히 밝혀 주옵소서.
</p>

	</div>
	
	<div = class="right">
	<input type="button" value="선택" name=5 onclick="sel(5)">
	</div>
</div>
<br><hr>
<div>
	<div class="left">
		7
		
	</div>
	
	<div class="center">
	<p>
	평소 베풀어 주신 은혜에 감사 드리오며, <br>
	이 좋은 계절에 댁내 평안하심을 기원합니다. <br>
	아뢰올 말씀은 다름이 아니옵고 <br>
	여러 어르신들과 친지들을 모시고 <br>
	결혼식을 올리게 되었습니다. <br>
	바쁘시더라도 부디 참석하시어 <br>
	젊은 두 사람을 격려하여 주시고 <br>
	축복하여 주시기를 앙망하옵니다.
	</p>

	</div>
	
	<div = class="right">
	<input type="button" value="선택" name=6 onclick="sel(6)">
	</div>
</div>
<br><hr>

<div>
	<div class="left">
		8
	</div>
	
	<div class="center">
	<p>
	<p>
새로이 시작하는 <br>
작은 사랑이 보다 깊고 향 짙게 꽃피려 합니다. <br>
저희의 뜻깊은 백년의 약속의 날 <br>
함께 하셔서 축복해 주십시오. <br>
사랑으로 가득 채워 즐거움은 나누고 어려움은 이겨내는 <br>
함께 나아가는 삶을 꾸리겠습니다.
</p>

	</p>

	</div>
	
	<div = class="right">
	<input type="button" value="선택" name=7 onclick="sel(7)">
	</div>
</div>
<br><hr>

<div>
	<div class="left">
		9
		
	</div>
	
	<div class="center">
	<p>
언제나 포근하고 따사로운 정으로 <br>
감싸주시는 여러 어른신들의 은혜에 감사드립니다. <br>
이들 두 사람이 새 생활을 만들고자 <br>
여기 결혼식을 올리게 되었음을 <br>
삼가 아뢰오니 축복해 주시기 바랍니다.
</p>

	</div>
	
	<div = class="right">
	<input type="button" value="선택" name=8 onclick="sel(8)">
	</div>
</div>
<br><hr>

<div>
	<div class="left">
		10
		
	</div>
	
	<div class="center">
	<p>
어제의 너와 내가 오늘 우리가 되어 <br>
저희 두 사람 이제 한길을 같이 걷고자 합니다. <br>
저희 첫 디딤에 부디 오시어 <br>
따뜻한 사랑으로 축복해 주십시오. <br>
보다 힘찬 내디딤이 될 것입니다.
</p>

	</div>
	
	<div = class="right">
	<input type="button" value="선택" name=9 onclick="sel(9)">
	</div>
</div>
<br><hr>


<div>
	<div class="left">
		11
		
	</div>
	
	<div class="center">
	
<p>
지금까지 서로 마주보며 쌓아온 사랑을  <br>
함께 한곳을 보며 걸어가는  <br>
더욱 큰 사랑으로 키우고자 합니다. <br>
귀한 걸음 하시어  <br>
새 출발을 하는 저희 두사람의  <br>
앞날을 축복해주시면 더욱 감사하겠습니다. 
</p>
	</div>
	
	<div = class="right">
	<input type="button" value="선택" name=10 onclick="sel(10)">
	</div>
</div>
<br><hr>

<div>
	<div class="left">
		12
		
	</div>
	
	<div class="center">
	<p>
기쁨과 행복이 가득한 날  <br>
하나의 길이 되어  <br>
하나의 보금자리를 이루려고 합니다. <br>
지금까지 보내주신 따뜻한 사랑과 믿음으로  <br>
축복해주십시오
</p>

	</div>
	
	<div = class="right">
	<input type="button" value="선택" name=11 onclick="sel(11)">
	</div>
</div>
<br><hr>

<div>
	<div class="left">
		13
	</div>
	<div class="center">
	<p>
젊은 남녀가 만나  <br>
쌈박한 결혼 이야기를  <br>
만들어 나가보려고 합니다. <br>
그 이야기를 시작하는 제 1화 <br>
여러분들 꼭 봐주시길 바래요! <br>
저희 두사람의 서약의 날 ! 
</p>
	</div>
	<div = class="right">
	<input type="button" value="선택" name=12 onclick="sel(12)">
	</div>
</div>
<br><hr>
<div>
	<div class="left">
		14
	</div>
	<div class="center">
<p>
소중한 분들을 모시고  <br>
첫발을 내딛어보려 합니다. <br>
서로 이해하고 배려하고 지혜롭게 살겠습니다. <br>
부디 걸음하시어 저희의 첫걸음  <br>
축복해주시고 지켜보아 주시면  <br>
더없이 기쁨으로 소중히 간직하겠습니다. 
</p>
	</div>
	<div = class="right">
	<input type="button" value="선택" name=13 onclick="sel(13)">
	</div>
</div>
<br><hr>

</body>
</html>