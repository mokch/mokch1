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
            String input_name = request.getParameter("input_name");
            String sql2 = "SELECT * FROM repairshop.customer WHERE customer_name = '" + input_name + "'";
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
            ResultSet rs2 = stmt.executeQuery(sql2);
        %>
        <table border="1", width="830">
            <tr>
                <td>customer id</td>
                <td>customer name</td>
                <td>visiting count</td>
            </tr>

            <%
                while (rs2.next()) {
            %><tr><%
                %><td> <%=rs2.getString("customer_id")%></td><%
                %><td> <%=rs2.getString("customer_name")%></td><%
                %><td> <%=rs2.getString("customer_visitingcount")%></td><%
                %></tr><%
                    }
                %>    
    </body>
</body>
</html>
