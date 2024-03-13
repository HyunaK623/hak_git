<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="sessionTest.CallNotSeClass, sessionTest.CallSeClass" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>setCaseB_3</title>
</head>
<body>
	<%
	String str = "String";
	
	CallNotSeClass callB = new CallNotSeClass();
	CallSeClass callC = new CallSeClass();
	
	callB.setCallNotSeClass("JEUS8.0", "Not Serializable Class");
	callC.setCallSeClass("JEUS8.0", "Serializable Class");
	
	session.setAttribute("a", str);
	session.setAttribute("b", callB);
	session.setAttribute("c", callC);
	%>

</body>
</html>