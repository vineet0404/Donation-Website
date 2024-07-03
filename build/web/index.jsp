<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>To Do </title>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
        <style>
            * {
	margin: 0;
	padding: 0;
}
body {
	text-align: center;
}
.wrapper {
	width: 1170px;
	margin: 0 auto;
}
header {
	height: 100px;
	background: #556B2F;
	width: 100%;
	z-index: 10;
	position: fixed;
}
.logo {
	width: 30%;
	float: left;
	line-height: 100px;
}
.logo a {
	text-decoration: none;
	font-size: 30px;
	font-family: poppins;
	color: #fff;
	letter-spacing: 5px;
}
.nav
{
height: 20px;
width: 100%;			 
}

.nav ul
{
padding-left: 40%;
}

.nav ul li
{
list-style: none;
display:inline; 
padding: 5px 5px;
color: #fff;
font-family: poppins;
font-size: 20px;
letter-spacing: 2px;
line-height: 100px;
}
.nav ul li a
{
text-decoration: none;
color: #fff;

}
		
.dropdown {
position: relative;
display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #556B2F;
    min-width: 100px;
    z-index: 1;
}

.dropdown-content a {
    padding: 0x 18px;
    text-decoration: none;
    display: block;
    font-size: 15px;
    line-height: 50px;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color: #f1f1f1}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
    display: block;
}

.dropbtn{
	border:none;
	font-family: poppins;
	color: #fff;
	font-size: 16px;
	background: none;

}
.slider{
width: 100%;
height: 500px;
overflow: hidden;
}

.slide{
width: 500%;
overflow: hidden;
animation: slider 20s infinite;
}

.slide div{
width: 20%;
color: white;
font-size: 30px;
display: flex;
justify-content: center;
align-items: center;
float: left;
height: 500px;
text-transform: uppercase;
}

.slide1{
background:#e74c3c;
}
.slide2{
background:#3498db;
}
.slide3{
background:#2ecc71;
}

.content
{
padding-top: 20px;
height: 90px;
width:100%;
font-family: poppins;
font-size: 50px;
}

.hr_content
{
background-color: gray;
border:4px;
width: 100px;
height: 2px;
}
.section-1
{
float:left;
height:600px;
width: 50%; 
background-color:white;
font-family:poppins;
}
.section-2
{
float:right;
height:500px;
width: 50%; 
background: url(img.jpg);
background-size: cover;
background-position: center;
font-family: poppins;
}

.sec1
{
margin-top: 30px;
margin-left: 40px;
line-height: 35px;
}

.sec2
{
margin-top: 400px;
margin-left: 150px;
height: 60px;
width: 300.5px;
background: black;
font-weight: 600; 
}
		
.btn{
 
  height: 41px;
  width: 125px;
  background: #ae0000;
  color:#fff;
  border-radius: 10px;
  font-size: 15px;
  cursor: pointer;
  margin: 10px 5px;
  box-shadow: 0 .2rem .4rem #ae0000;
  opacity: .7;
  
}
 .btn:hover{
  opacity: .5;
}


@keyframes slider{
0%{
margin-left: 0;
}
20%{
margin-left: -100%;
}
40%{
margin-left: -100%;
}
60%{
margin-left: -200%;
}
80%{
margin-left: -200%;
}
100%{
margin-left: -200%;
}
}
        </style>
</head>
<body>
<header>
<div class="wrapper">
<div class="logo">
<a href="home.html">Food Logistics</a>
</div>
<div class="nav">
<ul>
<li><a href="home.html">Home</a></li>
<li><a href="aus.jsp">About Us</a></li>
<li><a href="food.jsp">Share Food</a></li>
<li><a href="dmoney.jsp">Donate Money</a></li>
<li><a href="login.jsp">Join Us</a></li>
<li><div class="dropdown" >
<button class="dropbtn">Login</button>
<div class="dropdown-content">
<a href="admin.jsp"> Admin</a>
<a href="signup.jsp">User</a>
</div>
</div>
</li>
</ul>
</div>

</div>
</header>
<div class="slider">
<div class="slide">
<div class="slide1">
<pre>Hunger is more than missing a meal</pre>
</div>

<div class="slide2">
<pre>Hunger is a crisis that has almost a billion
people in its grip</pre>
</div>

<div class="slide3">
<pre>Serve the hungry citizen</pre>
</div>

</div>
</div>

<div class="content">
			<center><p><span style="color: red">Who </span>Are We<hr class="hr_content"></p>
			</center>
		</div>
		<div class="section-1">
			<p class="sec1">
The Food Logistics is a volunteer based, zero-funds organization that works to get surplus food from restaurants and the community to serve less 
fortunate people.Our local chapters are run by friends and colleagues, who hope to create a difference in their own unique way. For example, 
restaurants in the neighbourhood Green Park, will contribute to the homeless of the locality, through volunteers who live in Green Park. Our 
"Logistics" are largely students and young working professionals ? everyone does this in their free time. The lesser fortunate sections of society 
we serve include homeless families, orphanages, patients from public hospitals, and old age homes.</p>
<center>
<a href="register.html"><button class="btn">Register</button></a>
<a href="register.html"><button class="btn">Login</button></a>
</center>
</div>

<div class="section-2">
<div class="background-img">
<p class="sec2" style="font-size: 40px;padding-left: 70px;color:white;"> Happy People</p>
</div>
</div>


</body>
</html>

    