<%-- 
    Document   : login_page
    Created on : 2017. 5. 25, 오후 2:24:20
    Author     : LMY
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <script>
                      function page_link() {
               
                    alert('페이지를 이동합니다..\n링크된 페이지로 이동합니다.');
                    location.href = "./popup.html";
               
            }
        </script>
    </head>
    <body>
        <h1>Hello World!</h1>

        1. 회원 정보가 존재 한다고 가정.
        2. ID / PW 입력 -> 입력창 2개 필요 후 확인 버튼

        3-1. 로그인 성공) id와 pw 모두 맞았을 때. 

        3-2. 로그인 실패) id-pw 매칭이 안될 때


        <form action='login_page.jsp'>
            id <input type="text" name="id" value="" />
            pw <input type="text" name="pw" value="" />
            <input type="submit" value="로그인" />
        </form>
        
        <a href="join_page.jsp" target="_blank">회원가입</a>

        <%
            String input_id = request.getParameter("id");
            String input_pw = request.getParameter("pw");
            String sql = "SELECT user_id,user_pw FROM infodb.user_info WHERE user_id='" + input_id + "'";
        %>

        <!--DB에 명령 전달 (Send Request)-->
        <%            // infodb 부분이 DB 명에 따라 바뀜
            String dbURL = "jdbc:mysql://localhost:3306/infodb";
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
                String u_id = rs.getString("user_id");
                String pw_ = rs.getString("user_pw");

                if (u_id.equals(input_id) && pw_.equals(input_pw)) {
                    // 로그인 성공
                    // 다른 페이지로 넘어가는 명령어 .
                    response.sendRedirect("index.jsp");
                } else {                    
                 
                    // 로그인 실패
                    // 아무데도 보내지 않음...
                    
                }

            }

        %>
    </body>
</html>
