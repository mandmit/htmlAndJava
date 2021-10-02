<%-- 
    Document   : home
    Created on : 14 бер. 2021 р., 19:46:48
    Author     : Дмитрий
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Отправка файла на сервер</title>
    </head>
    <body>
        <h1>Hello World!</h1>

        <form action = "upload" enctype="multipart/form-data" method="post">
            <p><input type="text" name="description">
                <input type="file" name="file">
                <input type="submit" value="Отправить"></p>
        </form> 
    </body>
</html>
