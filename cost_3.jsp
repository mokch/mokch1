<%-- 
    Document   : cost
    Created on : 2017. 6. 22, 오전 2:13:16
    Author     : Mok
--%>
<%@ page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    </head>
  <body>
        <%
            request.setCharacterEncoding("UTF-8");
            String input_name = request.getParameter("repair_id");
            String sql3 = "SELECT autoparts_manhour*30000 + autoparts.autoparts_cost FROM repairshop.autoparts WHERE autoparts.autoparts_id IN(SELECT requirement.autoparts_id FROM repairshop.requirement WHERE requirement.repair_id  LIKE '%"+input_name+"%')";
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
						<h2>고객관리</h2>
					</header>
        <table border="1", width="30">
            <tr>
                <td>customer id</td>
  
            </tr>

            <%
                while (rs3.next()) {
            %><tr><%
                %><td> <%=rs3.getDouble(1)%></td><%
            
                    }

                %>    
                
        </div>
     </sectoin>
    </body>
</html>