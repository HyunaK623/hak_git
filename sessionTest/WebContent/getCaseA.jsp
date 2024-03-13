<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="sessionTest.Serial, sessionTest.NotSerial" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getCaseA</title>
</head>
<body>
	<%
	out.println("CaseA Session Get" + "<br><p>");
	out.println("Session ID : " + session.getId() + "<br><p>");
	
	out.println("Attribute a (String): " + session.getAttribute("a") + "<br><p>");
	NotSerial notse = (NotSerial) session.getAttribute("b");
	Serial se = (Serial) session.getAttribute("c");
	
	if( notse != null ){
	out.println("Attribute b (not serial class): " + notse.getVersion() + ", "
	+ notse.getMsg() + "<br><p>");
	} else {
	out.println("Attribute b (not serial clas s): null<br><p>"); }
	
	if( se != null ){
	out.println("Attribute c (serial class): " + se.getVersion() + ", " + se.getMsg()
	+ "<br><p>");
	} else {
	out.println("Attribute c (serial class): null<br><p>");	}
	%>
</body>
</html>