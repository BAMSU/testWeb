<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/httpRequest.js"></script>
<script>
	function show() {
		sendRequest('memberListView.do', null, showResult, 'GET');
	}
	function showResult() {
		if (XHR.readyState == 4) {
			if (XHR.status == 200) {
				var data = eval('(' + (XHR.responseText) + ')');
				
				var memberListboxTag=document.getElementById('memberListbox');
				
				
				for(var i=0;i<data.member.length;i++) {
					var member=data.member[i];
					var str = '번호:'+member.idx+' 아이디:'+member.id+' 이름:'+member.name + ' 가입날짜:' + member.joindate + '\n';
					var newDiv=document.createElement('div');
					newDiv.innerHTML=str;
					newDiv.setAttribute('style','border:1px solid gray;width:400px;');
					memberListboxTag.appendChild(newDiv);
				}
			}
		}
	}
</script>
</head>
<body>
	<h2>회원정보 확인하기</h2>
	<input type="button" value="가입된 회원목록" onclick="show()">
	<div id="memberListbox"></div>
</body>
</html>