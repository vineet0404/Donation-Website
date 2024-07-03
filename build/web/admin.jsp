<%-- 
    Document   : admin
    Created on : 9 Apr, 2021, 9:59:35 PM
    Author     : kunal
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login page</title>
<link rel="stylesheet" href="index.css" type="text/css">
</head>
<body>

<%@ include file="header.jsp" %>
<%@ include file="logout.jsp" %>


 <form class= "one" action="Admin.java" method="post" >
  <div class="container">
    <label><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="name" required>

    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>

    <div class="clearfix">
      <button type="button"  class="cancelbtn">Cancel</button>
      <button type="submit" class="signupbtn">Login</button>
    </div>
  </div>
</form>
<%@ include file="footer.jsp" %>
</body>
</html>