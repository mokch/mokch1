<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
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

<body>
        <%
            request.setCharacterEncoding("UTF-8");
            String input_name = request.getParameter("customer_name");
            String sql7 =  "SELECT * FROM repairshop.employee WHERE employee_id IN(SELECT employee_id FROM repairshop.repair WHERE customer_id IN(SELECT customer_id FROM repairshop.customer WHERE customer_name = '"+input_name+"'))";
        %>
        <!-- DB에 명령 전달 (Send Request)-->
        <%
            //infodb 부분이 DB명에 따라 바뀜
            String dbURL = "jdbc:mysql://localhost:3306/repairshop";
            //이부분이 project 생성 시 library에 추가한 JDBC Driver 호출하는 부분
            Class.forName("com.mysql.jdbc.Driver");
            //DB에 실제로 연결하는 Connection gudtjdgksms qnqns
            Connection conn = DriverManager.getConnection(dbURL, "root", "autoset");
            //?
            Statement stmt = conn.createStatement();
            //조회결과 받아온 부분            
            ResultSet rs2 = stmt.executeQuery(sql7);           

        %>
      
     <section id="two" class="wrapper style2 special">
         
				<div class="inner">
                                    <header>
						<h2><%out.println(input_name+"님의 담당 직원");%></h2>
					</header>
          <table>
            <table border="1", width="830">
                <tr>
                    <td>employee id</td>
                    <td>skilled level</td>
                    <td>employee name</td>
                    <td>employee phone</td>
                    <td>employ serviceyear</td>
                </tr>
                <%
                    while (rs2.next()) {
                %><tr><%
                    %><td> <%=rs2.getString("employee_id")%></td><%
                    %><td> <%=rs2.getString("employee_skilledlevel")%></td><%
                    %><td> <%=rs2.getString("employee_name")%></td><%
                    %><td> <%=rs2.getString("employee_phone")%></td><%
                    %><td> <%=rs2.getString("employee_serviceyear")%></td><%
                    %></tr><%
                        }
                    %>
            </table> 
        </div>
     </sectoin>
    </body>


</html>
