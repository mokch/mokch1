<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
<html>
<head>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="./css/styles.css">   
    <style type="text/css">
    
body {
	background: url("./images/white.png");
}

.button {
	padding: 10px 15px;
	font-size: 14px;
	line-height: 100%;
	text-shadow: 0 1px rgba(0, 0, 0, 0.4);
	color: #fff;
	
	vertical-align: middle;
	text-align: center;
	cursor: pointer;
	font-weight: bold;
	transition: background 0.1s ease-in-out;
	-webkit-transition: background 0.1s ease-in-out;
	-moz-transition: background 0.1s ease-in-out;
	-ms-transition: background 0.1s ease-in-out;
	-o-transition: background 0.1s ease-in-out;
	text-shadow: 0 1px rgba(0, 0, 0, 0.3);
	color: #fff;
	-webkit-border-radius: 40px;
	-moz-border-radius: 40px;
	border-radius: 40px;
	font-family: 'Helvetica Neue', Helvetica, sans-serif;
}

.button, .button:hover, .button:active {
	outline: 0 none;
	text-decoration: none;
        color: #fff;
}

.username {
	background-color: #2ecc71;
	box-shadow: 0px 3px 0px 0px #239a55;
}

</style>
  
   <title>TechQ Online Quiz</title>
</head>
<body>

<div id='cssmenu'>
<ul>
      <li class=''><a href='./home.jsp'><span>Home</span></a></li>
   <li><a href='./index.jsp'><span>Logout</span></a></li>
   <li><a href='./register.jsp'><span>Register</span></a></li>
   <li><a href='./order.jsp'><span>order</span></a></li>
   <li class='#'><a href='#'><span>Feedback</span></a></li>
   <li><a href='#'><span>Contribute</span></a></li>
   <li><a href='#'><span>Contact us</span></a></li>
</ul>
</div>

<c:if test='${not empty sessionScope.user}'>

<div style="position:absolute;top:70px;left:1200px">
             <%
            request.setCharacterEncoding("UTF-8");
            String user_name = request.getParameter("username");
        %>
    Logged as <a href="#" class="button username">aaaa</a>
</div>
<div style="position:absolute;top:70px;left:1300px">
</div>

</c:if>

<div style="position:absolute;left:120px;top:60px">

</div>
<section id="two" class="wrapper style2 special">
				<div class="inner narrow">
					<header>
						<h2>ordering</h2>
					</header>
					<form class="grid-form" method="post" action="#">
						<div class="form-control narrow">
							<label for="name">autoparts_id</label>
							<input name="name" id="name" type="text">
						</div>
						<div class="form-control narrow">
							<label for="email">quantity</label>
							<input name="email" id="email" type="email">
						</div>
						<div class="form-control">
							<label for="message">message</label>
							<textarea name="message" id="message" rows="4"></textarea>
						</div>
						<ul class="actions">
							<li><input value="Order" type="submit"></li>
						</ul>
					</form>
				</div>
			</section>
<footer id="footer">
				<div class="copyright">
					정보시스템설계  <a href="./index.jsp">Team Project</a>.
				</div>
			</footer>

</body>
</html>
