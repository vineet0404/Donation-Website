<%-- 
    Document   : welcome
    Created on : 13 Apr, 2021, 7:41:20 PM
    Author     : Vivek Singh
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome page</title>
<link rel="stylesheet" href="index.css" type="text/css">
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="logout.jsp" %>
 

<p class="one">
Welcome <c:out value="${name}" />
</p>

<p>How do you want to donate today?</p>

<form class= "two" action="Frm.java" method="get" >
<button class="button button2">Food</button>
</form>

<form class= "two" action="Frm.java" method="post" >
<button class="button button2">Money</button>
</form>

<%@ include file="footer.jsp" %>
</body>
</html>