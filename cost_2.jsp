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
   <!--            <%
            request.setCharacterEncoding("UTF-8");
            String repair_id = request.getParameter("repair_id");           
            String sql5 = "SELECT * FROM repairshop.autoparts WHERE autoparts.autoparts_id IN(SELECT requirement.autoparts_id FROM repairshop.requirement WHERE requirement.repair_id  LIKE '%"+repair_id+"%'";
        %>
            <%
            //infodb 부분이 DB명에 따라 바뀜
            String dbURL = "jdbc:mysql://localhost:3306/repairshop";
            //이부분이 project 생성 시 library에 추가한 JDBC Driver 호출하는 부분
            Class.forName("com.mysql.jdbc.Driver");
            //DB에 실제로 연결하는 Connection gudtjdgksms qnqns
            Connection conn = DriverManager.getConnection(dbURL, "root", "autoset");
            //?
            
            Statement stmt2 = conn.createStatement();
            //조회결과 받아온 부분       
             
            ResultSet rs3 = stmt2.executeQuery(sql5);

        %>
   --!>
<!--        <%  int mh, oc, cost;
            mh = rs3.getInt("autoparts_manhour");
	    oc = rs3.getInt("autoparts_cost");
            
            cost = mh*30000 + oc;
                %>
    -->
         <script>
                      alert('비용은 원 입니다');
                    location.href = "./customer_repair.jsp";
         </script>
    </body>
</html>