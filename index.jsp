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


</head>
<body>

<div id='cssmenu'>
<ul>
   <li class=''><a href='./index.jsp'><span>Home</span></a></li>
   <li><a href='./login.jsp'><span>Login</span></a></li>
   <li><a href="./popup.html"><span>Register</span></a></li>
   <li class='#'><a href="./popup.html"><span>order</span></a></li>
   <li class='#'><a href='./popup.html'><span>Feedback</span></a></li>
   <li><a href='./popup.html'><span>Contribute</span></a></li>
    <li><a href='./popup.html'><span>Contact us</span></a></li>
</ul>
</div>


<section id="one" class="wrapper special">
				<div class="inner">
					<header class="major">
						<h2>RepairShop Managenment</h2>
					</header>
					<div class="features">
						<div class="feature">
                                                    <a href="./popup.html">
							<img height="150" width="150" src="./images/customer4.jpg"/>
                                                    </a>
                                                    <h2>고객관리</h2>
						</div>
						<div class="feature">
                                                    <a href="./popup.html">
							<img height="150" width="150" src="./images/Autoparts_image.jpg"/>
                                                    </a>
                                                    <h2>부품관리</h2>

						</div>
						<div class="feature">
                                                    <a href="./popup.html">
							<img height="150" width="150" src="./images/spend.jpg"/>
                                                    </a>    
                                                        <h2>소요관리</h2>
						</div>
						<div class="feature">
                                                    <a href="./popup.html">
                                                    <img height="150" width="150" src="./images/customer3.jpg"/>
                                                    <h2>직원관리</h2>
                                                    </a>
						</div>
						<div class="feature">
                                                    <a href="./popup.html">
							<img height="150" width="150" src="./images/repair.jpg"/>
                                                        <h2>정비관리</h2>
                                                    </a>
						</div>
					</div>
				</div>
			</section>
<footer id="footer">
				<div class="copyright">
					정보시스템설계  <a href="./index.jsp">Team Project</a>.
				</div>
			</footer>
</body>
</html>
