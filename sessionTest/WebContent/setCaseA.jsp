<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="sessionTest.Serial, sessionTest.NotSerial" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>setCaseA</title>
</head>
<body>
	<%
	out.println("CaseA Session Get" + "<br><p>");
	out.println("Session ID : " + session.getId() + "<br><p>");
	//out.println(str + notse + se + "<br><p>");
	
	
	String str = "String";
	Serial se = new Serial();
	NotSerial notse = new NotSerial();
	
	notse.setVersion("JEUS8.0");
	notse.setMsg("Not Serializable Class");
	se.setVersion("JEUS8.0");
	se.setMsg("Serializable Class");
	
	session.setAttribute("a", str);
	session.setAttribute("b", notse);
	session.setAttribute("c", se);
	%>

</body>
</html>