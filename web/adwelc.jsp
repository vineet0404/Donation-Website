<%-- 
    Document   : welcome
    Created on : 11 Apr, 2021, 10:36:06 PM
    Author     : kunal
--%>

<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Welcome</title>
<link rel="stylesheet" href="index.css" type="text/css">
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="logout.jsp" %>
<p class="one">
Welcome ${name}

<p class="two">Select the report you want to run:</p>


<form class= "two" action="reporting.java" method="get" >
<button class="button button2">User data</button>
</form>

<form class= "two" action="reporting.java" method="post" >
<button class="button button2">Money data</button>
</form>
<%@ include file="footer.jsp" %>


</body>
</html>