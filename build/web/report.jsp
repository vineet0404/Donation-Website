<%-- 
    Document   : report
    Created on : 13 Apr, 2021, 7:34:41 PM
    Author     : Vivek Singh
--%>

<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reporting page</title>
<link rel="stylesheet" href="index.css" type="text/css">
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="logout.jsp" %>

<sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://tiger.ceonkd3lm0ub.us-east-2.rds.amazonaws.com:3306/userdb"
         user = "kashwath"  password = "tigerlion"/>
         
<sql:query dataSource="${snapshot}" var="result">
SELECT * from address;
</sql:query>

<table border="1" width="100%">
    <tr>
    	 <th>Date</th>
         <th>Name</th>
         <th>Number of people fed</th>
         <th>line1</th>
         <th>line2</th>
         <th>city</th>
         <th>state</th>
         <th>zipcode</th>
         <th>country</th>
    </tr>
 

<c:forEach var="row" items="${result.rows}">
    <tr>
    	 <td><c:out value="${row.dateinformation}"/></td>
         <td><c:out value="${row.name}"/></td>
         <td><c:out value="${row.noofpeople}"/></td>
         <td><c:out value="${row.line1}"/></td>
         <td><c:out value="${row.line2}"/></td>
         <td><c:out value="${row.city}"/></td>
         <td><c:out value="${row.state}"/></td>
         <td><c:out value="${row.zipcode}"/></td>
         <td><c:out value="${row.country}"/></td>
    </tr>
</c:forEach>
 </table>
 
 <%@ include file="footer.jsp" %>
</body>
</html>