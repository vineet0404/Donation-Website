<%-- 
    Document   : thanks
    Created on : 13 Apr, 2021, 7:37:31 PM
    Author     : Vivek Singh
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="index.css" type="text/css">
<title>Thanks for your donation</title>
<%@ include file="header.jsp" %>
<%@ include file="logout.jsp" %>
</head>
<body>
<br/>
<br/>
<p class="two">Thanks for your donation. A confirmation email will be sent to your registered email address.<br/> <br/>
The food will be picked up from: <br> <br> <br/> ${line1} <br/> ${line2}, ${city}, ${state } , ${zipcode}, <br> ${country} </p>
</body>
</html>
