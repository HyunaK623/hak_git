<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="sessionTest.Serial, sessionTest.NotSerial, sessionTest.CallNotSeClass, 
				sessionTest.CallSeClass, sessionTest.CallNotSeClass, sessionTest.CallSeClass" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getCaseB_3</title>
</head>
<body>
	<%
	out.println("Attribute a (String): " + session.getAttribute("a") + "<br><p>");
	CallNotSeClass callB = (CallNotSeClass) session.getAttribute("b");
	CallSeClass callC = (CallSeClass) session.getAttribute("c");
	
	if( callB != null ){
		NotSerial notse = callB.getCallNotSeClass();
		out.println("Attribute b (Not Serial Class): " + notse.getVersion() + ", "
		+ notse.getMsg() + "<br><p>");
	} else { out.println("Attribute b (Not Serial Class): null<br><p>"); }
	
	if( callC != null ){
		Serial se = callC.getCallSeClass();
		out.println("Attribute c (Serial Class): " + se.getVersion() + ", " + se.getMsg()
		+ "<br><p>");
	} else { out.println("Attribute c (Serial Class): null<br><p>"); }
	%>

</body>
</html>