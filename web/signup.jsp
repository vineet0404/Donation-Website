<%-- 
    Document   : signup
    Created on : 13 Apr, 2021, 7:36:28 PM
    Author     : Vivek Singh
--%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Signup page</title>
<link rel="stylesheet" href="index.css" type="text/css">
</head>
<body>
<%@ include file="header.jsp" %>

<p class="four">${duplicateEmail} </p>
 <form class= "two" action="signup.jsp" method="get" >
  <div class="container">
    <label><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="name" required>

    <label><b>Password</b></label>
   <input type="password" name="password" id="password" placeholder="Password" required>

    <label><b>Confirm Password</b></label>
    <input type="password" name="password" id="password" placeholder="Confirm Password" required>
    <input type="checkbox" checked="checked"> Remember me


    <div class="clearfix">
      <button type="reset"  class="cancelbtn">Cancel</button>
      <button type="submit" class="signupbtn">Sign Up</button>
    </div>
  </div>
</form>
<%@ include file="footer.jsp" %>
</body>
</html>
