<%-- 
    Document   : aus
    Created on : 9 Apr, 2021, 9:53:24 PM
    Author     : kunal
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="index.css" type="text/css">
<title>About us</title>
</head>
<style>
.about-section{
background: url(lap1.jpg) no-repeat left;
background-size: 55%;
background-color: #fdfdfd;
overflow: hidden;
padding: 80px ;
}

.inner-container{
width: 55%;
float: right;
background-color: #fdfdfd;
padding: 80px;
}
.h4{
font-size: 25px;
color: #545454;
line-height: 50px;
text-align: center;
margin-bottom: 40px;
font-family: poppins;
}
</style>
<body>
<%@ include file="header.jsp" %>
<%@ include file="logout.jsp" %>
<div class="about-section">
    <div class="inner-container">
     <pre><h2>Food Logistics is an excess food collection and donation. Place 
a request to pick up the food. The food will be donated to the people 
who are in need. Alternatively, people can also give their money, which 
will be used to buy food for the needy people.</h2></pre>
</div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>
