<%-- 
    Document   : handlerFile
    Created on : 21 бер. 2021 р., 16:43:45
    Author     : Дмитрий
--%>

<%@page import="manilo.files.files.FileHandler"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <p>We hand a file with that name: ${namefile}</p>
        <p>Body of uploaded file: ${filedesc}</p>
    </body>
</html>
