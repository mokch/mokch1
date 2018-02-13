<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            request.setCharacterEncoding("UTF-8");
            String input_name = request.getParameter("customer_name");
            String sql2 = "SELECT * FROM repairshop.repair WHERE customer_id IN(SELECT customer_id FROM repairshop.customer WHERE customer_name = '"+input_name+"')";
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
            ResultSet rs = stmt.executeQuery(sql2);
            ResultSet rs2 = stmt.executeQuery(sql2);
            out.println(input_name+"의 정비기록");

        %>
        <table>
            <table border="1", width="830">
                <tr>
                    <td>repairing id</td>
                    <td>customer id</td>
                    <td>employee id</td>
                    <td>start time</td>
                    <td>lead time</td>
                    <td>cost</td>
                </tr>
                <%
                    while (rs2.next()) {
                %><tr><%
                    %><td> <%=rs2.getString("repair_id")%></td><%
                    %><td> <%=rs2.getString("customer_id")%></td><%
                    %><td> <%=rs2.getString("employee_id")%></td><%
                    %><td> <%=rs2.getString("repair_startingtime")%></td><%
                    %><td> <%=rs2.getString("repair_leadtime")%></td><%
                    %><td> <%=rs2.getString("repair_cost")%></td><%
                    %></tr><%
                        }
                    %>
            </table> 
    </body>
</html>
