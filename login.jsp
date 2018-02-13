<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
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
	background: url("./images/white.png");
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

<div style="position:absolute;left:500px;top:75px">
Don`t have an account, click here to <a href='./register.jsp'>Register</a>
<br/>
<h3 align="center">${errorMessage}</h3>
</div>
<div id="wrapper">

	<form name="login-form" class="login-form" action="login.jsp" method="post">
	
		<div class="header">
		<h1>Login </h1>
		<span></span>
		</div>
	
		<div class="content">
		<input name="username" type="text" class="input username" placeholder="Username" />
		<div class="user-icon"></div>
		<input name="password" type="password" class="input password" placeholder="Password" />
		<div class="pass-icon"></div>		
		</div>

		<div class="footer">
		<input type="submit" name="submit" value="Login" class="button" />
		
		</div>
	
	</form>

</div>
<div class="gradient"></div>
        <%
            String input_id = request.getParameter("username");
            String input_pw = request.getParameter("password");
            String sql = "SELECT id,pw FROM test.user_info WHERE id='" + input_id + "'";
        %>

        <!--DB에 명령 전달 (Send Request)-->
        <%            // infodb 부분이 DB 명에 따라 바뀜
            String dbURL = "jdbc:mysql://localhost:3306/test";
            // 이 부분이 Project 생성 시 Libraries에 추가한 JDBC Driver 호출하는 부분 
            Class.forName("com.mysql.jdbc.Driver");
            // DB에 실제로 연결하는 Connection 형성하는 부분
            Connection conn = DriverManager.getConnection(dbURL, "root", "autoset");
            // ?
            Statement stmt = conn.createStatement();
            // 조회 결과 받아온 부분.  
            ResultSet rs = stmt.executeQuery(sql);
            

            while (rs.next()) {
//                      3-3-1. ID를 기준으로 회원정보 조회 -> (ID/PW)
//        2. ID를 기준으로 조회한 정보가 없다 ==> ID가 틀린 것.
//        3. ID를 기준으로 조회한 정보에서 ID는 같고 PW가 다르다 ==> PW가 틀림.
                String u_id = rs.getString("id");
                String pw_ = rs.getString("pw");

                if (u_id.equals(input_id) && pw_.equals(input_pw)) {
                    // 로그인 성공
                    // 다른 페이지로 넘어가는 명령어 .
                    response.sendRedirect("./home.jsp?username="+u_id);
                } else {
                    response.sendRedirect("./popup.html");
          
                    // 로그인 실패
                    // 아무데도 보내지 않음...
                }

            }

        %>


</html>
