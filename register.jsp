<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   
    <title>
        HTML Document Structure
    </title>
    <link rel="stylesheet" type="text/css" href="./css/style.css" />
    <link rel="stylesheet" href="./css/styles.css">
    <style type="text/css">
body {
	background: url("./images/white.jpg");
}
.user-icon {
	top:153px; /* Positioning fix for slide-in, got lazy to think up of simpler method. */
	background: rgba(65,72,72,0.75) url('./images/user-icon.png') no-repeat center;	
}

.pass-icon {
	top:201px;
	background: rgba(65,72,72,0.75) url('./images/pass-icon.png') no-repeat center;
}


</style>
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

<div id="wrapper">

	<form name="login-form" class="login-form" action="popup_1.html" method="post">
	
		<div class="header">
		<h1>Register </h1>
		<span></span>
		</div>
	
		<div class="content">
		<input name="customer name" type="text" class="input username" placeholder="Username" />
                <div class="user-icon"></div><br>
		<input name="car type" type="text" class="input username" placeholder="cartype" />
		<div class="user-icon"></div>
		<input name="phone" type="password" class="input password" placeholder="phone" />
		<div class="pass-icon"></div>		
		</div>
            

		<div class="footer">		
		<input type="submit" class="button" name="submit" value="Register" class="register" />
		</div>
	
	</form>

</div>
<div class="gradient"></div>


</body>
</html>
