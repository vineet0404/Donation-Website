<%-- 
    Document   : login
    Created on : 12 Apr, 2021, 9:03:12 AM
    Author     : Vivek Singh
--%>
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login page</title>
<link rel="stylesheet" href="index.css" type="text/css">
</head>
<body>
<%@ include file="header.jsp" %>

<p class="four"> ${loginError} </p>

 <form class= "one" action="login.jsp" method="post" >
  <div class="container">
    <label><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="name" required>

    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>

    <div class="clearfix">
      <button type="reset"  class="cancelbtn">Cancel</button>
      <button type="submit" class="signupbtn">Login</button>
    </div>
  </div>
  </form>
  	<form action="signup.jsp" method="post">
	<input type="hidden"  name="signup">
	<button type="submit" class="troublebutton">Signup</button>
	</form>


<%@ include file="footer.jsp" %>
</body>
</html>
    
