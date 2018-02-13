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
            String autoparts_name= request.getParameter("autoparts_name");
   
        
        String sql3 = "SELECT SUM(requirement.autoparts_requirement)"
                      + "    FROM repairshop.requirement, repairshop.repair, repairshop.autoparts"
                      + "    WHERE ((DATE(repair.repair_startingtime) - DATE('2017-04-11')) > 0 )"
                      + "     AND   repair.repair_id = requirement.repair_id"
                     + "      AND  requirement.autoparts_id = autoparts.autoparts_id  "
                      + "AND autoparts.autoparts_name = '"+autoparts_name+"'";
                                                
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
             
            ResultSet rs3 = stmt2.executeQuery(sql3);

        %>
  
         <script>
                      alert('한달 예상 수요량은 <%
                while (rs3.next()) {            
                %><%=rs3.getInt(1)%><%
            
                    }

                %> 개 입니다');
                    location.href = "javascript:history.back()";
         </script>
    </body>
</html>