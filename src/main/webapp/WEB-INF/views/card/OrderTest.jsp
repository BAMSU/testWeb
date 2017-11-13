<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Print</title>
<script type="text/javascript" src="js/jquery-2.2.4.min.js"></script>
<script type="text/javascript" src="js/html2canvas.js"></script>
<script>
    function capture() {
        html2canvas($("#canv"), {
              onrendered: function(canvas) {
                document.body.appendChild(canvas);
                alert(canvas.toDataURL("image/png"));
                
                $("#imgSrc").val(canvas.toDataURL("image/png"));
                $.ajax({
	                type : "post",
	                data : $("form").serialize(),
                    url:   "imgsave2.do",
                    error: function(a, b, c){ 
                        alert("fail!!");
                    },
                    success: function (data) {
                        try{
                            alert("����?");
                        }catch(e){                
                            alert('server Error!!');
                        }
                    }
                });
              }
        });
    }
</script>
</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0">
<form>
   <input type="hidden" name="imgSrc" id="imgSrc" />
    
    <div id="canv" style="color: blue; background: white;">
    <input type="text" id="test">
        ���Ⱑ �̹����� �ٲ�� �����Դϴ�.
        �� �������� table �� ��Ÿ �ٸ� �ױ׵�� ü���� �� �ֽ��ϴ�.
    </div>
    <a onclick="capture()">��</a>
</form>
</body>
