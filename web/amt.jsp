<%-- 
    Document   : amt
    Created on : 9 Apr, 2021, 10:14:40 PM
    Author     : kunal
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome page</title>
<link rel="stylesheet" href="index.css" type="text/css">
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="logout.jsp" %>

<form class= "two" action="Final1.java" method="get" >
<input type ="text" name="fullname" placeholder="Enter full name" required>
<input type ="text" name="amount" placeholder="Enter amount" required>
<button class="button button2">Confirm amount</button>
</form>


</body>
</html>
