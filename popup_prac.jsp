<%-- 
    Document   : popup_prac
    Created on : 2017. 6. 8, 오후 1:23:40
    Author     : LMY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <script type="text/javascript">
            function page_link() {
                window.open('', 'TheWindow');
                document.getElementById('TheForm').submit();
            }

//파라미터 개수 조절 가능 
            function openWindowWithPost(input_1, input_2) {
//                var f = document.getElementById('TheForm');
//                // f는 form을 지정하는 것.
//                // f => document (이 파일 전체)
//                // .getElementById('TheForm') (이 파일 전체 중에서 Id를 'TheFomr'으로 가지는 것
//                // f -> form 찾음
//                f.input_capa.value = input_1;
//                // f 의 name을 something으로 가지는 값의 value를 input_1으로 지정한다.
//                window.open('', 'TheWindow');
//                f.submit();

                // form 을 코드에서 직접 생성하는 부분 
                //  document.createElement("form"); 그대로
                var form = document.createElement("form");
                // method 지정하는 부분 , 일단 안건드리셔도 됨.
                form.setAttribute("method", "post");
                // action 파라미터를 전달할 file 
                form.setAttribute("action", "room_list.jsp");
                // target 임의대로 
                form.setAttribute("target", "inforwindow");

                // hiddenField 이름은 임의로 바꿔도됨 .
                // document.createElement("input"); 이 부분은 그대로
                var hiddenField = document.createElement("input");
                // input의 type 형태 -> hidden 으로
                hiddenField.setAttribute("type", "hidden");
                // name을 설정하는부분 => 실질적인 parameter 이름
                hiddenField.setAttribute("name", "input_capa");
                // value 넘겨줄 parameter의 값. 
                // function에서 받아온 input 값을 전달하는 형태로
                hiddenField.setAttribute("value", input_1);

                // 여러개의 parameter를 넘기고 싶은 경우는
                // function에서 여러개의 parameter를 받아오게 한다.
                // 위에서 지정한 hiddenField 와 이름이 같으면 안됨.
                // 나머지 주의할 부분은 hiddenField와 동일함
                var hiddenField2 = document.createElement("input");
                hiddenField2.setAttribute("type", "hidden");
                hiddenField2.setAttribute("name", "input_capa");
                hiddenField2.setAttribute("value", input_1);

                // form에 input을 포함시키는 부분.
                form.appendChild(hiddenField);
                form.appendChild(hiddenField2);

                // 이 페이지에 이 코드에서 create한 form을 추가시키는 부분
                document.body.appendChild(form);

                // 새창으로 form을 넘기려는 부분 'view'는 
                // form에서 target으로 지정한 부분과 이름이 같아야함.
                window.open('', 'inforwindow');

                // 실행 부분.
                form.submit();
            }
        </script>
    </head>
    <body>
        <h1>ASDFASDF</h1>
        <form id="TheForm" method="post" action="room_list.jsp" target="TheWindow">
            <input type="hidden" name="input_capa" value="" />
        </form>

        4인실 보기
        <!--<img src="img/img.jpeg" width="100" height="20" alt="" onclick="javascript:page_link('');"/>-->
        onclick="" 을 사용 
        javascript:openWindowWithPost('2');
        javascript:openWindowWithPost <= 지정한 함수 이름, 바뀔 수 있음.
        javascript:openWindowWithPost('2');
        javascript:openWindowWithPost('2','4'); <= 파라미터는 2개를 받기로 했으면 2개, 한개를 받기로 했으면 한개

        <img src="img/img.jpeg" width="100" height="20" onclick="javascript:openWindowWithPost('2');"/>


    </body>
</html>
