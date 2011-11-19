<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type='text/javascript' src='dwr/engine.js'></script>
<script type='text/javascript' src='dwr/interface/Calculator.js'></script>
<script type='text/javascript' src='dwr/util.js'></script>
<script type='text/javascript'> 
// <![CDATA[
function sendNumber()
{
    var number = DWRUtil.getValue("number");
    DWRUtil.setValue("result", "");
    Calculator.Square(gotResult, number);
}

function gotResult(number)
{
    DWRUtil.setValue("result", number);
}
// ]]> 
</script>

<p>
  Введите число:
  <input id="number"/>
  <input type="button" value="Возвести в квадрат"
      onclick="sendNumber()"/>
</p>
<p>Ответ: <span id="result"></span></p>
</body>
</html>