<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>Testing websockets</title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
    <fieldset>
    
        <textarea id="messageWindow" rows="10" cols="50" readonly="true" style="background-color: #F8B3AE;height:400px;overflow:auto"></textarea>
        <br/>
        <input class="col-sm-2 col-form-label text-danger" id="inputMessage" type="text" style="height:45px;width: 300px;"/>
        <input class="btn btn-primary btn-lg gradient"type="submit" value="전 송" onclick="send()"/>
    </fieldset>
</body>
    <script type="text/javascript">
        var textarea = document.getElementById("messageWindow");
        var webSocket = new WebSocket('ws://192.168.20.175:9090/finalproject/broadcasting');
        var inputMessage = document.getElementById('inputMessage');
    webSocket.onerror = function(event) {
      onError(event)
     };
    webSocket.onopen = function(event) {

      onOpen(event)
     
    };
    webSocket.onmessage = function(event) {
      onMessage(event)
    };
 
    
    function onMessage(event) {
        textarea.value +=${sname} + event.data + "\n";  
        test();
    }
    function onOpen(event) {
        textarea.value += "사랑이 머물다 채팅방에 입장 했습니다.\n";
    }
    function onError(event) {
      alert(event.data);
    }
    function send() {
        textarea.value += ${sname} + inputMessage.value + "\n";
        webSocket.send(inputMessage.value);
        inputMessage.value = "";
        test();
    }
    
    // 스크롤 자동적으로 내리기
    function test(){ 
    	var obj = document.getElementById('messageWindow'); 
    	obj.scrollTop = obj.scrollHeight; 
    	
    	} 
    
    // 앤터 시 메세지 전송
    $('input').keyup(function(e) {
        if (e.keyCode == 13){ 
        send(); 
       	test();		
        }
       });



  </script>
  
</html>