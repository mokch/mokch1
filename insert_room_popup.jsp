<%-- 
    Document   : insert_room_popup
    Created on : 2017. 6. 1, 오후 2:46:34
    Author     : LMY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>추가 완료</title>
    </head>
    <body>
        <h1>추가 완료</h1>
        추가한 방에대한 정보
         <%
            request.setCharacterEncoding("UTF-8");
            String room_name = request.getParameter("room_name");
        %>
        방이름(Room name) : <%=room_name%>
        
    </body>
</html>
