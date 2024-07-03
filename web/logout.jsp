<%-- 
    Document   : logout
    Created on : 13 Apr, 2021, 7:31:00 PM
    Author     : Vivek Singh
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logout button page</title>
</head>
<body>

<% if (session.getAttribute("name") == null) { %>

<% } else {%>
 <div align="right">
Welcome ${name}<br>
<form class="one" action="logout.jsp" method="post">
<input type="hidden"  name="name" > 
<button class=" button button2"> Logout </button>
</form>
</div>
<% } %>

</body>
</html>
