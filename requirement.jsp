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
            String input_name = request.getParameter("input_name");
          //  String sql3 = "SELECT * FROM repairshop.requirement WHERE requirement.repair_id LIKE '%"+input_name+"%'";
              String sql3 = "SELECT requirement.repair_id, requirement.autoparts_id, requirement.autoparts_requirement, autoparts.autoparts_name, repair.repair_startingtime"
                      + "    FROM repairshop.requirement, repairshop.repair, repairshop.autoparts"
                      + "    WHERE repair.repair_id = requirement.repair_id"
                      + "     AND  autoparts_name = '"+input_name+"'"
                      + "      AND requirement.autoparts_id = autoparts.autoparts_id";
        %>

        <!-- DB에 명령 전달 (Send Request)-->
        <%
            //infodb 부분이 DB명에 따라 바뀜
            String dbURL = "jdbc:mysql://localhost:3306/repairshop";
            //이부분이 project 생성 시 library에 추가한 JDBC Driver 호출하는 부분
            Class.forName("com.mysql.jdbc.Driver");
            //DB에 실제로 연결하는 Connection gudtjdgksms qnqns
            Connection conn3 = DriverManager.getConnection(dbURL, "root", "autoset");
            //?
            Statement stmt = conn3.createStatement();
            //조회결과 받아온 부분
            ResultSet rs3 = stmt.executeQuery(sql3);
        %>
     <section id="two" class="wrapper style2 special">
         
            <div class="inner">
                                    <header>
                  <h2>부품 소요 정보</h2>
               </header>
        <table border="1", width="30">
            <tr>
                <td>repair id</td>
                <td>autoparts id</td>
                <td>autoparts requirement</td>
                <td>autoparts name</td>
                <td>starting time</td>
            </tr>

            <%
                while (rs3.next()) {
            %><tr><%
                %><td> <%=rs3.getString("repair_id")%></td><%
                %><td> <%=rs3.getString("autoparts_id")%></td><%
                %><td> <%=rs3.getString("autoparts_requirement")%></td><%
                %><td> <%=rs3.getString("autoparts_name")%></td><%
                %><td> <%=rs3.getString("repair_startingtime")%></td><%    

                 }
                %>    
        </div>
     </sectoin>
    </body>


</html>