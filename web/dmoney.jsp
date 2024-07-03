<%-- 
    Document   : donatem
    Created on : 9 Apr, 2021, 10:01:21 PM
    Author     : kunal
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Donate Money</title>

<link rel="stylesheet" href="style.css" type="text/css">
<link rel="stylesheet" href="index.css" type="text/css">
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="logout.jsp" %>
  <!-- heading starts here -->
<hgroup class="heading">
<h1 class="major">Donation Form </h1>
</hgroup> 

<form class="checkout" action="Final2.java" method="post">
    <div class="checkout-header">
      <h1 class="checkout-title">
        Donate
        <span class="checkout-price"> $${amount}</span>
      </h1>
    </div>
    <p>
      <input type="text" class="checkout-input checkout-card" placeholder="4111 1111 1111 1111" required>
      <input type="text" class="checkout-input checkout-cvc" placeholder="CVC" required>
    </p>
    <p>
		<input type="text" class="checkout-input checkout-exp" placeholder="MM" autofocus required>
      <input type="text" class="checkout-input checkout-exp" placeholder="YY" required>
      
    </p>
    <p>
      <input type="submit" value="Donate" class="checkout-btn">
    </p>
  </form>

</body>
</html>